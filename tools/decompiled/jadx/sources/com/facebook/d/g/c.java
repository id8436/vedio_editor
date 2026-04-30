package com.facebook.d.g;

/* JADX INFO: compiled from: NoOpMemoryTrimmableRegistry.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f1948a = null;

    public static synchronized c a() {
        if (f1948a == null) {
            f1948a = new c();
        }
        return f1948a;
    }

    @Override // com.facebook.d.g.b
    public void a(a aVar) {
    }
}
