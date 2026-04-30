package com.k.a;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes3.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f3545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ RuntimeException f3546b;

    g(bi biVar, RuntimeException runtimeException) {
        this.f3545a = biVar;
        this.f3546b = runtimeException;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new RuntimeException("Transformation " + this.f3545a.key() + " crashed with exception.", this.f3546b);
    }
}
