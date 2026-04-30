package com.a.a.a.h;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;

/* JADX INFO: compiled from: NetworkUtilImpl.java */
/* JADX INFO: loaded from: classes.dex */
class f extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f532b;

    f(d dVar, Context context) {
        this.f532b = dVar;
        this.f531a = context;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        this.f532b.b(this.f531a);
    }
}
