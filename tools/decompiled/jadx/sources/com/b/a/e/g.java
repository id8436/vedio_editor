package com.b.a.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: DefaultConnectivityMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f1123a;

    g(f fVar) {
        this.f1123a = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z = this.f1123a.f1120c;
        this.f1123a.f1120c = this.f1123a.a(context);
        if (z != this.f1123a.f1120c) {
            this.f1123a.f1119b.a(this.f1123a.f1120c);
        }
    }
}
