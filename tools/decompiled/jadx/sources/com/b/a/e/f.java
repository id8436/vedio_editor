package com.b.a.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: compiled from: DefaultConnectivityMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f1119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BroadcastReceiver f1122e = new g(this);

    public f(Context context, d dVar) {
        this.f1118a = context.getApplicationContext();
        this.f1119b = dVar;
    }

    private void a() {
        if (!this.f1121d) {
            this.f1120c = a(this.f1118a);
            this.f1118a.registerReceiver(this.f1122e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f1121d = true;
        }
    }

    private void b() {
        if (this.f1121d) {
            this.f1118a.unregisterReceiver(this.f1122e);
            this.f1121d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // com.b.a.e.j
    public void onStart() {
        a();
    }

    @Override // com.b.a.e.j
    public void onStop() {
        b();
    }

    @Override // com.b.a.e.j
    public void onDestroy() {
    }
}
