package com.facebook.c.a;

/* JADX INFO: compiled from: NoOpCacheEventListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static j f1845a = null;

    private j() {
    }

    public static synchronized j a() {
        if (f1845a == null) {
            f1845a = new j();
        }
        return f1845a;
    }

    @Override // com.facebook.c.a.d
    public void a(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void b(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void c(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void d(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void e(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void f(c cVar) {
    }

    @Override // com.facebook.c.a.d
    public void g(c cVar) {
    }
}
