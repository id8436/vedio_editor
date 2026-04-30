package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* JADX INFO: compiled from: DefaultBitmapPoolParams.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f2933a = new SparseIntArray(0);

    private static int b() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return iMin > 16777216 ? (iMin / 4) * 3 : iMin / 2;
    }

    public static ae a() {
        return new ae(0, b(), f2933a);
    }
}
