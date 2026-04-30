package com.b.a.d.b.b;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: DiskCacheWriteLocker.java */
/* JADX INFO: loaded from: classes2.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Lock f822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f823b;

    private g() {
        this.f822a = new ReentrantLock();
    }
}
