package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* JADX INFO: compiled from: DefaultFlexByteArrayPoolParams.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f2934a = Runtime.getRuntime().availableProcessors();

    public static SparseIntArray a(int i, int i2, int i3) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (i <= i2) {
            sparseIntArray.put(i, i3);
            i *= 2;
        }
        return sparseIntArray;
    }

    public static ae a() {
        return new ae(4194304, f2934a * 4194304, a(131072, 4194304, f2934a), 131072, 4194304, f2934a);
    }
}
