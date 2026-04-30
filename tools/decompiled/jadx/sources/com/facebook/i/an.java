package com.facebook.i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* JADX INFO: compiled from: PlatformServiceClient.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class an implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f2296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ap f2297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Messenger f2299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2301g;
    private final String h;
    private final int i;

    protected abstract void a(Bundle bundle);

    public an(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f2295a = applicationContext != null ? applicationContext : context;
        this.f2300f = i;
        this.f2301g = i2;
        this.h = str;
        this.i = i3;
        this.f2296b = new ao(this);
    }

    public void a(ap apVar) {
        this.f2297c = apVar;
    }

    public boolean a() {
        Intent intentA;
        if (this.f2298d || ah.b(this.i) == -1 || (intentA = ah.a(this.f2295a)) == null) {
            return false;
        }
        this.f2298d = true;
        this.f2295a.bindService(intentA, this, 1);
        return true;
    }

    public void b() {
        this.f2298d = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f2299e = new Messenger(iBinder);
        c();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f2299e = null;
        try {
            this.f2295a.unbindService(this);
        } catch (IllegalArgumentException e2) {
        }
        b(null);
    }

    private void c() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.h);
        a(bundle);
        Message messageObtain = Message.obtain((Handler) null, this.f2300f);
        messageObtain.arg1 = this.i;
        messageObtain.setData(bundle);
        messageObtain.replyTo = new Messenger(this.f2296b);
        try {
            this.f2299e.send(messageObtain);
        } catch (RemoteException e2) {
            b(null);
        }
    }

    protected void a(Message message) {
        if (message.what == this.f2301g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                b(null);
            } else {
                b(data);
            }
            this.f2295a.unbindService(this);
        }
    }

    private void b(Bundle bundle) {
        if (this.f2298d) {
            this.f2298d = false;
            ap apVar = this.f2297c;
            if (apVar != null) {
                apVar.a(bundle);
            }
        }
    }
}
