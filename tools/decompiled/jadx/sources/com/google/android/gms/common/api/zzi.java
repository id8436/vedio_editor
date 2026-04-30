package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes3.dex */
public final class zzi<L> {
    private volatile L mListener;
    private final zzi<L>.zza zzQQ;

    final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            zzv.zzQ(message.what == 1);
            zzi.this.zzb((zzb) message.obj);
        }
    }

    public interface zzb<L> {
        void zzk(L l);

        void zzkJ();
    }

    zzi(Looper looper, L l) {
        this.zzQQ = new zza(looper);
        this.mListener = (L) zzv.zzb(l, "Listener must not be null");
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzb<? super L> zzbVar) {
        zzv.zzb(zzbVar, "Notifier must not be null");
        this.zzQQ.sendMessage(this.zzQQ.obtainMessage(1, zzbVar));
    }

    void zzb(zzb<? super L> zzbVar) {
        L l = this.mListener;
        if (l == null) {
            zzbVar.zzkJ();
            return;
        }
        try {
            zzbVar.zzk(l);
        } catch (RuntimeException e2) {
            zzbVar.zzkJ();
            throw e2;
        }
    }
}
