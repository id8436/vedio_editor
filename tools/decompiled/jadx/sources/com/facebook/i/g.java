package com.facebook.i;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: AttributionIdentifiers.java */
/* JADX INFO: loaded from: classes2.dex */
final class g implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f2359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<IBinder> f2360b;

    private g() {
        this.f2359a = new AtomicBoolean(false);
        this.f2360b = new LinkedBlockingDeque();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f2360b.put(iBinder);
        } catch (InterruptedException e2) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public IBinder a() throws InterruptedException {
        if (this.f2359a.compareAndSet(true, true)) {
            throw new IllegalStateException("Binder already consumed");
        }
        return this.f2360b.take();
    }
}
