package com.b.a.d.d.a;

/* JADX INFO: compiled from: ImageHeaderParser.java */
/* JADX INFO: loaded from: classes2.dex */
public enum q {
    GIF(true),
    JPEG(false),
    PNG_A(true),
    PNG(false),
    UNKNOWN(false);


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f1001f;

    q(boolean z) {
        this.f1001f = z;
    }

    public boolean a() {
        return this.f1001f;
    }
}
