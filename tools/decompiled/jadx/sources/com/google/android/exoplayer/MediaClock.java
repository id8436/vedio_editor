package com.google.android.exoplayer;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
class MediaClock {
    private long deltaUs;
    private long positionUs;
    private boolean started;

    MediaClock() {
    }

    public void start() {
        if (!this.started) {
            this.started = true;
            this.deltaUs = elapsedRealtimeMinus(this.positionUs);
        }
    }

    public void stop() {
        if (this.started) {
            this.positionUs = elapsedRealtimeMinus(this.deltaUs);
            this.started = false;
        }
    }

    public void setPositionUs(long j) {
        this.positionUs = j;
        this.deltaUs = elapsedRealtimeMinus(j);
    }

    public long getPositionUs() {
        return this.started ? elapsedRealtimeMinus(this.deltaUs) : this.positionUs;
    }

    private long elapsedRealtimeMinus(long j) {
        return (SystemClock.elapsedRealtime() * 1000) - j;
    }
}
