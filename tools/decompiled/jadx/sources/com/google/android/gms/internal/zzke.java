package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.zzkd;

/* JADX INFO: loaded from: classes3.dex */
public interface zzke extends IInterface {

    public abstract class zza extends Binder implements zzke {

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzke$zza$zza, reason: collision with other inner class name */
        class C0086zza implements zzke {
            private IBinder zzlW;

            C0086zza(IBinder iBinder) {
                this.zzlW = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzlW;
            }

            @Override // com.google.android.gms.internal.zzke
            public void zza(zzkd zzkdVar, UserAddressRequest userAddressRequest, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
                    parcelObtain.writeStrongBinder(zzkdVar != null ? zzkdVar.asBinder() : null);
                    if (userAddressRequest != null) {
                        parcelObtain.writeInt(1);
                        userAddressRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzlW.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zzke zzbc(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzke)) ? new C0086zza(iBinder) : (zzke) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
                    zza(zzkd.zza.zzbb(parcel.readStrongBinder()), parcel.readInt() != 0 ? UserAddressRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzkd zzkdVar, UserAddressRequest userAddressRequest, Bundle bundle) throws RemoteException;
}
