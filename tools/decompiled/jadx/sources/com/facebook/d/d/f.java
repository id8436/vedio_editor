package com.facebook.d.d;

/* JADX INFO: compiled from: Ints.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static int a(int... iArr) {
        k.a(iArr.length > 0);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }
}
