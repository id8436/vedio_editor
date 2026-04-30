package com.b.a.d.b;

/* JADX INFO: compiled from: DiskCacheStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
public enum e {
    ALL(true, true),
    NONE(false, false),
    SOURCE(true, false),
    RESULT(false, true);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f864f;

    e(boolean z, boolean z2) {
        this.f863e = z;
        this.f864f = z2;
    }

    public boolean a() {
        return this.f863e;
    }

    public boolean b() {
        return this.f864f;
    }
}
