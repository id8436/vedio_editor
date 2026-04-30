package com.facebook.imagepipeline.memory;

/* JADX INFO: compiled from: BitmapCounterProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f2927a = b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f2928b;

    private static int b() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return ((long) iMin) > 16777216 ? (iMin / 4) * 3 : iMin / 2;
    }

    public static e a() {
        if (f2928b == null) {
            f2928b = new e(384, f2927a);
        }
        return f2928b;
    }
}
