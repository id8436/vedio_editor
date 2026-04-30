package com.k.a;

import android.os.Message;

/* JADX INFO: compiled from: Stats.java */
/* JADX INFO: loaded from: classes3.dex */
class bg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Message f3522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bf f3523b;

    bg(bf bfVar, Message message) {
        this.f3523b = bfVar;
        this.f3522a = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new AssertionError("Unhandled stats message." + this.f3522a.what);
    }
}
