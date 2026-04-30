package com.k.a;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes3.dex */
final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bi f3548a;

    i(bi biVar) {
        this.f3548a = biVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new IllegalStateException("Transformation " + this.f3548a.key() + " returned input Bitmap but recycled it.");
    }
}
