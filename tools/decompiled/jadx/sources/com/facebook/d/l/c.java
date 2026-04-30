package com.facebook.d.l;

/* JADX INFO: compiled from: SystemClock.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f1987a = new c();

    private c() {
    }

    public static c b() {
        return f1987a;
    }

    @Override // com.facebook.d.l.a
    public long a() {
        return System.currentTimeMillis();
    }
}
