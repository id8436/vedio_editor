package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzhi;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzme;
import com.google.gdata.data.codesearch.Package;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
final class zzg implements GoogleApiClient {
    private final Context mContext;
    private final int zzPH;
    private final int zzPI;
    final Api.zzb<? extends zzmd, zzme> zzPK;
    private final Looper zzPx;
    final com.google.android.gms.common.internal.zze zzQg;
    final com.google.android.gms.common.internal.zzj zzQs;
    private volatile boolean zzQu;
    final zza zzQx;
    BroadcastReceiver zzQy;
    private final Lock zzPR = new ReentrantLock();
    final Queue<zze<?>> zzQt = new LinkedList();
    private long zzQv = 120000;
    private long zzQw = 5000;
    final Map<Api.zzc<?>, Api.zza> zzQz = new HashMap();
    final Map<Api.zzc<?>, ConnectionResult> zzQA = new HashMap();
    Set<Scope> zzQB = new HashSet();
    private ConnectionResult zzQD = null;
    private final Set<zzi<?>> zzQE = Collections.newSetFromMap(new WeakHashMap());
    final Set<zze<?>> zzQF = Collections.newSetFromMap(new ConcurrentHashMap(16, 0.75f, 2));
    private final zzc zzQG = new zzc() { // from class: com.google.android.gms.common.api.zzg.1
        @Override // com.google.android.gms.common.api.zzg.zzc
        public void zzc(zze<?> zzeVar) {
            zzg.this.zzQF.remove(zzeVar);
        }
    };
    private final GoogleApiClient.ConnectionCallbacks zzQH = new zzd() { // from class: com.google.android.gms.common.api.zzg.2
        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzg.this.zzQC.onConnected(bundle);
        }
    };
    private final zzj.zza zzQI = new zzj.zza() { // from class: com.google.android.gms.common.api.zzg.3
        @Override // com.google.android.gms.common.internal.zzj.zza
        public boolean isConnected() {
            return zzg.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzj.zza
        public Bundle zzjZ() {
            return null;
        }
    };
    final Map<Api<?>, Integer> zzQh = new HashMap();
    private final Condition zzQr = this.zzPR.newCondition();
    private volatile zzh zzQC = new zzf(this);

    final class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzg.this.zzlc();
                    break;
                case 2:
                    zzg.this.resume();
                    break;
                default:
                    Log.w("GoogleApiClientImpl", "Unknown message id: " + message.what);
                    break;
            }
        }
    }

    class zzb extends BroadcastReceiver {
        private WeakReference<zzg> zzQP;

        zzb(zzg zzgVar) {
            this.zzQP = new WeakReference<>(zzgVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            zzg zzgVar;
            Uri data = intent.getData();
            String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
            if (schemeSpecificPart == null || !schemeSpecificPart.equals("com.google.android.gms") || (zzgVar = this.zzQP.get()) == null) {
                return;
            }
            zzgVar.resume();
        }
    }

    interface zzc {
        void zzc(zze<?> zzeVar);
    }

    public abstract class zzd implements GoogleApiClient.ConnectionCallbacks {
        public zzd() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            zzg.this.zzPR.lock();
            try {
                if (zzg.this.zzQC instanceof zzf) {
                    return;
                }
                switch (i) {
                    case 1:
                        if (zzg.this.zzlb()) {
                            return;
                        }
                        zzg.this.zzQu = true;
                        if (zzg.this.zzQy == null) {
                            zzg.this.zzQy = new zzb(zzg.this);
                            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                            intentFilter.addDataScheme(Package.EXTENSION_PACKAGE);
                            zzg.this.mContext.getApplicationContext().registerReceiver(zzg.this.zzQy, intentFilter);
                        }
                        zzg.this.zzQx.sendMessageDelayed(zzg.this.zzQx.obtainMessage(1), zzg.this.zzQv);
                        zzg.this.zzQx.sendMessageDelayed(zzg.this.zzQx.obtainMessage(2), zzg.this.zzQw);
                        zzg.this.zzav(i);
                        break;
                    case 2:
                        zzg.this.zzav(i);
                        zzg.this.connect();
                        break;
                }
            } finally {
                zzg.this.zzPR.unlock();
            }
        }
    }

    interface zze<A extends Api.zza> {
        void cancel();

        void forceFailureUnlessReady(Status status);

        void zza(zzc zzcVar);

        void zzb(A a2) throws DeadObjectException;

        void zzk(Status status);

        Api.zzc<A> zzkF();

        int zzkI();
    }

    public zzg(Context context, Looper looper, com.google.android.gms.common.internal.zze zzeVar, Api.zzb<? extends zzmd, zzme> zzbVar, Map<Api<?>, Api.ApiOptions> map, Set<GoogleApiClient.ConnectionCallbacks> set, Set<GoogleApiClient.OnConnectionFailedListener> set2, int i, int i2) {
        this.mContext = context;
        this.zzQs = new com.google.android.gms.common.internal.zzj(looper, this.zzQI);
        this.zzPx = looper;
        this.zzQx = new zza(looper);
        this.zzPH = i;
        this.zzPI = i2;
        Iterator<GoogleApiClient.ConnectionCallbacks> it = set.iterator();
        while (it.hasNext()) {
            this.zzQs.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = set2.iterator();
        while (it2.hasNext()) {
            this.zzQs.registerConnectionFailedListener(it2.next());
        }
        Map<Api<?>, zze.zza> mapZzlI = zzeVar.zzlI();
        for (Api<?> api : map.keySet()) {
            Api.ApiOptions apiOptions = map.get(api);
            int i3 = mapZzlI.get(api) != null ? mapZzlI.get(api).zzTa ? 1 : 2 : 0;
            this.zzQh.put(api, Integer.valueOf(i3));
            this.zzQz.put(api.zzkF(), api.zzkG() ? zza(api.zzkD(), apiOptions, context, looper, zzeVar, this.zzQH, zza(api, i3)) : zza(api.zzkC(), apiOptions, context, looper, zzeVar, this.zzQH, zza(api, i3)));
        }
        this.zzQg = zzeVar;
        this.zzPK = zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        this.zzPR.lock();
        try {
            if (zzlb()) {
                connect();
            }
        } finally {
            this.zzPR.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api.zza, O> C zza(Api.zzb<C, O> zzbVar, Object obj, Context context, Looper looper, com.google.android.gms.common.internal.zze zzeVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return (C) zzbVar.zza(context, looper, zzeVar, obj, connectionCallbacks, onConnectionFailedListener);
    }

    private final GoogleApiClient.OnConnectionFailedListener zza(final Api<?> api, final int i) {
        return new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.common.api.zzg.4
            @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
            public void onConnectionFailed(ConnectionResult connectionResult) {
                zzg.this.zzQC.zza(connectionResult, api, i);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api.zzd, O> zzaa zza(Api.zze<C, O> zzeVar, Object obj, Context context, Looper looper, com.google.android.gms.common.internal.zze zzeVar2, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzaa(context, looper, zzeVar.zzkH(), connectionCallbacks, onConnectionFailedListener, zzeVar2, zzeVar.zzi(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(final GoogleApiClient googleApiClient, final zzk zzkVar, final boolean z) {
        zzhi.zzUh.zzc(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.common.api.zzg.7
            @Override // com.google.android.gms.common.api.ResultCallback
            /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
            public void onResult(Status status) {
                if (status.isSuccess() && zzg.this.isConnected()) {
                    zzg.this.reconnect();
                }
                zzkVar.setResult(status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzav(int i) {
        this.zzPR.lock();
        try {
            this.zzQC.zzas(i);
        } finally {
            this.zzPR.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzlc() {
        this.zzPR.lock();
        try {
            if (zzld()) {
                connect();
            }
        } finally {
            this.zzPR.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        ConnectionResult connectionResult;
        zzv.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.zzPR.lock();
        try {
            connect();
            while (isConnecting()) {
                this.zzQr.await();
            }
            connectionResult = isConnected() ? ConnectionResult.zzOI : this.zzQD != null ? this.zzQD : new ConnectionResult(13, null);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            connectionResult = new ConnectionResult(15, null);
        } finally {
            this.zzPR.unlock();
        }
        return connectionResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        r0 = new com.google.android.gms.common.ConnectionResult(14, null);
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.common.ConnectionResult blockingConnect(long r6, java.util.concurrent.TimeUnit r8) {
        /*
            r5 = this;
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            if (r0 == r1) goto L3d
            r0 = 1
        Lb:
            java.lang.String r1 = "blockingConnect must not be called on the UI thread"
            com.google.android.gms.common.internal.zzv.zza(r0, r1)
            java.util.concurrent.locks.Lock r0 = r5.zzPR
            r0.lock()
            r5.connect()     // Catch: java.lang.Throwable -> L7d
            long r0 = r8.toNanos(r6)     // Catch: java.lang.Throwable -> L7d
        L1d:
            boolean r2 = r5.isConnecting()     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L55
            java.util.concurrent.locks.Condition r2 = r5.zzQr     // Catch: java.lang.InterruptedException -> L3f java.lang.Throwable -> L7d
            long r0 = r2.awaitNanos(r0)     // Catch: java.lang.InterruptedException -> L3f java.lang.Throwable -> L7d
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 > 0) goto L1d
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.InterruptedException -> L3f java.lang.Throwable -> L7d
            r1 = 14
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.InterruptedException -> L3f java.lang.Throwable -> L7d
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
        L3c:
            return r0
        L3d:
            r0 = 0
            goto Lb
        L3f:
            r0 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L7d
            r0.interrupt()     // Catch: java.lang.Throwable -> L7d
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.Throwable -> L7d
            r1 = 15
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L7d
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
            goto L3c
        L55:
            boolean r0 = r5.isConnected()     // Catch: java.lang.Throwable -> L7d
            if (r0 == 0) goto L63
            com.google.android.gms.common.ConnectionResult r0 = com.google.android.gms.common.ConnectionResult.zzOI     // Catch: java.lang.Throwable -> L7d
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
            goto L3c
        L63:
            com.google.android.gms.common.ConnectionResult r0 = r5.zzQD     // Catch: java.lang.Throwable -> L7d
            if (r0 == 0) goto L6f
            com.google.android.gms.common.ConnectionResult r0 = r5.zzQD     // Catch: java.lang.Throwable -> L7d
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
            goto L3c
        L6f:
            com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult     // Catch: java.lang.Throwable -> L7d
            r1 = 13
            r2 = 0
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L7d
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
            goto L3c
        L7d:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r5.zzPR
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.zzg.blockingConnect(long, java.util.concurrent.TimeUnit):com.google.android.gms.common.ConnectionResult");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        zzv.zza(isConnected(), "GoogleApiClient is not connected yet.");
        final zzk zzkVar = new zzk(this.zzPx);
        if (this.zzQz.containsKey(zzhi.zzKh)) {
            zza(this, zzkVar, false);
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.common.api.zzg.5
                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzg.this.zza((GoogleApiClient) atomicReference.get(), zzkVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            };
            GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this.mContext).addApi(zzhi.API).addConnectionCallbacks(connectionCallbacks).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.common.api.zzg.6
                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(ConnectionResult connectionResult) {
                    zzkVar.setResult(new Status(8));
                }
            }).setHandler(this.zzQx).build();
            atomicReference.set(googleApiClientBuild);
            googleApiClientBuild.connect();
        }
        return zzkVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.zzPR.lock();
        try {
            this.zzQC.connect();
        } finally {
            this.zzPR.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        zzld();
        zzav(-1);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).println("GoogleApiClient:");
        String str2 = str + "  ";
        printWriter.append((CharSequence) str2).append("mState=").append(this.zzQC.getName());
        printWriter.append(" mResuming=").print(this.zzQu);
        printWriter.append(" mWorkQueue.size()=").print(this.zzQt.size());
        printWriter.append(" mUnconsumedRunners.size()=").println(this.zzQF.size());
        Iterator<Api.zza> it = this.zzQz.values().iterator();
        while (it.hasNext()) {
            it.next().dump(str2, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        ConnectionResult connectionResult;
        Api.zzc<?> zzcVarZzkF = api.zzkF();
        this.zzPR.lock();
        try {
            if (!isConnected() && !zzlb()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.zzQz.containsKey(zzcVarZzkF)) {
                this.zzPR.unlock();
                throw new IllegalArgumentException(api.getName() + " was never registered with GoogleApiClient");
            }
            if (this.zzQz.get(zzcVarZzkF).isConnected()) {
                connectionResult = ConnectionResult.zzOI;
            } else if (this.zzQA.containsKey(zzcVarZzkF)) {
                connectionResult = this.zzQA.get(zzcVarZzkF);
            } else {
                Log.wtf("GoogleApiClientImpl", api.getName() + " requested in getConnectionResult is not connected but is not present in the failed connections map");
                connectionResult = new ConnectionResult(8, null);
            }
            return connectionResult;
        } finally {
            this.zzPR.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzPx;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(Api<?> api) {
        Api.zza zzaVar = this.zzQz.get(api.zzkF());
        if (zzaVar == null) {
            return false;
        }
        return zzaVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.zzQC instanceof com.google.android.gms.common.api.zzd;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.zzQC instanceof com.google.android.gms.common.api.zze;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zzQs.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zzQs.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzQs.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzQs.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(FragmentActivity fragmentActivity) {
        if (this.zzPH >= 0) {
            zzl.zza(fragmentActivity).zzax(this.zzPH);
        } else {
            if (this.zzPI < 0) {
                throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
            }
            zzm.zzb(fragmentActivity).zzax(this.zzPI);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzQs.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzQs.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <C extends Api.zza> C zza(Api.zzc<C> zzcVar) {
        C c2 = (C) this.zzQz.get(zzcVar);
        zzv.zzb(c2, "Appropriate Api was not requested.");
        return c2;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zza, R extends Result, T extends zza.AbstractC0069zza<R, A>> T zza(T t) {
        zzv.zzb(t.zzkF() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        zzv.zzb(this.zzQz.containsKey(t.zzkF()), "GoogleApiClient is not configured to use the API required for this call.");
        this.zzPR.lock();
        try {
            return (T) this.zzQC.zza(t);
        } finally {
            this.zzPR.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(Api<?> api) {
        return this.zzQz.containsKey(api.zzkF());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean zza(com.google.android.gms.common.api.Scope r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.zzPR
            r0.lock()
            boolean r0 = r2.isConnected()     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1a
            java.util.Set<com.google.android.gms.common.api.Scope> r0 = r2.zzQB     // Catch: java.lang.Throwable -> L1c
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1a
            r0 = 1
        L14:
            java.util.concurrent.locks.Lock r1 = r2.zzPR
            r1.unlock()
            return r0
        L1a:
            r0 = 0
            goto L14
        L1c:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.zzPR
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.zzg.zza(com.google.android.gms.common.api.Scope):boolean");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zza, T extends zza.AbstractC0069zza<? extends Result, A>> T zzb(T t) {
        zzv.zzb(t.zzkF() != null, "This task can not be executed (it's probably a Batch or malformed)");
        this.zzPR.lock();
        try {
            if (zzlb()) {
                this.zzQt.add(t);
                while (!this.zzQt.isEmpty()) {
                    zze<A> zzeVar = (zze) this.zzQt.remove();
                    zzb(zzeVar);
                    zzeVar.zzk(Status.zzQW);
                }
            } else {
                t = (T) this.zzQC.zzb(t);
            }
            return t;
        } finally {
            this.zzPR.unlock();
        }
    }

    <A extends Api.zza> void zzb(zze<A> zzeVar) {
        this.zzQF.add(zzeVar);
        zzeVar.zza(this.zzQG);
    }

    void zzg(ConnectionResult connectionResult) {
        this.zzPR.lock();
        try {
            this.zzQD = connectionResult;
            this.zzQC = new zzf(this);
            this.zzQC.begin();
            this.zzQr.signalAll();
        } finally {
            this.zzPR.unlock();
        }
    }

    void zzkX() {
        for (zze<?> zzeVar : this.zzQF) {
            zzeVar.zza(null);
            zzeVar.cancel();
        }
        this.zzQF.clear();
        Iterator<zzi<?>> it = this.zzQE.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.zzQE.clear();
        this.zzQB.clear();
    }

    void zzkY() {
        Iterator<Api.zza> it = this.zzQz.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    void zzkZ() {
        this.zzPR.lock();
        try {
            this.zzQC = new com.google.android.gms.common.api.zze(this, this.zzQg, this.zzQh, this.zzPK, this.zzPR, this.mContext);
            this.zzQC.begin();
            this.zzQr.signalAll();
        } finally {
            this.zzPR.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzi<L> zzl(L l) {
        zzv.zzb(l, "Listener must not be null");
        this.zzPR.lock();
        try {
            zzi<L> zziVar = new zzi<>(this.zzPx, l);
            this.zzQE.add(zziVar);
            return zziVar;
        } finally {
            this.zzPR.unlock();
        }
    }

    void zzla() {
        this.zzPR.lock();
        try {
            zzld();
            this.zzQC = new com.google.android.gms.common.api.zzd(this);
            this.zzQC.begin();
            this.zzQr.signalAll();
        } finally {
            this.zzPR.unlock();
        }
    }

    boolean zzlb() {
        return this.zzQu;
    }

    boolean zzld() {
        this.zzPR.lock();
        try {
            if (!zzlb()) {
                return false;
            }
            this.zzQu = false;
            this.zzQx.removeMessages(2);
            this.zzQx.removeMessages(1);
            if (this.zzQy != null) {
                this.mContext.getApplicationContext().unregisterReceiver(this.zzQy);
                this.zzQy = null;
            }
            return true;
        } finally {
            this.zzPR.unlock();
        }
    }
}
