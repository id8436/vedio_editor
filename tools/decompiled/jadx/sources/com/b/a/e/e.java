package com.b.a.e;

import android.content.Context;

/* JADX INFO: compiled from: ConnectivityMonitorFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    public c a(Context context, d dVar) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            return new f(context, dVar);
        }
        return new k();
    }
}
