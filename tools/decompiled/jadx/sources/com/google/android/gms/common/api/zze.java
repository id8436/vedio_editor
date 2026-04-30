package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.api.zzg;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzo;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.signin.internal.AuthAccountResult;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes2.dex */
public class zze implements zzh {
    private final Context mContext;
    private final Api.zzb<? extends zzmd, zzme> zzPK;
    private final zzg zzPQ;
    private final Lock zzPR;
    private ConnectionResult zzPS;
    private int zzPT;
    private int zzPW;
    private zzmd zzPZ;
    private int zzQa;
    private boolean zzQb;
    private boolean zzQc;
    private zzo zzQd;
    private boolean zzQe;
    private boolean zzQf;
    private final com.google.android.gms.common.internal.zze zzQg;
    private final Map<Api<?>, Integer> zzQh;
    private int zzPU = 0;
    private boolean zzPV = false;
    private final Bundle zzPX = new Bundle();
    private final Set<Api.zzc> zzPY = new HashSet();

    class zza extends com.google.android.gms.signin.internal.zzb {
        private final WeakReference<zze> zzQi;

        zza(zze zzeVar) {
            this.zzQi = new WeakReference<>(zzeVar);
        }

        @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zze
        public void zza(final ConnectionResult connectionResult, AuthAccountResult authAccountResult) {
            final zze zzeVar = this.zzQi.get();
            if (zzeVar == null) {
                return;
            }
            zzeVar.zzPQ.zzQx.post(new Runnable() { // from class: com.google.android.gms.common.api.zze.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    zzeVar.zzc(connectionResult);
                }
            });
        }
    }

    class zzb extends zzr.zza {
        private final WeakReference<zze> zzQi;

        zzb(zze zzeVar) {
            this.zzQi = new WeakReference<>(zzeVar);
        }

        @Override // com.google.android.gms.common.internal.zzr
        public void zzb(final ResolveAccountResponse resolveAccountResponse) {
            final zze zzeVar = this.zzQi.get();
            if (zzeVar == null) {
                return;
            }
            zzeVar.zzPQ.zzQx.post(new Runnable() { // from class: com.google.android.gms.common.api.zze.zzb.1
                @Override // java.lang.Runnable
                public void run() {
                    zzeVar.zza(resolveAccountResponse);
                }
            });
        }
    }

    class zzc implements GoogleApiClient.zza {
        private final WeakReference<zze> zzQi;
        private final Api<?> zzQo;
        private final int zzQp;

        public zzc(zze zzeVar, Api<?> api, int i) {
            this.zzQi = new WeakReference<>(zzeVar);
            this.zzQo = api;
            this.zzQp = i;
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zza(ConnectionResult connectionResult) {
            zze zzeVar = this.zzQi.get();
            if (zzeVar == null) {
                return;
            }
            zzv.zza(Looper.myLooper() == zzeVar.zzPQ.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzeVar.zzPR.lock();
            try {
                if (zzeVar.zzat(0)) {
                    if (!connectionResult.isSuccess()) {
                        zzeVar.zzb(connectionResult, this.zzQo, this.zzQp);
                    }
                    if (zzeVar.zzkP()) {
                        zzeVar.zzkQ();
                    }
                }
            } finally {
                zzeVar.zzPR.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.zza
        public void zzb(ConnectionResult connectionResult) {
            zze zzeVar = this.zzQi.get();
            if (zzeVar == null) {
                return;
            }
            zzv.zza(Looper.myLooper() == zzeVar.zzPQ.getLooper(), "onReportAccountValidation must be called on the GoogleApiClient handler thread");
            zzeVar.zzPR.lock();
            try {
                if (zzeVar.zzat(1)) {
                    if (!connectionResult.isSuccess()) {
                        zzeVar.zzb(connectionResult, this.zzQo, this.zzQp);
                    }
                    if (zzeVar.zzkP()) {
                        zzeVar.zzkS();
                    }
                }
            } finally {
                zzeVar.zzPR.unlock();
            }
        }
    }

    class zzd implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zzd() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zze.this.zzPZ.zza(new zzb(zze.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zze.this.zzPR.lock();
            try {
                if (zze.this.zze(connectionResult)) {
                    zze.this.zzkV();
                    zze.this.zzkT();
                } else {
                    zze.this.zzf(connectionResult);
                }
            } finally {
                zze.this.zzPR.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    public zze(zzg zzgVar, com.google.android.gms.common.internal.zze zzeVar, Map<Api<?>, Integer> map, Api.zzb<? extends zzmd, zzme> zzbVar, Lock lock, Context context) {
        this.zzPQ = zzgVar;
        this.zzQg = zzeVar;
        this.zzQh = map;
        this.zzPK = zzbVar;
        this.zzPR = lock;
        this.mContext = context;
    }

    private void zzO(boolean z) {
        if (this.zzPZ != null) {
            if (this.zzPZ.isConnected()) {
                if (z) {
                    this.zzPZ.zzwe();
                }
                this.zzPZ.disconnect();
            }
            this.zzQd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(ResolveAccountResponse resolveAccountResponse) {
        ConnectionResult connectionResultZzmn = resolveAccountResponse.zzmn();
        this.zzPR.lock();
        try {
            if (zzat(0)) {
                if (connectionResultZzmn.isSuccess()) {
                    this.zzQd = resolveAccountResponse.zzmm();
                    this.zzQc = true;
                    this.zzQe = resolveAccountResponse.zzmo();
                    this.zzQf = resolveAccountResponse.zzmp();
                    zzkR();
                } else if (zze(connectionResultZzmn)) {
                    zzkV();
                    if (this.zzPW == 0) {
                        zzkT();
                    }
                } else {
                    zzf(connectionResultZzmn);
                }
            }
        } finally {
            this.zzPR.unlock();
        }
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        if (i2 != 1 || zzd(connectionResult)) {
            return this.zzPS == null || i < this.zzPT;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzat(int i) {
        if (this.zzPU == i) {
            return true;
        }
        Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + zzau(this.zzPU) + " but received callback for step " + zzau(i));
        zzf(new ConnectionResult(8, null));
        return false;
    }

    private String zzau(int i) {
        switch (i) {
            case 0:
                return "STEP_GETTING_SERVICE_BINDINGS";
            case 1:
                return "STEP_VALIDATING_ACCOUNT";
            case 2:
                return "STEP_AUTHENTICATING";
            case 3:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zzkC().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.zzPS = connectionResult;
                this.zzPT = priority;
            }
        }
        this.zzPQ.zzQA.put(api.zzkF(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzc(ConnectionResult connectionResult) {
        this.zzPR.lock();
        try {
            if (zzat(2)) {
                if (connectionResult.isSuccess()) {
                    zzkT();
                } else if (zze(connectionResult)) {
                    zzkV();
                    zzkT();
                } else {
                    zzf(connectionResult);
                }
            }
        } finally {
            this.zzPR.unlock();
        }
    }

    private static boolean zzd(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || GooglePlayServicesUtil.zzar(connectionResult.getErrorCode()) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zze(ConnectionResult connectionResult) {
        if (this.zzQa != 2) {
            return this.zzQa == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzf(ConnectionResult connectionResult) {
        this.zzPV = false;
        this.zzPQ.zzQB.clear();
        zzO(connectionResult.hasResolution() ? false : true);
        zzas(3);
        if (!this.zzPQ.zzlb() || !GooglePlayServicesUtil.zze(this.mContext, connectionResult.getErrorCode())) {
            this.zzPQ.zzld();
            this.zzPQ.zzQs.zzj(connectionResult);
        }
        this.zzPQ.zzQs.zzmf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzkP() {
        this.zzPW--;
        if (this.zzPW > 0) {
            return false;
        }
        if (this.zzPS == null) {
            return true;
        }
        zzf(this.zzPS);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkQ() {
        if (this.zzQb) {
            zzkR();
        } else {
            zzkT();
        }
    }

    private void zzkR() {
        if (this.zzQc && this.zzPW == 0) {
            this.zzPU = 1;
            this.zzPW = this.zzPQ.zzQz.size();
            for (Api.zzc<?> zzcVar : this.zzPQ.zzQz.keySet()) {
                if (!this.zzPQ.zzQA.containsKey(zzcVar)) {
                    this.zzPQ.zzQz.get(zzcVar).zza(this.zzQd);
                } else if (zzkP()) {
                    zzkS();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkS() {
        this.zzPU = 2;
        this.zzPQ.zzQB = zzkW();
        this.zzPZ.zza(this.zzQd, this.zzPQ.zzQB, new zza(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkT() {
        Set<Scope> set = this.zzPQ.zzQB;
        Set<Scope> setZzkW = set.isEmpty() ? zzkW() : set;
        this.zzPU = 3;
        this.zzPW = this.zzPQ.zzQz.size();
        for (Api.zzc<?> zzcVar : this.zzPQ.zzQz.keySet()) {
            if (!this.zzPQ.zzQA.containsKey(zzcVar)) {
                this.zzPQ.zzQz.get(zzcVar).zza(this.zzQd, setZzkW);
            } else if (zzkP()) {
                zzkU();
            }
        }
    }

    private void zzkU() {
        this.zzPQ.zzla();
        if (this.zzPZ != null) {
            if (this.zzQe) {
                this.zzPZ.zza(this.zzQd, this.zzQf);
            }
            zzO(false);
        }
        Iterator<Api.zzc<?>> it = this.zzPQ.zzQA.keySet().iterator();
        while (it.hasNext()) {
            this.zzPQ.zzQz.get(it.next()).disconnect();
        }
        if (!this.zzPV) {
            this.zzPQ.zzQs.zzg(this.zzPX.isEmpty() ? null : this.zzPX);
        } else {
            this.zzPV = false;
            zzas(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkV() {
        this.zzQb = false;
        this.zzPQ.zzQB.clear();
        for (Api.zzc<?> zzcVar : this.zzPY) {
            if (!this.zzPQ.zzQA.containsKey(zzcVar)) {
                this.zzPQ.zzQA.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private Set<Scope> zzkW() {
        HashSet hashSet = new HashSet(this.zzQg.zzlG());
        Map<Api<?>, zze.zza> mapZzlI = this.zzQg.zzlI();
        for (Api<?> api : mapZzlI.keySet()) {
            if (!this.zzPQ.zzQA.containsKey(api.zzkF())) {
                hashSet.addAll(mapZzlI.get(api).zzPP);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.common.api.zzh
    public void begin() {
        this.zzPQ.zzQs.zzmg();
        this.zzPQ.zzQA.clear();
        this.zzPV = false;
        this.zzQb = false;
        this.zzPS = null;
        this.zzPU = 0;
        this.zzQa = 2;
        this.zzQc = false;
        this.zzQe = false;
        boolean z = false;
        for (Api<?> api : this.zzQh.keySet()) {
            Api.zza zzaVar = this.zzPQ.zzQz.get(api.zzkF());
            int iIntValue = this.zzQh.get(api).intValue();
            zzaVar.zza(new zzc(this, api, iIntValue));
            boolean z2 = (api.zzkC().getPriority() == 1) | z;
            if (zzaVar.zzjM()) {
                this.zzQb = true;
                if (iIntValue < this.zzQa) {
                    this.zzQa = iIntValue;
                }
                if (iIntValue != 0) {
                    this.zzPY.add(api.zzkF());
                }
            }
            z = z2;
        }
        if (z) {
            this.zzQb = false;
        }
        if (this.zzQb) {
            this.zzQg.zza(Integer.valueOf(this.zzPQ.getSessionId()));
            zzd zzdVar = new zzd();
            this.zzPZ = (zzmd) this.zzPK.zza(this.mContext, this.zzPQ.getLooper(), this.zzQg, this.zzQg.zzlM(), zzdVar, zzdVar);
            this.zzPZ.connect();
        }
        this.zzPW = this.zzPQ.zzQz.size();
        Iterator<Api.zza> it = this.zzPQ.zzQz.values().iterator();
        while (it.hasNext()) {
            it.next().connect();
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public void connect() {
        this.zzPV = false;
    }

    @Override // com.google.android.gms.common.api.zzh
    public String getName() {
        return "CONNECTING";
    }

    @Override // com.google.android.gms.common.api.zzh
    public void onConnected(Bundle bundle) {
        if (zzat(3)) {
            if (bundle != null) {
                this.zzPX.putAll(bundle);
            }
            if (zzkP()) {
                zzkU();
            }
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, R extends Result, T extends zza.AbstractC0069zza<R, A>> T zza(T t) {
        this.zzPQ.zzQt.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzat(3)) {
            zzb(connectionResult, api, i);
            if (zzkP()) {
                zzkU();
            }
        }
    }

    @Override // com.google.android.gms.common.api.zzh
    public void zzas(int i) {
        if (i == -1) {
            Iterator<zzg.zze<?>> it = this.zzPQ.zzQt.iterator();
            while (it.hasNext()) {
                zzg.zze<?> next = it.next();
                if (next.zzkI() != 1) {
                    next.cancel();
                    it.remove();
                }
            }
            this.zzPQ.zzkX();
            if (this.zzPS == null && !this.zzPQ.zzQt.isEmpty()) {
                this.zzPV = true;
                return;
            } else {
                this.zzPQ.zzQA.clear();
                this.zzPS = null;
                zzO(true);
            }
        }
        this.zzPQ.zzg(this.zzPS);
    }

    @Override // com.google.android.gms.common.api.zzh
    public <A extends Api.zza, T extends zza.AbstractC0069zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
