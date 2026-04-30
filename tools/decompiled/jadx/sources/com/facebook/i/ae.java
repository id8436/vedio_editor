package com.facebook.i;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: LockOnGetVariable.java */
/* JADX INFO: loaded from: classes2.dex */
public class ae<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f2279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CountDownLatch f2280b = new CountDownLatch(1);

    public ae(Callable<T> callable) {
        com.facebook.w.d().execute(new FutureTask(new af(this, callable)));
    }
}
