package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.internal.zzo;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.signin.internal.zzd;
import com.google.android.gms.signin.internal.zzf;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public class zzh extends zzi<zzf> implements zzmd {
    private final com.google.android.gms.common.internal.zze zzQg;
    private final zzme zzSY;
    private Integer zzSZ;
    private final ExecutorService zzaBN;

    class zza extends zzd.zza {
        private final zzme zzSY;
        private final ExecutorService zzaBN;

        public zza(zzme zzmeVar, ExecutorService executorService) {
            this.zzSY = zzmeVar;
            this.zzaBN = executorService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public GoogleApiClient.ServerAuthCodeCallbacks zzwh() throws RemoteException {
            return this.zzSY.zzwh();
        }

        @Override // com.google.android.gms.signin.internal.zzd
        public void zza(final String str, final String str2, final zzf zzfVar) throws RemoteException {
            this.zzaBN.submit(new Runnable() { // from class: com.google.android.gms.signin.internal.zzh.zza.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzfVar.zzag(zza.this.zzwh().onUploadServerAuthCode(str, str2));
                    } catch (RemoteException e2) {
                        Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", e2);
                    }
                }
            });
        }

        @Override // com.google.android.gms.signin.internal.zzd
        public void zza(final String str, final List<Scope> list, final zzf zzfVar) throws RemoteException {
            this.zzaBN.submit(new Runnable() { // from class: com.google.android.gms.signin.internal.zzh.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        GoogleApiClient.ServerAuthCodeCallbacks.CheckResult checkResultOnCheckServerAuthorization = zza.this.zzwh().onCheckServerAuthorization(str, Collections.unmodifiableSet(new HashSet(list)));
                        zzfVar.zza(new CheckServerAuthResult(checkResultOnCheckServerAuthorization.zzkN(), checkResultOnCheckServerAuthorization.zzkO()));
                    } catch (RemoteException e2) {
                        Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", e2);
                    }
                }
            });
        }
    }

    public zzh(Context context, Looper looper, com.google.android.gms.common.internal.zze zzeVar, zzme zzmeVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ExecutorService executorService) {
        super(context, looper, 44, connectionCallbacks, onConnectionFailedListener, zzeVar);
        this.zzQg = zzeVar;
        this.zzSY = zzmeVar;
        this.zzSZ = zzeVar.zzlN();
        this.zzaBN = executorService;
    }

    public static Bundle zza(zzme zzmeVar, Integer num, ExecutorService executorService) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzmeVar.zzwf());
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzmeVar.zzwg());
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzmeVar.zzvx());
        if (zzmeVar.zzwh() != null) {
            bundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new zza(zzmeVar, executorService).asBinder()));
        }
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzmd
    public void zza(zzo zzoVar, Set<Scope> set, zze zzeVar) {
        zzv.zzb(zzeVar, "Expecting a valid ISignInCallbacks");
        try {
            zzlX().zza(new AuthAccountRequest(zzoVar, set), zzeVar);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when authAccount is called");
            try {
                zzeVar.zza(new ConnectionResult(8, null), new AuthAccountResult());
            } catch (RemoteException e3) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.");
            }
        }
    }

    @Override // com.google.android.gms.internal.zzmd
    public void zza(zzo zzoVar, boolean z) {
        try {
            zzlX().zza(zzoVar, this.zzSZ.intValue(), z);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzmd
    public void zza(zzr zzrVar) {
        zzv.zzb(zzrVar, "Expecting a valid IResolveAccountCallbacks");
        try {
            zzlX().zza(new ResolveAccountRequest(this.zzQg.zzlE(), this.zzSZ.intValue()), zzrVar);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when resolveAccount is called");
            try {
                zzrVar.zzb(new ResolveAccountResponse(8));
            } catch (RemoteException e3) {
                Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzi
    /* JADX INFO: renamed from: zzcI, reason: merged with bridge method [inline-methods] */
    public zzf zzD(IBinder iBinder) {
        return zzf.zza.zzcH(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzeq() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzer() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected Bundle zzka() {
        Bundle bundleZza = zza(this.zzSY, this.zzQg.zzlN(), this.zzaBN);
        if (!getContext().getPackageName().equals(this.zzQg.zzlJ())) {
            bundleZza.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzQg.zzlJ());
        }
        return bundleZza;
    }

    @Override // com.google.android.gms.internal.zzmd
    public void zzwe() {
        try {
            zzlX().zzhB(this.zzSZ.intValue());
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }
}
