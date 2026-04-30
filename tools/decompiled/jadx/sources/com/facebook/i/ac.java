package com.facebook.i;

/* JADX INFO: compiled from: FacebookWebFallbackDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class ac implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f2277a;

    ac(ab abVar) {
        this.f2277a = abVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        super/*com.facebook.i.ba*/.cancel();
    }
}
