package com.google.android.exoplayer.mp4;

import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class Mp4TrackSampleTable {
    public final int[] flags;
    public final long[] offsets;
    public final int[] sizes;
    public final long[] timestampsUs;

    Mp4TrackSampleTable(long[] jArr, int[] iArr, long[] jArr2, int[] iArr2) {
        Assertions.checkArgument(iArr.length == jArr2.length);
        Assertions.checkArgument(jArr.length == jArr2.length);
        Assertions.checkArgument(iArr2.length == jArr2.length);
        this.offsets = jArr;
        this.sizes = iArr;
        this.timestampsUs = jArr2;
        this.flags = iArr2;
    }

    public int getSampleCount() {
        return this.sizes.length;
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long j) {
        for (int iBinarySearchFloor = Util.binarySearchFloor(this.timestampsUs, j, true, false); iBinarySearchFloor >= 0; iBinarySearchFloor--) {
            if (this.timestampsUs[iBinarySearchFloor] <= j && (this.flags[iBinarySearchFloor] & 1) != 0) {
                return iBinarySearchFloor;
            }
        }
        return -1;
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long j) {
        for (int iBinarySearchCeil = Util.binarySearchCeil(this.timestampsUs, j, true, false); iBinarySearchCeil < this.timestampsUs.length; iBinarySearchCeil++) {
            if (this.timestampsUs[iBinarySearchCeil] >= j && (this.flags[iBinarySearchCeil] & 1) != 0) {
                return iBinarySearchCeil;
            }
        }
        return -1;
    }
}
