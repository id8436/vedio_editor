package com.i.a.b;

/* JADX INFO: compiled from: LoadAndDisplayImageTask.java */
/* JADX INFO: loaded from: classes3.dex */
class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ r f3390a;

    u(r rVar) {
        this.f3390a = rVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3390a.f3380d.onLoadingCancelled(this.f3390a.f3377a, this.f3390a.f3378b.d());
    }
}
