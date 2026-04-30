package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* JADX INFO: compiled from: DefaultByteArrayPoolParams.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {
    public static ae a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(16384, 5);
        return new ae(81920, 1048576, sparseIntArray);
    }
}
