package com.a.a.a.h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: NetworkUtilImpl.java */
/* JADX INFO: loaded from: classes.dex */
class e extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f530a;

    e(d dVar) {
        this.f530a = dVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f530a.b(context);
    }
}
