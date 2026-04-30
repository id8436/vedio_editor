package com.facebook.c.b;

import android.content.Context;

/* JADX INFO: compiled from: DiskStorageCache.java */
/* JADX INFO: loaded from: classes2.dex */
class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f1905b;

    u(s sVar, Context context) {
        this.f1905b = sVar;
        this.f1904a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        s.b(this.f1904a, this.f1905b.m.b());
    }
}
