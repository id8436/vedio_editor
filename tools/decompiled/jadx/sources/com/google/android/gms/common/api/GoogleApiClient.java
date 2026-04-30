package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzme;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public interface GoogleApiClient {

    public final class Builder {
        private final Context mContext;
        private Account zzJc;
        private int zzPA;
        private View zzPB;
        private String zzPC;
        private String zzPD;
        private final Map<Api<?>, zze.zza> zzPE;
        private final Map<Api<?>, Api.ApiOptions> zzPF;
        private FragmentActivity zzPG;
        private int zzPH;
        private int zzPI;
        private OnConnectionFailedListener zzPJ;
        private Api.zzb<? extends zzmd, zzme> zzPK;
        private final Set<ConnectionCallbacks> zzPL;
        private final Set<OnConnectionFailedListener> zzPM;
        private zzme.zza zzPN;
        private Looper zzPx;
        private final Set<Scope> zzPz;

        public Builder(Context context) {
            this.zzPz = new HashSet();
            this.zzPE = new HashMap();
            this.zzPF = new HashMap();
            this.zzPH = -1;
            this.zzPI = -1;
            this.zzPL = new HashSet();
            this.zzPM = new HashSet();
            this.zzPN = new zzme.zza();
            this.mContext = context;
            this.zzPx = context.getMainLooper();
            this.zzPC = context.getPackageName();
            this.zzPD = context.getClass().getName();
            this.zzPK = zzmb.zzKi;
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzv.zzb(connectionCallbacks, "Must provide a connected listener");
            this.zzPL.add(connectionCallbacks);
            zzv.zzb(onConnectionFailedListener, "Must provide a connection failed listener");
            this.zzPM.add(onConnectionFailedListener);
        }

        private void zza(Api<?> api, int i, Scope... scopeArr) {
            boolean z = true;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalArgumentException("Invalid resolution mode: '" + i + "', use a constant from GoogleApiClient.ResolutionMode");
                }
                z = false;
            }
            HashSet hashSet = new HashSet(api.zzkE());
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.zzPE.put(api, new zze.zza(hashSet, z));
        }

        private GoogleApiClient zzkL() {
            zzl zzlVarZza = zzl.zza(this.zzPG);
            zzg zzgVar = new zzg(this.mContext.getApplicationContext(), this.zzPx, zzkK(), this.zzPK, this.zzPF, this.zzPL, this.zzPM, this.zzPH, -1);
            zzlVarZza.zza(this.zzPH, zzgVar, this.zzPJ);
            return zzgVar;
        }

        private GoogleApiClient zzkM() {
            zzm zzmVarZzb = zzm.zzb(this.zzPG);
            GoogleApiClient googleApiClientZzay = zzmVarZzb.zzay(this.zzPI);
            if (googleApiClientZzay == null) {
                googleApiClientZzay = new zzg(this.mContext.getApplicationContext(), this.zzPx, zzkK(), this.zzPK, this.zzPF, this.zzPL, this.zzPM, -1, this.zzPI);
            }
            zzmVarZzb.zza(this.zzPI, googleApiClientZzay, this.zzPJ);
            return googleApiClientZzay;
        }

        public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            this.zzPF.put(api, null);
            this.zzPz.addAll(api.zzkE());
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> api, O o) {
            zzv.zzb(o, "Null options are not permitted for this Api");
            this.zzPF.put(api, o);
            this.zzPz.addAll(api.zzkE());
            return this;
        }

        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
            zzv.zzb(o, "Null options are not permitted for this Api");
            this.zzPF.put(api, o);
            zza(api, 1, scopeArr);
            return this;
        }

        public Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            this.zzPF.put(api, null);
            zza(api, 1, scopeArr);
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            this.zzPL.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            this.zzPM.add(onConnectionFailedListener);
            return this;
        }

        public Builder addScope(Scope scope) {
            this.zzPz.add(scope);
            return this;
        }

        public GoogleApiClient build() {
            zzv.zzb(!this.zzPF.isEmpty(), "must call addApi() to add at least one API");
            return this.zzPH >= 0 ? zzkL() : this.zzPI >= 0 ? zzkM() : new zzg(this.mContext, this.zzPx, zzkK(), this.zzPK, this.zzPF, this.zzPL, this.zzPM, -1, -1);
        }

        public Builder enableAutoManage(FragmentActivity fragmentActivity, int i, OnConnectionFailedListener onConnectionFailedListener) {
            zzv.zzb(i >= 0, "clientId must be non-negative");
            this.zzPH = i;
            this.zzPG = (FragmentActivity) zzv.zzb(fragmentActivity, "Null activity is not permitted.");
            this.zzPJ = onConnectionFailedListener;
            return this;
        }

        public Builder requestServerAuthCode(String str, ServerAuthCodeCallbacks serverAuthCodeCallbacks) {
            this.zzPN.zza(str, serverAuthCodeCallbacks);
            return this;
        }

        public Builder setAccountName(String str) {
            this.zzJc = str == null ? null : new Account(str, "com.google");
            return this;
        }

        public Builder setGravityForPopups(int i) {
            this.zzPA = i;
            return this;
        }

        public Builder setHandler(Handler handler) {
            zzv.zzb(handler, "Handler must not be null");
            this.zzPx = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View view) {
            this.zzPB = view;
            return this;
        }

        public Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public com.google.android.gms.common.internal.zze zzkK() {
            return new com.google.android.gms.common.internal.zze(this.zzJc, this.zzPz, this.zzPE, this.zzPA, this.zzPB, this.zzPC, this.zzPD, this.zzPN.zzwi());
        }
    }

    public interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface ServerAuthCodeCallbacks {

        public class CheckResult {
            private boolean zzPO;
            private Set<Scope> zzPP;

            private CheckResult(boolean z, Set<Scope> set) {
                this.zzPO = z;
                this.zzPP = set;
            }

            public static CheckResult newAuthNotRequiredResult() {
                return new CheckResult(false, null);
            }

            public static CheckResult newAuthRequiredResult(Set<Scope> set) {
                zzv.zzb((set == null || set.isEmpty()) ? false : true, "A non-empty scope set is required if further auth is needed.");
                return new CheckResult(true, set);
            }

            public boolean zzkN() {
                return this.zzPO;
            }

            public Set<Scope> zzkO() {
                return this.zzPP;
            }
        }

        CheckResult onCheckServerAuthorization(String str, Set<Scope> set);

        boolean onUploadServerAuthCode(String str, String str2);
    }

    public interface zza {
        void zza(ConnectionResult connectionResult);

        void zzb(ConnectionResult connectionResult);
    }

    ConnectionResult blockingConnect();

    ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    PendingResult<Status> clearDefaultAccountAndReconnect();

    void connect();

    void disconnect();

    void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    ConnectionResult getConnectionResult(Api<?> api);

    Context getContext();

    Looper getLooper();

    int getSessionId();

    boolean hasConnectedApi(Api<?> api);

    boolean isConnected();

    boolean isConnecting();

    boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    void reconnect();

    void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    void stopAutoManage(FragmentActivity fragmentActivity);

    void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    <C extends Api.zza> C zza(Api.zzc<C> zzcVar);

    <A extends Api.zza, R extends Result, T extends zza.AbstractC0069zza<R, A>> T zza(T t);

    boolean zza(Api<?> api);

    boolean zza(Scope scope);

    <A extends Api.zza, T extends zza.AbstractC0069zza<? extends Result, A>> T zzb(T t);

    <L> zzi<L> zzl(L l);
}
