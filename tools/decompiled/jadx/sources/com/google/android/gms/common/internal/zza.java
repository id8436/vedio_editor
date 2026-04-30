package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzo;

/* JADX INFO: loaded from: classes3.dex */
public class zza extends zzo.zza {
    private Context mContext;
    private Account zzJc;
    int zzSR;

    public static Account zzb(zzo zzoVar) {
        Account account = null;
        if (zzoVar != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzoVar.getAccount();
            } catch (RemoteException e2) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zza) {
            return this.zzJc.equals(((zza) obj).zzJc);
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzo
    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.zzSR) {
            return this.zzJc;
        }
        if (!GooglePlayServicesUtil.zzd(this.mContext, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.zzSR = callingUid;
        return this.zzJc;
    }
}
