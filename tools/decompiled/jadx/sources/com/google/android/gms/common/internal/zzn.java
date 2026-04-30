package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzlj;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class zzn {
    private final String zzTY;

    public zzn(String str) {
        this.zzTY = (String) zzv.zzr(str);
    }

    public void zza(Context context, String str, String str2, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < stackTrace.length && i < 2; i++) {
            sb.append(stackTrace[i].toString());
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        zzlj zzljVar = new zzlj(context, 10);
        zzljVar.zza("GMS_WTF", null, "GMS_WTF", sb.toString());
        zzljVar.send();
        if (zzaQ(7)) {
            Log.e(str, str2, th);
            Log.wtf(str, str2, th);
        }
    }

    public void zza(String str, String str2, Throwable th) {
        if (zzaQ(4)) {
            Log.i(str, str2, th);
        }
    }

    public boolean zzaQ(int i) {
        return Log.isLoggable(this.zzTY, i);
    }

    public void zzb(String str, String str2, Throwable th) {
        if (zzaQ(5)) {
            Log.w(str, str2, th);
        }
    }

    public void zzc(String str, String str2, Throwable th) {
        if (zzaQ(6)) {
            Log.e(str, str2, th);
        }
    }

    public void zzs(String str, String str2) {
        if (zzaQ(3)) {
            Log.d(str, str2);
        }
    }

    public void zzt(String str, String str2) {
        if (zzaQ(5)) {
            Log.w(str, str2);
        }
    }

    public void zzu(String str, String str2) {
        if (zzaQ(6)) {
            Log.e(str, str2);
        }
    }
}
