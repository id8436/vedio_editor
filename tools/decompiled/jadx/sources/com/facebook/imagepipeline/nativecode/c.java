package com.facebook.imagepipeline.nativecode;

/* JADX INFO: compiled from: WebpTranscoderFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f2950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f2951b;

    static {
        f2950a = false;
        try {
            f2951b = (b) Class.forName("com.facebook.imagepipeline.nativecode.WebpTranscoderImpl").newInstance();
            f2950a = true;
        } catch (Throwable th) {
            f2950a = false;
        }
    }

    public static b a() {
        return f2951b;
    }
}
