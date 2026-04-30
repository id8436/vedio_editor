package com.k.a;

import android.os.Message;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes3.dex */
class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Message f3565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f3566b;

    t(s sVar, Message message) {
        this.f3566b = sVar;
        this.f3565a = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new AssertionError("Unknown handler message received: " + this.f3565a.what);
    }
}
