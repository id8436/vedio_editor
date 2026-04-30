package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzhn;

/* JADX INFO: loaded from: classes3.dex */
public interface zzho extends IInterface {

    public abstract class zza extends Binder implements zzho {

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzho$zza$zza, reason: collision with other inner class name */
        class C0084zza implements zzho {
            private IBinder zzlW;

            C0084zza(IBinder iBinder) {
                this.zzlW = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzlW;
            }

            @Override // com.google.android.gms.internal.zzho
            public void zza(zzhn zzhnVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
                    parcelObtain.writeStrongBinder(zzhnVar != null ? zzhnVar.asBinder() : null);
                    this.zzlW.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static zzho zzZ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzho)) ? new C0084zza(iBinder) : (zzho) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonService");
                    zza(zzhn.zza.zzY(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.service.ICommonService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzhn zzhnVar) throws RemoteException;
}
