package com.google.android.exoplayer.upstream;

/* JADX INFO: loaded from: classes2.dex */
public interface BandwidthMeter {
    public static final long NO_ESTIMATE = -1;

    long getBitrateEstimate();
}
