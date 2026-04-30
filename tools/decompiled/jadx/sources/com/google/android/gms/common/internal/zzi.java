package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzi<T extends IInterface> implements Api.zza, zzj.zza {
    public static final String[] zzTx = {"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final Account zzJc;
    private final Set<Scope> zzPP;
    private final Looper zzPx;
    private final com.google.android.gms.common.internal.zze zzQg;
    private final zzj zzQs;
    private final zzk zzTo;
    private zzq zzTp;
    private boolean zzTq;
    private GoogleApiClient.zza zzTr;
    private T zzTs;
    private final ArrayList<zzi<T>.zzc<?>> zzTt;
    private zzi<T>.zze zzTu;
    private int zzTv;
    private final int zzTw;
    private final Object zzoe;

    /* JADX INFO: loaded from: classes3.dex */
    abstract class zza extends zzi<T>.zzc<Boolean> {
        public final int statusCode;
        public final Bundle zzTy;

        protected zza(int i, Bundle bundle) {
            super(true);
            this.statusCode = i;
            this.zzTy = bundle;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.zzi.zzc
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public void zzo(Boolean bool) {
            if (bool == null) {
                zzi.this.zza(1, (IInterface) null);
                return;
            }
            switch (this.statusCode) {
                case 0:
                    if (zzma()) {
                        return;
                    }
                    zzi.this.zza(1, (IInterface) null);
                    zzi(new ConnectionResult(8, null));
                    return;
                case 10:
                    zzi.this.zza(1, (IInterface) null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    zzi.this.zza(1, (IInterface) null);
                    zzi(new ConnectionResult(this.statusCode, this.zzTy != null ? (PendingIntent) this.zzTy.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract void zzi(ConnectionResult connectionResult);

        protected abstract boolean zzma();

        @Override // com.google.android.gms.common.internal.zzi.zzc
        protected void zzmb() {
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class zzb extends Handler {
        public zzb(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if ((message.what == 1 || message.what == 5 || message.what == 6) && !zzi.this.isConnecting()) {
                zzc zzcVar = (zzc) message.obj;
                zzcVar.zzmb();
                zzcVar.unregister();
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(((Integer) message.obj).intValue(), null);
                if (zzi.this.zzTq) {
                    zzi.this.zzTr.zza(connectionResult);
                    return;
                } else {
                    zzi.this.zzQs.zzj(connectionResult);
                    return;
                }
            }
            if (message.what == 4) {
                zzi.this.zza(4, (IInterface) null);
                zzi.this.zzQs.zzaP(((Integer) message.obj).intValue());
                zzi.this.zza(4, 1, (IInterface) null);
            } else if (message.what == 2 && !zzi.this.isConnected()) {
                zzc zzcVar2 = (zzc) message.obj;
                zzcVar2.zzmb();
                zzcVar2.unregister();
            } else if (message.what == 2 || message.what == 1 || message.what == 5 || message.what == 6) {
                ((zzc) message.obj).zzmc();
            } else {
                Log.wtf("GmsClient", "Don't know how to handle this message.");
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public abstract class zzc<TListener> {
        private TListener mListener;
        private boolean zzTA = false;

        public zzc(TListener tlistener) {
            this.mListener = tlistener;
        }

        public void unregister() {
            zzmd();
            synchronized (zzi.this.zzTt) {
                zzi.this.zzTt.remove(this);
            }
        }

        protected abstract void zzmb();

        public void zzmc() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.mListener;
                if (this.zzTA) {
                    Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
                }
            }
            if (tlistener != null) {
                try {
                    zzo(tlistener);
                } catch (RuntimeException e2) {
                    zzmb();
                    throw e2;
                }
            } else {
                zzmb();
            }
            synchronized (this) {
                this.zzTA = true;
            }
            unregister();
        }

        public void zzmd() {
            synchronized (this) {
                this.mListener = null;
            }
        }

        protected abstract void zzo(TListener tlistener);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class zzd extends zzp.zza {
        private zzi zzTB;

        public zzd(zzi zziVar) {
            this.zzTB = zziVar;
        }

        private void zzme() {
            this.zzTB = null;
        }

        @Override // com.google.android.gms.common.internal.zzp
        public void zzb(int i, IBinder iBinder, Bundle bundle) {
            zzv.zzb(this.zzTB, "onPostInitComplete can be called only once per call to getRemoteService");
            this.zzTB.zza(i, iBinder, bundle);
            zzme();
        }

        @Override // com.google.android.gms.common.internal.zzp
        public void zzc(int i, Bundle bundle) {
            zzv.zzb(this.zzTB, "onAccountValidationComplete can be called only once per call to validateAccount");
            this.zzTB.zzb(i, bundle);
            zzme();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class zze implements ServiceConnection {
        public zze() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zzv.zzb(iBinder, "Expecting a valid IBinder");
            zzi.this.zzTp = zzq.zza.zzT(iBinder);
            zzi.this.zzlV();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            zzi.this.mHandler.sendMessage(zzi.this.mHandler.obtainMessage(4, 1));
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class zzf extends zzi<T>.zza {
        public final IBinder zzTC;

        public zzf(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.zzTC = iBinder;
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected void zzi(ConnectionResult connectionResult) {
            zzi.this.zzQs.zzj(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected boolean zzma() {
            try {
                String interfaceDescriptor = this.zzTC.getInterfaceDescriptor();
                if (!zzi.this.zzer().equals(interfaceDescriptor)) {
                    Log.e("GmsClient", "service descriptor mismatch: " + zzi.this.zzer() + " vs. " + interfaceDescriptor);
                    return false;
                }
                IInterface iInterfaceZzD = zzi.this.zzD(this.zzTC);
                if (iInterfaceZzD == null || !zzi.this.zza(2, 3, iInterfaceZzD)) {
                    return false;
                }
                zzi.this.zzQs.zzmh();
                GooglePlayServicesUtil.zzQ(zzi.this.mContext);
                return true;
            } catch (RemoteException e2) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class zzg extends zzi<T>.zza {
        public zzg() {
            super(0, null);
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected void zzi(ConnectionResult connectionResult) {
            if (zzi.this.zzTq) {
                zzi.this.zzTr.zza(connectionResult);
            } else {
                zzi.this.zzQs.zzj(connectionResult);
            }
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected boolean zzma() {
            if (zzi.this.zzTq) {
                zzv.zza(zzi.this.zzTr != null, "mConnectionProgressReportCallbacks should not be null if mReportProgress");
                zzi.this.zzTr.zza(ConnectionResult.zzOI);
            } else {
                zzi.this.zza((zzo) null, zzi.this.zzPP);
            }
            return true;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class zzh extends zzi<T>.zza {
        public zzh(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected void zzi(ConnectionResult connectionResult) {
            if (zzi.this.zzTq) {
                zzi.this.zzTr.zzb(connectionResult);
            } else {
                zzi.this.zzQs.zzj(connectionResult);
            }
        }

        @Override // com.google.android.gms.common.internal.zzi.zza
        protected boolean zzma() {
            zzv.zza(zzi.this.zzTq && zzi.this.zzTr != null, "PostValidationCallback should not happen when mReportProgress is false ormConnectionProgressReportCallbacks is null");
            zzi.this.zzTr.zzb(ConnectionResult.zzOI);
            return true;
        }
    }

    @Deprecated
    protected zzi(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzoe = new Object();
        this.zzTq = false;
        this.zzTt = new ArrayList<>();
        this.zzTv = 1;
        this.mContext = (Context) zzv.zzr(context);
        this.zzPx = (Looper) zzv.zzb(looper, "Looper must not be null");
        this.zzTo = zzk.zzU(context);
        this.zzQs = new zzj(looper, this);
        this.mHandler = new zzb(looper);
        this.zzTw = i;
        this.zzJc = null;
        this.zzPP = Collections.emptySet();
        this.zzQg = new GoogleApiClient.Builder(context).zzkK();
        registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks) zzv.zzr(connectionCallbacks));
        registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener) zzv.zzr(onConnectionFailedListener));
    }

    protected zzi(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zze zzeVar) {
        this(context, looper, zzk.zzU(context), i, zzeVar, connectionCallbacks, onConnectionFailedListener);
    }

    protected zzi(Context context, Looper looper, zzk zzkVar, int i, com.google.android.gms.common.internal.zze zzeVar) {
        this.zzoe = new Object();
        this.zzTq = false;
        this.zzTt = new ArrayList<>();
        this.zzTv = 1;
        this.mContext = (Context) zzv.zzb(context, "Context must not be null");
        this.zzPx = (Looper) zzv.zzb(looper, "Looper must not be null");
        this.zzTo = (zzk) zzv.zzb(zzkVar, "Supervisor must not be null");
        this.zzQs = new zzj(looper, this);
        this.mHandler = new zzb(looper);
        this.zzTw = i;
        this.zzQg = (com.google.android.gms.common.internal.zze) zzv.zzr(zzeVar);
        this.zzJc = zzeVar.getAccount();
        this.zzPP = zzb(zzeVar.zzlH());
    }

    protected zzi(Context context, Looper looper, zzk zzkVar, int i, com.google.android.gms.common.internal.zze zzeVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzkVar, i, zzeVar);
        registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks) zzv.zzr(connectionCallbacks));
        registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener) zzv.zzr(onConnectionFailedListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(int i, T t) {
        zzv.zzQ((i == 3) == (t != null));
        synchronized (this.zzoe) {
            this.zzTv = i;
            this.zzTs = t;
            switch (i) {
                case 1:
                    zzlT();
                    break;
                case 2:
                    zzlS();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zza(int i, int i2, T t) {
        boolean z;
        synchronized (this.zzoe) {
            if (this.zzTv != i) {
                z = false;
            } else {
                zza(i2, t);
                z = true;
            }
        }
        return z;
    }

    private Set<Scope> zzb(Set<Scope> set) {
        Set<Scope> setZza = zza(set);
        if (setZza == null) {
            return setZza;
        }
        Iterator<Scope> it = setZza.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setZza;
    }

    private void zzlS() {
        if (this.zzTu != null) {
            Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzeq());
            this.zzTo.zzb(zzeq(), this.zzTu, zzlR());
        }
        this.zzTu = new zze();
        if (this.zzTo.zza(zzeq(), this.zzTu, zzlR())) {
            return;
        }
        Log.e("GmsClient", "unable to connect to service: " + zzeq());
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, 9));
    }

    private void zzlT() {
        if (this.zzTu != null) {
            this.zzTo.zzb(zzeq(), this.zzTu, zzlR());
            this.zzTu = null;
        }
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void connect() {
        this.zzQs.zzmg();
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mContext);
        if (iIsGooglePlayServicesAvailable == 0) {
            zza(2, (IInterface) null);
        } else {
            zza(1, (IInterface) null);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3, Integer.valueOf(iIsGooglePlayServicesAvailable)));
        }
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void disconnect() {
        this.zzQs.zzmf();
        synchronized (this.zzTt) {
            int size = this.zzTt.size();
            for (int i = 0; i < size; i++) {
                this.zzTt.get(i).zzmd();
            }
            this.zzTt.clear();
        }
        zza(1, (IInterface) null);
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        printWriter.append((CharSequence) str).println("GmsClient:");
        String str2 = str + "  ";
        printWriter.append((CharSequence) str2).append("mStartServiceAction=").println(zzeq());
        synchronized (this.zzoe) {
            i = this.zzTv;
            t = this.zzTs;
        }
        printWriter.append((CharSequence) str2).append("mConnectState=");
        switch (i) {
            case 1:
                printWriter.print("DISCONNECTED");
                break;
            case 2:
                printWriter.print("CONNECTING");
                break;
            case 3:
                printWriter.print("CONNECTED");
                break;
            case 4:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.println("null");
        } else {
            printWriter.append((CharSequence) zzer()).append("@").println(Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzPx;
    }

    @Override // com.google.android.gms.common.api.Api.zza, com.google.android.gms.common.internal.zzj.zza
    public boolean isConnected() {
        boolean z;
        synchronized (this.zzoe) {
            z = this.zzTv == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzoe) {
            z = this.zzTv == 2;
        }
        return z;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzQs.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzQs.registerConnectionFailedListener(onConnectionFailedListener);
    }

    protected abstract T zzD(IBinder iBinder);

    protected Set<Scope> zza(Set<Scope> set) {
        return set;
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, new zzf(i, iBinder, bundle)));
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void zza(GoogleApiClient.zza zzaVar) {
        this.zzTr = (GoogleApiClient.zza) zzv.zzb(zzaVar, "Must provide a non-null ConnectionStatusReportCallbacks");
        this.zzTq = true;
    }

    @Deprecated
    public final void zza(zzi<T>.zzc<?> zzcVar) {
        synchronized (this.zzTt) {
            this.zzTt.add(zzcVar);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2, zzcVar));
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void zza(zzo zzoVar) {
        try {
            this.zzTp.zza(new zzd(this), new ValidateAccountRequest(zzoVar, (Scope[]) this.zzPP.toArray(new Scope[this.zzPP.size()]), this.mContext.getPackageName(), zzlY()));
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "service died");
            zzaO(1);
        } catch (RemoteException e3) {
            Log.w("GmsClient", "Remote exception occurred", e3);
        }
    }

    @Override // com.google.android.gms.common.api.Api.zza
    public void zza(zzo zzoVar, Set<Scope> set) {
        try {
            GetServiceRequest getServiceRequestZzf = new GetServiceRequest(this.zzTw).zzbL(this.mContext.getPackageName()).zzf(zzka());
            if (set != null) {
                getServiceRequestZzf.zza((Scope[]) set.toArray(new Scope[set.size()]));
            }
            if (zzjM()) {
                getServiceRequestZzf.zzb(zzlE()).zzc(zzoVar);
            } else if (zzlZ()) {
                getServiceRequestZzf.zzb(this.zzJc);
            }
            this.zzTp.zza(new zzd(this), getServiceRequestZzf);
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "service died");
            zzaO(1);
        } catch (RemoteException e3) {
            Log.w("GmsClient", "Remote exception occurred", e3);
        }
    }

    public void zzaO(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, Integer.valueOf(i)));
    }

    protected void zzb(int i, Bundle bundle) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, new zzh(i, bundle)));
    }

    protected abstract String zzeq();

    protected abstract String zzer();

    @Override // com.google.android.gms.common.api.Api.zza
    public boolean zzjM() {
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzj.zza
    public Bundle zzjZ() {
        return null;
    }

    protected Bundle zzka() {
        return new Bundle();
    }

    public final Account zzlE() {
        return this.zzJc != null ? this.zzJc : new Account("<<default account>>", "com.google");
    }

    protected String zzlR() {
        return this.zzQg.zzlK();
    }

    protected final com.google.android.gms.common.internal.zze zzlU() {
        return this.zzQg;
    }

    protected void zzlV() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, new zzg()));
    }

    protected final void zzlW() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzlX() throws DeadObjectException {
        T t;
        synchronized (this.zzoe) {
            if (this.zzTv == 4) {
                throw new DeadObjectException();
            }
            zzlW();
            zzv.zza(this.zzTs != null, "Client is connected but service is null");
            t = this.zzTs;
        }
        return t;
    }

    protected Bundle zzlY() {
        return null;
    }

    public boolean zzlZ() {
        return false;
    }
}
