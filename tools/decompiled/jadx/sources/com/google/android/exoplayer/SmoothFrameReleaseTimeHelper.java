package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.view.Choreographer;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class SmoothFrameReleaseTimeHelper implements Choreographer.FrameCallback, MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper {
    private static final long CHOREOGRAPHER_SAMPLE_DELAY_MILLIS = 500;
    private static final long MAX_ALLOWED_DRIFT_NS = 20000000;
    private static final int MIN_FRAMES_FOR_ADJUSTMENT = 6;
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    private long adjustedLastFrameTimeNs;
    private Choreographer choreographer;
    private int frameCount;
    private boolean haveSync;
    private long lastUnadjustedFrameTimeUs;
    private long pendingAdjustedFrameTimeNs;
    private long sampledVsyncTimeNs;
    private long syncFrameTimeNs;
    private long syncReleaseTimeNs;
    private final boolean usePrimaryDisplayVsync;
    private final long vsyncDurationNs;
    private final long vsyncOffsetNs;

    public SmoothFrameReleaseTimeHelper(float f2, boolean z) {
        this.usePrimaryDisplayVsync = z;
        if (z) {
            this.vsyncDurationNs = (long) (1.0E9d / ((double) f2));
            this.vsyncOffsetNs = (this.vsyncDurationNs * VSYNC_OFFSET_PERCENTAGE) / 100;
        } else {
            this.vsyncDurationNs = -1L;
            this.vsyncOffsetNs = -1L;
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public void enable() {
        this.haveSync = false;
        if (this.usePrimaryDisplayVsync) {
            this.sampledVsyncTimeNs = 0L;
            this.choreographer = Choreographer.getInstance();
            this.choreographer.postFrameCallback(this);
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public void disable() {
        if (this.usePrimaryDisplayVsync) {
            this.choreographer.removeFrameCallback(this);
            this.choreographer = null;
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        this.sampledVsyncTimeNs = j;
        this.choreographer.postFrameCallbackDelayed(this, CHOREOGRAPHER_SAMPLE_DELAY_MILLIS);
    }

    @Override // com.google.android.exoplayer.MediaCodecVideoTrackRenderer.FrameReleaseTimeHelper
    public long adjustReleaseTime(long j, long j2) {
        long j3;
        long j4;
        long j5 = j * 1000;
        if (this.haveSync) {
            if (j != this.lastUnadjustedFrameTimeUs) {
                this.frameCount++;
                this.adjustedLastFrameTimeNs = this.pendingAdjustedFrameTimeNs;
            }
            if (this.frameCount >= 6) {
                j4 = this.adjustedLastFrameTimeNs + ((j5 - this.syncFrameTimeNs) / ((long) this.frameCount));
                if (isDriftTooLarge(j4, j2)) {
                    this.haveSync = false;
                    j3 = j2;
                    j4 = j5;
                } else {
                    j3 = (this.syncReleaseTimeNs + j4) - this.syncFrameTimeNs;
                }
            } else {
                if (isDriftTooLarge(j5, j2)) {
                    this.haveSync = false;
                }
                j3 = j2;
                j4 = j5;
            }
        } else {
            j3 = j2;
            j4 = j5;
        }
        if (!this.haveSync) {
            this.syncFrameTimeNs = j5;
            this.syncReleaseTimeNs = j2;
            this.frameCount = 0;
            this.haveSync = true;
            onSynced();
        }
        this.lastUnadjustedFrameTimeUs = j;
        this.pendingAdjustedFrameTimeNs = j4;
        return this.sampledVsyncTimeNs == 0 ? j3 : closestVsync(j3, this.sampledVsyncTimeNs, this.vsyncDurationNs) - this.vsyncOffsetNs;
    }

    protected void onSynced() {
    }

    private boolean isDriftTooLarge(long j, long j2) {
        return Math.abs((j2 - this.syncReleaseTimeNs) - (j - this.syncFrameTimeNs)) > MAX_ALLOWED_DRIFT_NS;
    }

    private static long closestVsync(long j, long j2, long j3) {
        long j4;
        long j5 = (((j - j2) / j3) * j3) + j2;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }
}
