package com.facebook.login;

/* JADX INFO: compiled from: LoginBehavior.java */
/* JADX INFO: loaded from: classes2.dex */
public enum g {
    NATIVE_WITH_FALLBACK(true, true),
    NATIVE_ONLY(true, false),
    WEB_ONLY(false, true);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3001e;

    g(boolean z, boolean z2) {
        this.f3000d = z;
        this.f3001e = z2;
    }

    boolean a() {
        return this.f3000d;
    }

    boolean b() {
        return this.f3001e;
    }
}
