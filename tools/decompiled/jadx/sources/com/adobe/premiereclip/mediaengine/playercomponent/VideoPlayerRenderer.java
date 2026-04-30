package com.adobe.premiereclip.mediaengine.playercomponent;

import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.renderers.SequenceRenderer;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.TrackRenderer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class VideoPlayerRenderer extends TrackRenderer {
    public static final int MSG_READY = 3;
    public static final int MSG_RESET_CLIPS = 0;
    public static final int MSG_SET_CLIP_PLAYBACK = 1;
    public static final int MSG_SET_PLAYBACK_STATE = 2;
    private ExoPlaybackException exception;
    private GPUMediaSurfaceView glView;
    private Listener listener;
    private int mOutputHeight;
    private int mOutputWidth;
    private SequenceRenderer sequenceRenderer;
    private volatile boolean preparing = false;
    private volatile boolean prepared = false;
    private GPUMediaFilter filter = new GPUMediaFilter();
    private boolean seeking = false;
    private volatile boolean scrubbing = false;
    private boolean playing = false;
    private boolean reset = false;
    private volatile boolean pendingSeek = false;

    public interface Listener {
        void onEnded();

        void onReleased();

        void onTimeUpdate(long j);
    }

    public VideoPlayerRenderer(SequenceRenderer sequenceRenderer, Listener listener) {
        this.sequenceRenderer = sequenceRenderer;
        this.listener = listener;
        this.glView = sequenceRenderer.getGlView();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        synchronized (this) {
            if (!this.preparing) {
                if (!this.prepared) {
                    if (this.exception != null) {
                        ExoPlaybackException exoPlaybackException = this.exception;
                        this.exception = null;
                        throw exoPlaybackException;
                    }
                    this.preparing = true;
                    this.glView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                VideoPlayerRenderer.this.sequenceRenderer.onDisplaySizeChanged();
                                VideoPlayerRenderer.this.mOutputWidth = VideoPlayerRenderer.this.glView.getDisplayWidth();
                                VideoPlayerRenderer.this.mOutputHeight = VideoPlayerRenderer.this.glView.getDisplayHeight();
                                VideoPlayerRenderer.this.filter.setGPUMediaTexture(VideoPlayerRenderer.this.sequenceRenderer.getOutputTexture());
                                VideoPlayerRenderer.this.filter.onOutputSizeChanged(VideoPlayerRenderer.this.glView.getDisplayWidth(), VideoPlayerRenderer.this.glView.getDisplayHeight());
                                VideoPlayerRenderer.this.filter.init();
                                VideoPlayerRenderer.this.glView.addFilterToChain(VideoPlayerRenderer.this.filter, null);
                                VideoPlayerRenderer.this.prepared = true;
                            } finally {
                                VideoPlayerRenderer.this.preparing = false;
                            }
                        }
                    });
                    this.glView.requestRender();
                }
            }
        }
        return 1;
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        switch (i) {
            case 0:
                this.reset = true;
                Log.i("VideoRend", "reset true");
                this.sequenceRenderer.resetClips();
                break;
            case 1:
                Log.i("VideoRend", "clip playback " + obj);
                this.sequenceRenderer.setClipRendering(((Integer) obj).intValue());
                break;
            case 2:
                this.playing = ((Boolean) obj).booleanValue();
                break;
            case 3:
                Log.i("VideoRend", "reset false");
                this.reset = false;
                break;
            default:
                super.handleMessage(i, obj);
                break;
        }
    }

    public void setPendingSeek() {
        this.pendingSeek = true;
    }

    public void setScrubbing(boolean z) {
        this.scrubbing = z;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long j, boolean z) {
        this.pendingSeek = false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        if (this.sequenceRenderer.isEnded()) {
            Log.i("VideoDecoder", "ended: ");
            if (this.listener != null) {
                this.listener.onEnded();
            }
        }
        return this.sequenceRenderer.isEnded();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return this.prepared && this.sequenceRenderer.isReady();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) throws ExoPlaybackException {
        if (this.reset || this.pendingSeek || !this.prepared) {
            Log.i("VideoRend", "reset still " + this.pendingSeek + " " + this.prepared);
            return;
        }
        final ArrayList arrayList = new ArrayList();
        if (this.mOutputWidth != this.glView.getDisplayWidth() || this.mOutputHeight != this.glView.getDisplayHeight()) {
            this.mOutputWidth = this.glView.getDisplayWidth();
            this.mOutputHeight = this.glView.getDisplayHeight();
            arrayList.add(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    VideoPlayerRenderer.this.filter.onOutputSizeChanged(VideoPlayerRenderer.this.glView.getDisplayWidth(), VideoPlayerRenderer.this.glView.getDisplayHeight());
                }
            });
        }
        this.sequenceRenderer.getFrameAtTime(j, (this.scrubbing || (this.playing && !this.seeking)) ? DefaultLoadControl.DEFAULT_HIGH_WATERMARK_MS : -1, arrayList);
        this.seeking = false;
        if (!this.pendingSeek && !this.reset) {
            this.glView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
            });
            this.glView.requestRender();
            if (this.listener != null) {
                this.listener.onTimeUpdate(j);
            }
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.sequenceRenderer.getDurationUs();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        return 0L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -1L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) throws ExoPlaybackException {
        Log.i("VideoRend", "seek to " + j);
        this.seeking = true;
        this.reset = false;
        this.pendingSeek = false;
        this.sequenceRenderer.resetPosition();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() throws ExoPlaybackException {
        this.sequenceRenderer.resetClips();
        this.sequenceRenderer.resetPosition();
        this.glView.removeFilterFromChain(this.filter);
        this.seeking = false;
        this.playing = false;
        this.scrubbing = false;
        this.reset = false;
        if (this.listener != null) {
            this.listener.onReleased();
        }
    }
}
