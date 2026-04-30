package com.a.a.a.h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: NetworkUtilImpl.java */
/* JADX INFO: loaded from: classes.dex */
class g extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f533a;

    g(d dVar) {
        this.f533a = dVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f533a.b(context);
    }
}
