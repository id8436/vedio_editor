package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.zzb;

/* JADX INFO: loaded from: classes3.dex */
public class zzc {
    private static final zzc zzPa = new zzc();

    private zzc() {
    }

    private boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zzb.C0078zzb c0078zzb = new zzb.C0078zzb(packageInfo.signatures[0].toByteArray());
        if ((z ? zzb.zzkw() : zzb.zzkx()).contains(c0078zzb)) {
            return true;
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(c0078zzb.getBytes(), 0));
        }
        return false;
    }

    public static zzc zzkA() {
        return zzPa;
    }

    zzb.zza zza(PackageInfo packageInfo, zzb.zza... zzaVarArr) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzb.C0078zzb c0078zzb = new zzb.C0078zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzaVarArr.length; i++) {
            if (zzaVarArr[i].equals(c0078zzb)) {
                return zzaVarArr[i];
            }
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(c0078zzb.getBytes(), 0));
        }
        return null;
    }

    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (GooglePlayServicesUtil.zzc(packageManager)) {
            return zza(packageInfo, true);
        }
        boolean zZza = zza(packageInfo, false);
        if (zZza || !zza(packageInfo, true)) {
            return zZza;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zZza;
    }

    public boolean zzb(PackageManager packageManager, String str) {
        try {
            return zza(packageManager, packageManager.getPackageInfo(str, 64));
        } catch (PackageManager.NameNotFoundException e2) {
            if (Log.isLoggable("GoogleSignatureVerifier", 3)) {
                Log.d("GoogleSignatureVerifier", "Package manager can't find package " + str + ", defaulting to false");
            }
            return false;
        }
    }
}
