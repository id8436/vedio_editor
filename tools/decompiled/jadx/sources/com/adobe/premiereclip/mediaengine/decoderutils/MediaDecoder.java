package com.adobe.premiereclip.mediaengine.decoderutils;

import android.net.Uri;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.ExoPlaybackException;

/* JADX INFO: loaded from: classes2.dex */
abstract class MediaDecoder {
    protected int clipIndex;
    protected long currentTimeStampUs;
    private String hash;
    protected GPUMediaSurface mediaSurface;
    protected long renderedTimeStampUs;
    protected long sourceDuration;
    protected String sourcePath;
    protected Uri sourceUri;
    protected int trackIndex;
    private boolean enabled = false;
    private boolean released = false;
    protected boolean resetPosition = false;
    private volatile boolean gettingFrame = false;
    protected volatile boolean newFrameRequest = false;
    private boolean renderedOneFrame = false;

    protected abstract boolean getFrameAtTimeInternal(long j, long j2) throws ExoPlaybackException;

    protected abstract void onDisabled() throws ExoPlaybackException;

    protected abstract void onEnabled(long j) throws ExoPlaybackException;

    protected abstract void onReleased() throws ExoPlaybackException;

    protected abstract void onSurfaceSet() throws ExoPlaybackException;

    protected abstract void seekToInternal(long j) throws ExoPlaybackException;

    protected MediaDecoder(String str, int i, int i2) {
        this.sourcePath = str;
        this.trackIndex = i;
        this.clipIndex = i2;
        this.hash = calculateHash(this.sourcePath, this.trackIndex, this.clipIndex);
    }

    static String calculateHash(String str, int i, int i2) {
        return str + "::" + i + "::" + i2;
    }

    protected GPUMediaSurface getSurface() {
        return this.mediaSurface;
    }

    final void setSurface(GPUMediaSurface gPUMediaSurface) throws ExoPlaybackException {
        if (this.mediaSurface != gPUMediaSurface) {
            Log.i("VideoRend", "New Surface");
            this.mediaSurface = gPUMediaSurface;
            this.renderedOneFrame = false;
            this.mediaSurface.connect();
            onSurfaceSet();
        }
    }

    private boolean waitForCurrentGetFrame(boolean z) throws ExoPlaybackException {
        for (int i = 0; this.gettingFrame && (i < 20 || z); i++) {
            if (i == 0) {
                Log.i("VideoDecoder", "initing with forced: " + z + " " + this.clipIndex);
            }
            try {
                Thread.sleep(15L);
            } catch (InterruptedException e2) {
                throw new ExoPlaybackException(e2);
            }
        }
        Log.i("VideoDecoder", "initing finished: " + this.gettingFrame + " " + this.clipIndex);
        return !this.gettingFrame;
    }

    final String getHash() {
        return this.hash;
    }

    protected final boolean isEnabled() {
        return this.enabled;
    }

    protected final boolean isReleased() {
        return this.released;
    }

    final void enable(long j) throws ExoPlaybackException {
        if (!this.enabled) {
            this.resetPosition = false;
            this.currentTimeStampUs = j;
            this.renderedTimeStampUs = -1L;
            onEnabled(j);
            this.enabled = true;
        }
    }

    private void disable() throws ExoPlaybackException {
        synchronized (this) {
            if (this.enabled) {
                this.enabled = false;
                this.resetPosition = false;
                onDisabled();
                this.mediaSurface.stop();
                this.gettingFrame = false;
            }
        }
    }

    final boolean isGettingFrame() {
        return this.gettingFrame;
    }

    final void seekTo(long j) throws ExoPlaybackException {
        this.resetPosition = false;
        this.currentTimeStampUs = j;
        this.renderedTimeStampUs = -1L;
        seekToInternal(j);
    }

    protected final long getFrameAtTime(long j, GPUMediaSurface gPUMediaSurface, long j2) throws ExoPlaybackException {
        Log.i("CustomVideoDecoder", "GetFrameAtTime " + j);
        synchronized (this) {
            if (this.released) {
                return -1L;
            }
            this.newFrameRequest = true;
            if (!waitForCurrentGetFrame(Sequence.MODE_PLAYBACK ? false : true)) {
                Log.i("VideoDecoder", "failed as initing " + this.clipIndex);
                return this.renderedOneFrame ? this.currentTimeStampUs : -1L;
            }
            this.newFrameRequest = false;
            synchronized (this) {
                Log.i("VideoDecoder", "getting frame " + this.clipIndex);
                this.gettingFrame = true;
            }
            try {
                enable(j);
                setSurface(gPUMediaSurface);
                if (this.resetPosition) {
                    Log.i("VideoDecoder", "seeking");
                    seekTo(j);
                }
                boolean frameAtTimeInternal = getFrameAtTimeInternal(j, 1000 * j2);
                Log.i("CustomVideoDecoder", "GotFrame " + frameAtTimeInternal);
                if (frameAtTimeInternal) {
                    this.renderedOneFrame = true;
                }
                synchronized (this) {
                    Log.i("VideoDecoder", "getting frame done " + this.clipIndex);
                    this.gettingFrame = false;
                }
                if (this.renderedOneFrame) {
                    return this.currentTimeStampUs;
                }
                return -1L;
            } catch (Exception e2) {
                synchronized (this) {
                    Log.i("VideoDecoder", "getting frame done with exception " + this.clipIndex);
                    this.gettingFrame = false;
                    throw new ExoPlaybackException(e2);
                }
            }
        }
    }

    final void release() throws ExoPlaybackException {
        synchronized (this) {
            if (!this.released) {
                this.released = true;
                Log.i("VideoDecoder", "releasing " + this.clipIndex);
                waitForCurrentGetFrame(true);
                disable();
                onReleased();
            }
        }
    }
}
