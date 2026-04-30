package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
final class Hashing {
    private static final int C1 = -862048943;
    private static final int C2 = 461845907;
    private static int MAX_TABLE_SIZE = 1073741824;

    private Hashing() {
    }

    static int smear(int i) {
        return C2 * Integer.rotateLeft(C1 * i, 15);
    }

    static int smearedHash(@Nullable Object obj) {
        return smear(obj == null ? 0 : obj.hashCode());
    }

    static int closedTableSize(int i, double d2) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (((double) iHighestOneBit) * d2))) {
            int i2 = iHighestOneBit << 1;
            if (i2 <= 0) {
                return MAX_TABLE_SIZE;
            }
            return i2;
        }
        return iHighestOneBit;
    }

    static boolean needsResizing(int i, int i2, double d2) {
        return ((double) i) > ((double) i2) * d2 && i2 < MAX_TABLE_SIZE;
    }
}
