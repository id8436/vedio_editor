package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzv;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes3.dex */
public class zzm extends Fragment implements DialogInterface.OnCancelListener, LoaderManager.LoaderCallbacks<ConnectionResult> {
    private boolean zzRa;
    private ConnectionResult zzRc;
    private int zzRb = -1;
    private final Handler zzRd = new Handler(Looper.getMainLooper());
    private final SparseArray<zzb> zzRe = new SparseArray<>();

    class zza extends Loader<ConnectionResult> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        public final GoogleApiClient zzRg;
        private boolean zzRl;
        private ConnectionResult zzRm;

        public zza(Context context, GoogleApiClient googleApiClient) {
            super(context);
            this.zzRg = googleApiClient;
        }

        private void zzh(ConnectionResult connectionResult) {
            this.zzRm = connectionResult;
            if (!isStarted() || isAbandoned()) {
                return;
            }
            deliverResult(connectionResult);
        }

        @Override // android.support.v4.content.Loader
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            this.zzRg.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            this.zzRl = false;
            zzh(ConnectionResult.zzOI);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.zzRl = true;
            zzh(connectionResult);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }

        @Override // android.support.v4.content.Loader
        protected void onReset() {
            this.zzRm = null;
            this.zzRl = false;
            this.zzRg.unregisterConnectionCallbacks(this);
            this.zzRg.unregisterConnectionFailedListener(this);
            this.zzRg.disconnect();
        }

        @Override // android.support.v4.content.Loader
        protected void onStartLoading() {
            super.onStartLoading();
            this.zzRg.registerConnectionCallbacks(this);
            this.zzRg.registerConnectionFailedListener(this);
            if (this.zzRm != null) {
                deliverResult(this.zzRm);
            }
            if (this.zzRg.isConnected() || this.zzRg.isConnecting() || this.zzRl) {
                return;
            }
            this.zzRg.connect();
        }

        @Override // android.support.v4.content.Loader
        protected void onStopLoading() {
            this.zzRg.disconnect();
        }

        public boolean zzli() {
            return this.zzRl;
        }
    }

    class zzb {
        public final GoogleApiClient zzRg;
        public final GoogleApiClient.OnConnectionFailedListener zzRh;

        private zzb(GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.zzRg = googleApiClient;
            this.zzRh = onConnectionFailedListener;
        }
    }

    class zzc implements Runnable {
        private final int zzRj;
        private final ConnectionResult zzRk;

        public zzc(int i, ConnectionResult connectionResult) {
            this.zzRj = i;
            this.zzRk = connectionResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.zzRk.hasResolution()) {
                try {
                    this.zzRk.startResolutionForResult(zzm.this.getActivity(), ((zzm.this.getActivity().getSupportFragmentManager().getFragments().indexOf(zzm.this) + 1) << 16) + 1);
                    return;
                } catch (IntentSender.SendIntentException e2) {
                    zzm.this.zzlg();
                    return;
                }
            }
            if (GooglePlayServicesUtil.isUserRecoverableError(this.zzRk.getErrorCode())) {
                GooglePlayServicesUtil.showErrorDialogFragment(this.zzRk.getErrorCode(), zzm.this.getActivity(), zzm.this, 2, zzm.this);
            } else {
                zzm.this.zza(this.zzRj, this.zzRk);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLoaderLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        zzb zzbVar = this.zzRe.get(i);
        if (zzbVar != null) {
            zzax(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzbVar.zzRh;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
        zzlg();
    }

    public static zzm zzb(FragmentActivity fragmentActivity) {
        zzv.zzbI("Must be called from main thread of process");
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        try {
            zzm zzmVar = (zzm) supportFragmentManager.findFragmentByTag("GmsSupportLoaderLifecycleFragment");
            if (zzmVar != null && !zzmVar.isRemoving()) {
                return zzmVar;
            }
            zzm zzmVar2 = new zzm();
            supportFragmentManager.beginTransaction().add(zzmVar2, "GmsSupportLoaderLifecycleFragment").commit();
            supportFragmentManager.executePendingTransactions();
            return zzmVar2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag GmsSupportLoaderLifecycleFragment is not a SupportLoaderLifecycleFragment", e2);
        }
    }

    private void zzb(int i, ConnectionResult connectionResult) {
        if (this.zzRa) {
            return;
        }
        this.zzRa = true;
        this.zzRb = i;
        this.zzRc = connectionResult;
        this.zzRd.post(new zzc(i, connectionResult));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzlg() {
        this.zzRa = false;
        this.zzRb = -1;
        this.zzRc = null;
        LoaderManager loaderManager = getLoaderManager();
        for (int i = 0; i < this.zzRe.size(); i++) {
            int iKeyAt = this.zzRe.keyAt(i);
            zza zzaVarZzaz = zzaz(iKeyAt);
            if (zzaVarZzaz != null && zzaVarZzaz.zzli()) {
                loaderManager.destroyLoader(iKeyAt);
                loaderManager.initLoader(iKeyAt, null, this);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        switch (i) {
            case 1:
                if (i2 != -1) {
                    z = false;
                }
                break;
            case 2:
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getActivity()) != 0) {
                    z = false;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            zzlg();
        } else {
            zza(this.zzRb, this.zzRc);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzRe.size()) {
                return;
            }
            int iKeyAt = this.zzRe.keyAt(i2);
            zza zzaVarZzaz = zzaz(iKeyAt);
            if (zzaVarZzaz == null || this.zzRe.valueAt(i2).zzRg == zzaVarZzaz.zzRg) {
                getLoaderManager().initLoader(iKeyAt, null, this);
            } else {
                getLoaderManager().restartLoader(iKeyAt, null, this);
            }
            i = i2 + 1;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(this.zzRb, new ConnectionResult(13, null));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzRa = bundle.getBoolean("resolving_error", false);
            this.zzRb = bundle.getInt("failed_client_id", -1);
            if (this.zzRb >= 0) {
                this.zzRc = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
    public Loader<ConnectionResult> onCreateLoader(int i, Bundle bundle) {
        return new zza(getActivity(), this.zzRe.get(i).zzRg);
    }

    @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<ConnectionResult> loader) {
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzRa);
        if (this.zzRb >= 0) {
            bundle.putInt("failed_client_id", this.zzRb);
            bundle.putInt("failed_status", this.zzRc.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzRc.getResolution());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.zzRa) {
            return;
        }
        for (int i = 0; i < this.zzRe.size(); i++) {
            getLoaderManager().initLoader(this.zzRe.keyAt(i), null, this);
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzv.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        zzv.zza(this.zzRe.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.zzRe.put(i, new zzb(googleApiClient, onConnectionFailedListener));
        if (getActivity() != null) {
            LoaderManager.enableDebugLogging(false);
            getLoaderManager().initLoader(i, null, this);
        }
    }

    @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void onLoadFinished(Loader<ConnectionResult> loader, ConnectionResult connectionResult) {
        if (connectionResult.isSuccess()) {
            return;
        }
        zzb(loader.getId(), connectionResult);
    }

    public void zzax(int i) {
        this.zzRe.remove(i);
        getLoaderManager().destroyLoader(i);
    }

    public GoogleApiClient zzay(int i) {
        zza zzaVarZzaz;
        if (getActivity() == null || (zzaVarZzaz = zzaz(i)) == null) {
            return null;
        }
        return zzaVarZzaz.zzRg;
    }

    zza zzaz(int i) {
        try {
            return (zza) getLoaderManager().getLoader(i);
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Unknown loader in SupportLoaderLifecycleFragment", e2);
        }
    }
}
