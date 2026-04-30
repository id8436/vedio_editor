package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzlk;

/* JADX INFO: loaded from: classes3.dex */
public class zzlj implements zzlk.zza {
    private final zzlk zzayn;
    private boolean zzayo;

    public zzlj(Context context, int i) {
        this(context, i, null);
    }

    public zzlj(Context context, int i, String str) {
        this(context, i, str, null, true);
    }

    public zzlj(Context context, int i, String str, String str2, boolean z) {
        this.zzayn = new zzlk(context, i, str, str2, this, z, context != context.getApplicationContext() ? context.getClass().getName() : "OneTimePlayLogger");
        this.zzayo = true;
    }

    private void zzvo() {
        if (!this.zzayo) {
            throw new IllegalStateException("Cannot reuse one-time logger after sending.");
        }
    }

    public void send() {
        zzvo();
        this.zzayn.start();
        this.zzayo = false;
    }

    public void zza(String str, byte[] bArr, String... strArr) {
        zzvo();
        this.zzayn.zzb(str, bArr, strArr);
    }

    @Override // com.google.android.gms.internal.zzlk.zza
    public void zzf(PendingIntent pendingIntent) {
        Log.w("OneTimePlayLogger", "logger connection failed: " + pendingIntent);
    }

    @Override // com.google.android.gms.internal.zzlk.zza
    public void zzvp() {
        this.zzayn.stop();
    }

    @Override // com.google.android.gms.internal.zzlk.zza
    public void zzvq() {
        Log.w("OneTimePlayLogger", "logger connection failed");
    }
}
