package com.adobe.customextractor.Tracks;

import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.Util.Utilities;

/* JADX INFO: loaded from: classes2.dex */
public final class TrackSampleTable {
    public static final int NO_SAMPLE = -1;
    public final int[] flags;
    public final long[] offsets;
    public final int sampleCount;
    public final int[] sizes;
    public final long[] timestampsUs;

    public TrackSampleTable(long[] jArr, int[] iArr, long[] jArr2, int[] iArr2) {
        Assertions.checkArgument(iArr.length == jArr2.length);
        Assertions.checkArgument(jArr.length == jArr2.length);
        Assertions.checkArgument(iArr2.length == jArr2.length);
        this.offsets = jArr;
        this.sizes = iArr;
        this.timestampsUs = jArr2;
        this.flags = iArr2;
        this.sampleCount = jArr.length;
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long j) {
        for (int iBinarySearchFloor = Utilities.binarySearchFloor(this.timestampsUs, j, true, false); iBinarySearchFloor >= 0; iBinarySearchFloor--) {
            if (this.timestampsUs[iBinarySearchFloor] <= j && (this.flags[iBinarySearchFloor] & 1) != 0) {
                return iBinarySearchFloor;
            }
        }
        return -1;
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long j) {
        for (int iBinarySearchCeil = Utilities.binarySearchCeil(this.timestampsUs, j, true, false); iBinarySearchCeil < this.timestampsUs.length; iBinarySearchCeil++) {
            if (this.timestampsUs[iBinarySearchCeil] >= j && (this.flags[iBinarySearchCeil] & 1) != 0) {
                return iBinarySearchCeil;
            }
        }
        return -1;
    }

    public int getIndexOfLaterOrEqualClosestSample(long j) {
        int iBinarySearchCeil = Utilities.binarySearchCeil(this.timestampsUs, j, true, false);
        if (iBinarySearchCeil == this.timestampsUs.length) {
            return -1;
        }
        return iBinarySearchCeil;
    }
}
