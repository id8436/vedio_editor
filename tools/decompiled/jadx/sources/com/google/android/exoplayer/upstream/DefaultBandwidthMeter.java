package com.google.android.exoplayer.upstream;

import android.os.Handler;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Clock;
import com.google.android.exoplayer.util.SlidingPercentile;
import com.google.android.exoplayer.util.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int DEFAULT_MAX_WEIGHT = 2000;
    private long bitrateEstimate;
    private long bytesAccumulator;
    private final Clock clock;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final SlidingPercentile slidingPercentile;
    private long startTimeMs;
    private int streamCount;

    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);
    }

    public DefaultBandwidthMeter() {
        this(null, null);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener) {
        this(handler, eventListener, new SystemClock());
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, Clock clock) {
        this(handler, eventListener, clock, DEFAULT_MAX_WEIGHT);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, int i) {
        this(handler, eventListener, new SystemClock(), i);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, Clock clock, int i) {
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.clock = clock;
        this.slidingPercentile = new SlidingPercentile(i);
        this.bitrateEstimate = -1L;
    }

    @Override // com.google.android.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onTransferStart() {
        if (this.streamCount == 0) {
            this.startTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onBytesTransferred(int i) {
        this.bytesAccumulator += (long) i;
    }

    @Override // com.google.android.exoplayer.upstream.TransferListener
    public synchronized void onTransferEnd() {
        Assertions.checkState(this.streamCount > 0);
        long jElapsedRealtime = this.clock.elapsedRealtime();
        int i = (int) (jElapsedRealtime - this.startTimeMs);
        if (i > 0) {
            this.slidingPercentile.addSample((int) Math.sqrt(this.bytesAccumulator), (this.bytesAccumulator * 8000) / ((long) i));
            float percentile = this.slidingPercentile.getPercentile(0.5f);
            this.bitrateEstimate = Float.isNaN(percentile) ? -1L : (long) percentile;
            notifyBandwidthSample(i, this.bytesAccumulator, this.bitrateEstimate);
        }
        this.streamCount--;
        if (this.streamCount > 0) {
            this.startTimeMs = jElapsedRealtime;
        }
        this.bytesAccumulator = 0L;
    }

    private void notifyBandwidthSample(final int i, final long j, final long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.upstream.DefaultBandwidthMeter.1
                @Override // java.lang.Runnable
                public void run() {
                    DefaultBandwidthMeter.this.eventListener.onBandwidthSample(i, j, j2);
                }
            });
        }
    }
}
