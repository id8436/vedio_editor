package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zzKC;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzKC = i;
    }

    public int getConnectionStatusCode() {
        return this.zzKC;
    }
}
