package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;

/* JADX INFO: loaded from: classes3.dex */
public interface zzs extends IInterface {

    public abstract class zza extends Binder implements zzs {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.zzs$zza$zza, reason: collision with other inner class name */
        class C0077zza implements zzs {
            private IBinder zzlW;

            C0077zza(IBinder iBinder) {
                this.zzlW = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzlW;
            }

            @Override // com.google.android.gms.common.internal.zzs
            public com.google.android.gms.dynamic.zzd zza(com.google.android.gms.dynamic.zzd zzdVar, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                    parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    this.zzlW.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zzd.zza.zzat(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zzs zzV(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzs)) ? new C0077zza(iBinder) : (zzs) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    com.google.android.gms.dynamic.zzd zzdVarZza = zza(zzd.zza.zzat(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzdVarZza != null ? zzdVarZza.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    com.google.android.gms.dynamic.zzd zza(com.google.android.gms.dynamic.zzd zzdVar, int i, int i2) throws RemoteException;
}
