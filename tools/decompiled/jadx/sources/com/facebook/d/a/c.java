package com.facebook.d.a;

/* JADX INFO: compiled from: NoOpDiskTrimmableRegistry.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f1926a = null;

    private c() {
    }

    public static synchronized c a() {
        if (f1926a == null) {
            f1926a = new c();
        }
        return f1926a;
    }

    @Override // com.facebook.d.a.b
    public void a(a aVar) {
    }
}
