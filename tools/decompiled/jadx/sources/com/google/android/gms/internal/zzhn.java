package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface zzhn extends IInterface {

    public abstract class zza extends Binder implements zzhn {

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzhn$zza$zza, reason: collision with other inner class name */
        class C0083zza implements zzhn {
            private IBinder zzlW;

            C0083zza(IBinder iBinder) {
                this.zzlW = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzlW;
            }

            @Override // com.google.android.gms.internal.zzhn
            public void zzaW(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzlW.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.common.internal.service.ICommonCallbacks");
        }

        public static zzhn zzY(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzhn)) ? new C0083zza(iBinder) : (zzhn) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
                    zzaW(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.service.ICommonCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzaW(int i) throws RemoteException;
}
