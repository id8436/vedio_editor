package com.learnncode.mediachooser.b;

/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f3696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f3697b;

    j(i iVar, Runnable runnable) {
        this.f3697b = iVar;
        this.f3696a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3696a.run();
        } finally {
            this.f3697b.a();
        }
    }
}
