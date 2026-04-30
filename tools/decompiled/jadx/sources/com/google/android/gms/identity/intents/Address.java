package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v7.widget.ActivityChooserView;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.internal.zzkc;

/* JADX INFO: loaded from: classes3.dex */
public final class Address {
    static final Api.zzc<zzkc> zzKh = new Api.zzc<>();
    private static final Api.zzb<zzkc, AddressOptions> zzKi = new Api.zzb<zzkc, AddressOptions>() { // from class: com.google.android.gms.identity.intents.Address.1
        @Override // com.google.android.gms.common.api.Api.zzb
        public int getPriority() {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }

        @Override // com.google.android.gms.common.api.Api.zzb
        public zzkc zza(Context context, Looper looper, zze zzeVar, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzv.zzb(context instanceof Activity, "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzkc((Activity) context, looper, connectionCallbacks, onConnectionFailedListener, zzeVar.getAccountName(), addressOptions.theme);
        }
    };
    public static final Api<AddressOptions> API = new Api<>("Address.API", zzKi, zzKh, new Scope[0]);

    public final class AddressOptions implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    abstract class zza extends zza.AbstractC0069zza<Status, zzkc> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.zzKh, googleApiClient);
        }

        @Override // com.google.android.gms.common.api.AbstractPendingResult
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status createFailedResult(Status status) {
            return status;
        }
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, final UserAddressRequest userAddressRequest, final int i) {
        googleApiClient.zza(new zza(googleApiClient) { // from class: com.google.android.gms.identity.intents.Address.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.common.api.zza.AbstractC0069zza
            public void zza(zzkc zzkcVar) throws RemoteException {
                zzkcVar.zza(userAddressRequest, i);
                setResult(Status.zzQU);
            }
        });
    }
}
