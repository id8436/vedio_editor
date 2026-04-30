package com.k.a;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes3.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f3549a;

    j(bi biVar) {
        this.f3549a = biVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new IllegalStateException("Transformation " + this.f3549a.key() + " mutated input Bitmap but failed to recycle the original.");
    }
}
