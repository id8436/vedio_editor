package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.playlog.internal.LogEvent;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.playlog.internal.zzd;
import com.google.android.gms.playlog.internal.zzf;

/* JADX INFO: loaded from: classes3.dex */
public class zzlk {
    private final zzf zzayp;
    private PlayLoggerContext zzayq;

    public interface zza {
        void zzf(PendingIntent pendingIntent);

        void zzvp();

        void zzvq();
    }

    public zzlk(Context context, int i, String str, String str2, zza zzaVar, boolean z, String str3) {
        String packageName = context.getPackageName();
        int i2 = 0;
        try {
            i2 = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.wtf("PlayLogger", "This can't happen.");
        }
        this.zzayq = new PlayLoggerContext(packageName, i2, i, str, str2, z);
        this.zzayp = new zzf(context, context.getMainLooper(), new zzd(zzaVar), new zze(null, null, null, 49, null, packageName, str3, null));
    }

    public void start() {
        this.zzayp.start();
    }

    public void stop() {
        this.zzayp.stop();
    }

    public void zza(long j, String str, byte[] bArr, String... strArr) {
        this.zzayp.zzb(this.zzayq, new LogEvent(j, str, bArr, strArr));
    }

    public void zzb(String str, byte[] bArr, String... strArr) {
        zza(System.currentTimeMillis(), str, bArr, strArr);
    }
}
