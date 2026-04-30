package com.google.android.gms.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhv implements zzht {
    private static zzhv zzVC;

    public static synchronized zzht zznd() {
        if (zzVC == null) {
            zzVC = new zzhv();
        }
        return zzVC;
    }

    @Override // com.google.android.gms.internal.zzht
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.internal.zzht
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }
}
