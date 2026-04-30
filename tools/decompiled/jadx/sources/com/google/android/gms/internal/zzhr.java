package com.google.android.gms.internal;

import android.util.Base64;

/* JADX INFO: loaded from: classes3.dex */
public final class zzhr {
    public static String zzg(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static String zzh(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }
}
