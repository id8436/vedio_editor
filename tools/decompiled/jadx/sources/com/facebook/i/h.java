package com.facebook.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

/* JADX INFO: compiled from: BoltsMeasurementEventListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f2361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f2362b;

    private h(Context context) {
        this.f2362b = context.getApplicationContext();
    }

    private void a() {
        LocalBroadcastManager.getInstance(this.f2362b).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    private void b() {
        LocalBroadcastManager.getInstance(this.f2362b).unregisterReceiver(this);
    }

    public static h a(Context context) {
        if (f2361a != null) {
            return f2361a;
        }
        f2361a = new h(context);
        f2361a.a();
        return f2361a;
    }

    protected void finalize() throws Throwable {
        try {
            b();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.facebook.a.a aVarA = com.facebook.a.a.a(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        aVarA.a(str, bundle);
    }
}
