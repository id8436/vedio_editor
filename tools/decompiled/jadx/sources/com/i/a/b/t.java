package com.i.a.b;

/* JADX INFO: compiled from: LoadAndDisplayImageTask.java */
/* JADX INFO: loaded from: classes3.dex */
class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.i.a.b.a.c f3387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Throwable f3388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ r f3389c;

    t(r rVar, com.i.a.b.a.c cVar, Throwable th) {
        this.f3389c = rVar;
        this.f3387a = cVar;
        this.f3388b = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3389c.f3379c.c()) {
            this.f3389c.f3378b.a(this.f3389c.f3379c.c(this.f3389c.i.f3344a));
        }
        this.f3389c.f3380d.onLoadingFailed(this.f3389c.f3377a, this.f3389c.f3378b.d(), new com.i.a.b.a.b(this.f3387a, this.f3388b));
    }
}
