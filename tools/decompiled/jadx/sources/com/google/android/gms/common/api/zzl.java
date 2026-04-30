package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzv;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes3.dex */
public class zzl extends Fragment implements DialogInterface.OnCancelListener {
    private boolean mStarted;
    private boolean zzRa;
    private ConnectionResult zzRc;
    private int zzRb = -1;
    private final Handler zzRd = new Handler(Looper.getMainLooper());
    private final SparseArray<zza> zzRe = new SparseArray<>();

    class zza implements GoogleApiClient.OnConnectionFailedListener {
        public final int zzRf;
        public final GoogleApiClient zzRg;
        public final GoogleApiClient.OnConnectionFailedListener zzRh;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.zzRf = i;
            this.zzRg = googleApiClient;
            this.zzRh = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append("#").print(this.zzRf);
            printWriter.append(" ");
            this.zzRg.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzl.this.zzRd.post(zzl.this.new zzb(this.zzRf, connectionResult));
        }

        public void zzlh() {
            this.zzRg.unregisterConnectionFailedListener(this);
            this.zzRg.disconnect();
        }
    }

    class zzb implements Runnable {
        private final int zzRj;
        private final ConnectionResult zzRk;

        public zzb(int i, ConnectionResult connectionResult) {
            this.zzRj = i;
            this.zzRk = connectionResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!zzl.this.mStarted || zzl.this.zzRa) {
                return;
            }
            zzl.this.zzRa = true;
            zzl.this.zzRb = this.zzRj;
            zzl.this.zzRc = this.zzRk;
            if (this.zzRk.hasResolution()) {
                try {
                    this.zzRk.startResolutionForResult(zzl.this.getActivity(), ((zzl.this.getActivity().getSupportFragmentManager().getFragments().indexOf(zzl.this) + 1) << 16) + 1);
                    return;
                } catch (IntentSender.SendIntentException e2) {
                    zzl.this.zzlg();
                    return;
                }
            }
            if (GooglePlayServicesUtil.isUserRecoverableError(this.zzRk.getErrorCode())) {
                GooglePlayServicesUtil.showErrorDialogFragment(this.zzRk.getErrorCode(), zzl.this.getActivity(), zzl.this, 2, zzl.this);
            } else {
                zzl.this.zza(this.zzRj, this.zzRk);
            }
        }
    }

    public static zzl zza(FragmentActivity fragmentActivity) {
        zzv.zzbI("Must be called from main thread of process");
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        try {
            zzl zzlVar = (zzl) supportFragmentManager.findFragmentByTag("GmsSupportLifecycleFragment");
            if (zzlVar != null && !zzlVar.isRemoving()) {
                return zzlVar;
            }
            zzl zzlVar2 = new zzl();
            supportFragmentManager.beginTransaction().add(zzlVar2, "GmsSupportLifecycleFragment").commit();
            supportFragmentManager.executePendingTransactions();
            return zzlVar2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        zza zzaVar = this.zzRe.get(i);
        if (zzaVar != null) {
            zzax(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.zzRh;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
        zzlg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzlg() {
        int i = 0;
        this.zzRa = false;
        this.zzRb = -1;
        this.zzRc = null;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzRe.size()) {
                return;
            }
            this.zzRe.valueAt(i2).zzRg.connect();
            i = i2 + 1;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzRe.size()) {
                return;
            }
            this.zzRe.valueAt(i2).dump(str, fileDescriptor, printWriter, strArr);
            i = i2 + 1;
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
        this.mStarted = true;
        if (this.zzRa) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzRe.size()) {
                return;
            }
            this.zzRe.valueAt(i2).zzRg.connect();
            i = i2 + 1;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        int i = 0;
        super.onStop();
        this.mStarted = false;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzRe.size()) {
                return;
            }
            this.zzRe.valueAt(i2).zzRg.disconnect();
            i = i2 + 1;
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzv.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        zzv.zza(this.zzRe.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.zzRe.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || this.zzRa) {
            return;
        }
        googleApiClient.connect();
    }

    public void zzax(int i) {
        zza zzaVar = this.zzRe.get(i);
        this.zzRe.remove(i);
        if (zzaVar != null) {
            zzaVar.zzlh();
        }
    }
}
