package com.facebook.d.h;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes2.dex */
final class e implements Runnable {
    e() {
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                ((f) d.f1956d.remove()).a(false);
            } catch (InterruptedException e2) {
            }
        }
    }
}
