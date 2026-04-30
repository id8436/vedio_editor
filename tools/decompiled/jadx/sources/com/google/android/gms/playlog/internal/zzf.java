package com.google.android.gms.playlog.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzny;
import com.google.android.gms.playlog.internal.zza;
import com.google.android.gms.playlog.internal.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class zzf extends zzi<zza> {
    private final String zzJd;
    private final zzd zzayI;
    private final zzb zzayJ;
    private boolean zzayK;
    private final Object zzoe;

    public zzf(Context context, Looper looper, zzd zzdVar, com.google.android.gms.common.internal.zze zzeVar) {
        super(context, looper, 24, zzdVar, zzdVar, zzeVar);
        this.zzJd = context.getPackageName();
        this.zzayI = (zzd) zzv.zzr(zzdVar);
        this.zzayI.zza(this);
        this.zzayJ = new zzb();
        this.zzoe = new Object();
        this.zzayK = true;
    }

    private void zzc(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzayJ.zza(playLoggerContext, logEvent);
    }

    private void zzd(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        try {
            zzvt();
            zzlX().zza(this.zzJd, playLoggerContext, logEvent);
        } catch (RemoteException e2) {
            Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
            zzc(playLoggerContext, logEvent);
        } catch (IllegalStateException e3) {
            Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
            zzc(playLoggerContext, logEvent);
        }
    }

    private void zzvt() {
        PlayLoggerContext playLoggerContext;
        com.google.android.gms.common.internal.zzb.zzP(!this.zzayK);
        if (this.zzayJ.isEmpty()) {
            return;
        }
        PlayLoggerContext playLoggerContext2 = null;
        try {
            ArrayList arrayList = new ArrayList();
            for (zzb.zza zzaVar : this.zzayJ.zzvr()) {
                if (zzaVar.zzayy != null) {
                    zzlX().zza(this.zzJd, zzaVar.zzayw, zzny.zzf(zzaVar.zzayy));
                } else {
                    if (zzaVar.zzayw.equals(playLoggerContext2)) {
                        arrayList.add(zzaVar.zzayx);
                        playLoggerContext = playLoggerContext2;
                    } else {
                        if (!arrayList.isEmpty()) {
                            zzlX().zza(this.zzJd, playLoggerContext2, arrayList);
                            arrayList.clear();
                        }
                        PlayLoggerContext playLoggerContext3 = zzaVar.zzayw;
                        arrayList.add(zzaVar.zzayx);
                        playLoggerContext = playLoggerContext3;
                    }
                    playLoggerContext2 = playLoggerContext;
                }
            }
            if (!arrayList.isEmpty()) {
                zzlX().zza(this.zzJd, playLoggerContext2, arrayList);
            }
            this.zzayJ.clear();
        } catch (RemoteException e2) {
            Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
        }
    }

    public void start() {
        synchronized (this.zzoe) {
            if (isConnecting() || isConnected()) {
                return;
            }
            this.zzayI.zzae(true);
            connect();
        }
    }

    public void stop() {
        synchronized (this.zzoe) {
            this.zzayI.zzae(false);
            disconnect();
        }
    }

    void zzaf(boolean z) {
        synchronized (this.zzoe) {
            boolean z2 = this.zzayK;
            this.zzayK = z;
            if (z2 && !this.zzayK) {
                zzvt();
            }
        }
    }

    public void zzb(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        synchronized (this.zzoe) {
            if (this.zzayK) {
                zzc(playLoggerContext, logEvent);
            } else {
                zzd(playLoggerContext, logEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzi
    /* JADX INFO: renamed from: zzcu, reason: merged with bridge method [inline-methods] */
    public zza zzD(IBinder iBinder) {
        return zza.AbstractBinderC0088zza.zzct(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzeq() {
        return "com.google.android.gms.playlog.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzer() {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }
}
