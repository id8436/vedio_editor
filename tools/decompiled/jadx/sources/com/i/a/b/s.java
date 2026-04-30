package com.i.a.b;

/* JADX INFO: compiled from: LoadAndDisplayImageTask.java */
/* JADX INFO: loaded from: classes3.dex */
class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f3384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f3385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ r f3386c;

    s(r rVar, int i, int i2) {
        this.f3386c = rVar;
        this.f3384a = i;
        this.f3385b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3386c.f3381e.a(this.f3386c.f3377a, this.f3386c.f3378b.d(), this.f3384a, this.f3385b);
    }
}
