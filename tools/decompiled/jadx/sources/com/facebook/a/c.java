package com.facebook.a;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
final class c implements Runnable {
    c() {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (a.a() != j.EXPLICIT_ONLY) {
            a.c(k.TIMER);
        }
    }
}
