package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzke;

/* JADX INFO: loaded from: classes3.dex */
public class zzkc extends zzi<zzke> {
    private final int mTheme;
    private final String zzKw;
    private zza zzapn;
    private Activity zzpf;

    public final class zza extends zzkd.zza {
        private final int zzTc;
        private Activity zzpf;

        public zza(int i, Activity activity) {
            this.zzTc = i;
            this.zzpf = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.zzpf = activity;
        }

        @Override // com.google.android.gms.internal.zzkd
        public void zzi(int i, Bundle bundle) {
            if (i == 1) {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                PendingIntent pendingIntentCreatePendingResult = this.zzpf.createPendingResult(this.zzTc, intent, 1073741824);
                if (pendingIntentCreatePendingResult == null) {
                    return;
                }
                try {
                    pendingIntentCreatePendingResult.send(1);
                    return;
                } catch (PendingIntent.CanceledException e2) {
                    Log.w("AddressClientImpl", "Exception settng pending result", e2);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT") : null);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(this.zzpf, this.zzTc);
                    return;
                } catch (IntentSender.SendIntentException e3) {
                    Log.w("AddressClientImpl", "Exception starting pending intent", e3);
                    return;
                }
            }
            try {
                PendingIntent pendingIntentCreatePendingResult2 = this.zzpf.createPendingResult(this.zzTc, new Intent(), 1073741824);
                if (pendingIntentCreatePendingResult2 != null) {
                    pendingIntentCreatePendingResult2.send(1);
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.w("AddressClientImpl", "Exception setting pending result", e4);
            }
        }
    }

    public zzkc(Activity activity, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, int i) {
        super(activity, looper, 12, connectionCallbacks, onConnectionFailedListener);
        this.zzKw = str;
        this.zzpf = activity;
        this.mTheme = i;
    }

    @Override // com.google.android.gms.common.internal.zzi, com.google.android.gms.common.api.Api.zza
    public void disconnect() {
        super.disconnect();
        if (this.zzapn != null) {
            this.zzapn.setActivity(null);
            this.zzapn = null;
        }
    }

    public void zza(UserAddressRequest userAddressRequest, int i) {
        zzsx();
        this.zzapn = new zza(i, this.zzpf);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(this.zzKw)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.zzKw, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            zzsw().zza(this.zzapn, userAddressRequest, bundle);
        } catch (RemoteException e2) {
            Log.e("AddressClientImpl", "Exception requesting user address", e2);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(AddressConstants.Extras.EXTRA_ERROR_CODE, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES);
            this.zzapn.zzi(1, bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzi
    /* JADX INFO: renamed from: zzba, reason: merged with bridge method [inline-methods] */
    public zzke zzD(IBinder iBinder) {
        return zzke.zza.zzbc(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzeq() {
        return "com.google.android.gms.identity.service.BIND";
    }

    @Override // com.google.android.gms.common.internal.zzi
    protected String zzer() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }

    protected zzke zzsw() throws DeadObjectException {
        return (zzke) super.zzlX();
    }

    protected void zzsx() {
        super.zzlW();
    }
}
