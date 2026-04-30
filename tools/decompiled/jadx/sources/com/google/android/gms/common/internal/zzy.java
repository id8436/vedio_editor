package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.dynamic.zzg;

/* JADX INFO: loaded from: classes3.dex */
public final class zzy extends com.google.android.gms.dynamic.zzg<zzs> {
    private static final zzy zzUc = new zzy();

    private zzy() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzb(Context context, int i, int i2) throws zzg.zza {
        return zzUc.zzc(context, i, i2);
    }

    private View zzc(Context context, int i, int i2) throws zzg.zza {
        try {
            return (View) com.google.android.gms.dynamic.zze.zzg(zzX(context).zza(com.google.android.gms.dynamic.zze.zzt(context), i, i2));
        } catch (Exception e2) {
            throw new zzg.zza("Could not get button with size " + i + " and color " + i2, e2);
        }
    }

    @Override // com.google.android.gms.dynamic.zzg
    /* JADX INFO: renamed from: zzW, reason: merged with bridge method [inline-methods] */
    public zzs zzd(IBinder iBinder) {
        return zzs.zza.zzV(iBinder);
    }
}
