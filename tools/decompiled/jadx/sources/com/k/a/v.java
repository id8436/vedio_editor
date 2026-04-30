package com.k.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes3.dex */
class v extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3567a;

    v(r rVar) {
        this.f3567a = rVar;
    }

    void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        if (this.f3567a.o) {
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        this.f3567a.f3558b.registerReceiver(this, intentFilter);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra("state")) {
                    this.f3567a.a(intent.getBooleanExtra("state", false));
                }
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                this.f3567a.a(((ConnectivityManager) bm.a(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }
}
