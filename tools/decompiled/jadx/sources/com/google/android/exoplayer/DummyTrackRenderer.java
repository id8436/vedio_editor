package com.google.android.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public class DummyTrackRenderer extends TrackRenderer {
    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        return -1;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        throw new IllegalStateException();
    }
}
