package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.ExoPlayer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
final class ExoPlayerImpl implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final Handler eventHandler;
    private final ExoPlayerImplInternal internalPlayer;
    private final CopyOnWriteArraySet<ExoPlayer.Listener> listeners;
    private int pendingPlayWhenReadyAcks;
    private boolean playWhenReady;
    private int playbackState;
    private final boolean[] rendererEnabledFlags;

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(int i, int i2, int i3) {
        Log.i(TAG, "Init 1.2.3");
        this.playWhenReady = false;
        this.playbackState = 1;
        this.listeners = new CopyOnWriteArraySet<>();
        this.rendererEnabledFlags = new boolean[i];
        for (int i4 = 0; i4 < this.rendererEnabledFlags.length; i4++) {
            this.rendererEnabledFlags[i4] = true;
        }
        this.eventHandler = new Handler() { // from class: com.google.android.exoplayer.ExoPlayerImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.internalPlayer = new ExoPlayerImplInternal(this.eventHandler, this.playWhenReady, this.rendererEnabledFlags, i2, i3);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void addListener(ExoPlayer.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void removeListener(ExoPlayer.Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public int getPlaybackState() {
        return this.playbackState;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void prepare(TrackRenderer... trackRendererArr) {
        this.internalPlayer.prepare(trackRendererArr);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void setRendererEnabled(int i, boolean z) {
        if (this.rendererEnabledFlags[i] != z) {
            this.rendererEnabledFlags[i] = z;
            this.internalPlayer.setRendererEnabled(i, z);
        }
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean getRendererEnabled(int i) {
        return this.rendererEnabledFlags[i];
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void setPlayWhenReady(boolean z) {
        if (this.playWhenReady != z) {
            this.playWhenReady = z;
            this.pendingPlayWhenReadyAcks++;
            this.internalPlayer.setPlayWhenReady(z);
            Iterator<ExoPlayer.Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onPlayerStateChanged(z, this.playbackState);
            }
        }
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public boolean isPlayWhenReadyCommitted() {
        return this.pendingPlayWhenReadyAcks == 0;
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void seekTo(long j) {
        this.internalPlayer.seekTo(j);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void stop() {
        this.internalPlayer.stop();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void release() {
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void sendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.internalPlayer.sendMessage(exoPlayerComponent, i, obj);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public void blockingSendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.internalPlayer.blockingSendMessage(exoPlayerComponent, i, obj);
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getDuration() {
        return this.internalPlayer.getDuration();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getCurrentPosition() {
        return this.internalPlayer.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public long getBufferedPosition() {
        return this.internalPlayer.getBufferedPosition();
    }

    @Override // com.google.android.exoplayer.ExoPlayer
    public int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == -1 || duration == -1) {
            return 0;
        }
        return (int) (duration != 0 ? (100 * bufferedPosition) / duration : 100L);
    }

    void handleEvent(Message message) {
        switch (message.what) {
            case 1:
                this.playbackState = message.arg1;
                Iterator<ExoPlayer.Listener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
                break;
            case 2:
                this.pendingPlayWhenReadyAcks--;
                if (this.pendingPlayWhenReadyAcks == 0) {
                    Iterator<ExoPlayer.Listener> it2 = this.listeners.iterator();
                    while (it2.hasNext()) {
                        it2.next().onPlayWhenReadyCommitted();
                    }
                }
                break;
            case 3:
                ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
                Iterator<ExoPlayer.Listener> it3 = this.listeners.iterator();
                while (it3.hasNext()) {
                    it3.next().onPlayerError(exoPlaybackException);
                }
                break;
        }
    }
}
