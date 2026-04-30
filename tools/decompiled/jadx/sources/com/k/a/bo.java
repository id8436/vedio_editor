package com.k.a;

import android.annotation.TargetApi;
import android.app.ActivityManager;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
class bo {
    static int a(ActivityManager activityManager) {
        return activityManager.getLargeMemoryClass();
    }
}
