package com.k.a;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
class bs implements ThreadFactory {
    bs() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new br(runnable);
    }
}
