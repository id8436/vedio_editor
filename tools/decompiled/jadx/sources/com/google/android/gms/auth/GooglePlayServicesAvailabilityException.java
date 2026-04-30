package com.google.android.gms.auth;

import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int zzKC;

    GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzKC = i;
    }

    public int getConnectionStatusCode() {
        return this.zzKC;
    }
}
