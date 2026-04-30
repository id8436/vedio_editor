package com.a.a.a;

/* JADX INFO: compiled from: CallbackManager.java */
/* JADX INFO: loaded from: classes.dex */
class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f455a;

    e(d dVar) {
        this.f455a = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f455a.f449a.a(new f(this));
    }
}
