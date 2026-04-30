package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzg<T> {
    private final String zzacr;
    private T zzacs;

    public class zza extends Exception {
        public zza(String str) {
            super(str);
        }

        public zza(String str, Throwable th) {
            super(str, th);
        }
    }

    protected zzg(String str) {
        this.zzacr = str;
    }

    protected final T zzX(Context context) throws zza {
        if (this.zzacs == null) {
            zzv.zzr(context);
            Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
            if (remoteContext == null) {
                throw new zza("Could not get remote context.");
            }
            try {
                this.zzacs = zzd((IBinder) remoteContext.getClassLoader().loadClass(this.zzacr).newInstance());
            } catch (ClassNotFoundException e2) {
                throw new zza("Could not load creator class.", e2);
            } catch (IllegalAccessException e3) {
                throw new zza("Could not access creator.", e3);
            } catch (InstantiationException e4) {
                throw new zza("Could not instantiate creator.", e4);
            }
        }
        return this.zzacs;
    }

    protected abstract T zzd(IBinder iBinder);
}
