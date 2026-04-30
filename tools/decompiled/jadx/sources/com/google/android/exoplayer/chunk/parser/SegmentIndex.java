package com.google.android.exoplayer.chunk.parser;

/* JADX INFO: loaded from: classes2.dex */
public final class SegmentIndex {
    public final long[] durationsUs;
    public final int length;
    public final long[] offsets;
    public final int sizeBytes;
    public final int[] sizes;
    public final long[] timesUs;

    public SegmentIndex(int i, int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.sizeBytes = i;
        this.length = iArr.length;
        this.sizes = iArr;
        this.offsets = jArr;
        this.durationsUs = jArr2;
        this.timesUs = jArr3;
    }
}
