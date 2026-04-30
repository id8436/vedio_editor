package com.twitter.sdk.android.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
final class k implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedBlockingQueue<IBinder> f3940b;

    private k() {
        this.f3940b = new LinkedBlockingQueue<>(1);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f3940b.put(iBinder);
        } catch (InterruptedException e2) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f3940b.clear();
    }

    IBinder a() {
        if (this.f3939a) {
            com.twitter.sdk.android.core.v.h().c("Twitter", "getBinder already called");
        }
        this.f3939a = true;
        try {
            return this.f3940b.poll(200L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            return null;
        }
    }
}
