package com.a.a.a.h;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PowerManager;

/* JADX INFO: compiled from: NetworkUtilImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements a, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f529a;

    public d(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 23) {
                d(applicationContext);
            }
            c(applicationContext);
            return;
        }
        applicationContext.registerReceiver(new e(this), a());
    }

    @TargetApi(23)
    private void c(Context context) {
        ((ConnectivityManager) context.getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).addCapability(13).build(), new f(this, context));
    }

    @TargetApi(23)
    private void d(Context context) {
        context.registerReceiver(new g(this), new IntentFilter("android.os.action.DEVICE_IDLE_MODE_CHANGED"));
    }

    void b(Context context) {
        if (this.f529a != null) {
            this.f529a.a(a(context));
        }
    }

    @Override // com.a.a.a.h.c
    public int a(Context context) {
        NetworkInfo activeNetworkInfo;
        if (!e(context) && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            return (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9) ? 2 : 1;
        }
        return 0;
    }

    @TargetApi(23)
    private static IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        return intentFilter;
    }

    @TargetApi(23)
    private static boolean e(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager.isDeviceIdleMode() && !powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    @Override // com.a.a.a.h.a
    public void a(b bVar) {
        this.f529a = bVar;
    }
}
