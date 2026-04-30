package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;

/* JADX INFO: loaded from: classes3.dex */
public interface zzc extends IInterface {

    public abstract class zza extends Binder implements zzc {

        /* JADX INFO: renamed from: com.google.android.gms.dynamic.zzc$zza$zza, reason: collision with other inner class name */
        class C0080zza implements zzc {
            private IBinder zzlW;

            C0080zza(IBinder iBinder) {
                this.zzlW = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzlW;
            }

            @Override // com.google.android.gms.dynamic.zzc
            public Bundle getArguments() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public int getId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean getRetainInstance() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public String getTag() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public int getTargetRequestCode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean getUserVisibleHint() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public zzd getView() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zzd.zza.zzat(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isAdded() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isDetached() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isHidden() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isInLayout() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isRemoving() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isResumed() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public boolean isVisible() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void setHasOptionsMenu(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzlW.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void setMenuVisibility(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzlW.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void setRetainInstance(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzlW.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void setUserVisibleHint(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzlW.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void startActivity(Intent intent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzlW.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void startActivityForResult(Intent intent, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    this.zzlW.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void zze(zzd zzdVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    this.zzlW.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public void zzf(zzd zzdVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    this.zzlW.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public zzd zzov() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zzd.zza.zzat(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public zzc zzow() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zza.zzas(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public zzd zzox() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zzd.zza.zzat(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.dynamic.zzc
            public zzc zzoy() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
                    this.zzlW.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zza.zzas(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.dynamic.IFragmentWrapper");
        }

        public static zzc zzas(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzc)) ? new C0080zza(iBinder) : (zzc) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzd zzdVarZzov = zzov();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzdVarZzov != null ? zzdVarZzov.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    Bundle arguments = getArguments();
                    parcel2.writeNoException();
                    if (arguments == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    arguments.writeToParcel(parcel2, 1);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    int id = getId();
                    parcel2.writeNoException();
                    parcel2.writeInt(id);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzc zzcVarZzow = zzow();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzcVarZzow != null ? zzcVarZzow.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzd zzdVarZzox = zzox();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzdVarZzox != null ? zzdVarZzox.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean retainInstance = getRetainInstance();
                    parcel2.writeNoException();
                    parcel2.writeInt(retainInstance ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzc zzcVarZzoy = zzoy();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzcVarZzoy != null ? zzcVarZzoy.asBinder() : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    int targetRequestCode = getTargetRequestCode();
                    parcel2.writeNoException();
                    parcel2.writeInt(targetRequestCode);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean userVisibleHint = getUserVisibleHint();
                    parcel2.writeNoException();
                    parcel2.writeInt(userVisibleHint ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzd view = getView();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(view != null ? view.asBinder() : null);
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsAdded = isAdded();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAdded ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsDetached = isDetached();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsDetached ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsHidden = isHidden();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsHidden ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsInLayout = isInLayout();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInLayout ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsRemoving = isRemoving();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRemoving ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsResumed = isResumed();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsResumed ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    boolean zIsVisible = isVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVisible ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zze(zzd.zza.zzat(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    setHasOptionsMenu(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    setMenuVisibility(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    setRetainInstance(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    setUserVisibleHint(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    startActivity(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    startActivityForResult(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                    zzf(zzd.zza.zzat(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.dynamic.IFragmentWrapper");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle getArguments() throws RemoteException;

    int getId() throws RemoteException;

    boolean getRetainInstance() throws RemoteException;

    String getTag() throws RemoteException;

    int getTargetRequestCode() throws RemoteException;

    boolean getUserVisibleHint() throws RemoteException;

    zzd getView() throws RemoteException;

    boolean isAdded() throws RemoteException;

    boolean isDetached() throws RemoteException;

    boolean isHidden() throws RemoteException;

    boolean isInLayout() throws RemoteException;

    boolean isRemoving() throws RemoteException;

    boolean isResumed() throws RemoteException;

    boolean isVisible() throws RemoteException;

    void setHasOptionsMenu(boolean z) throws RemoteException;

    void setMenuVisibility(boolean z) throws RemoteException;

    void setRetainInstance(boolean z) throws RemoteException;

    void setUserVisibleHint(boolean z) throws RemoteException;

    void startActivity(Intent intent) throws RemoteException;

    void startActivityForResult(Intent intent, int i) throws RemoteException;

    void zze(zzd zzdVar) throws RemoteException;

    void zzf(zzd zzdVar) throws RemoteException;

    zzd zzov() throws RemoteException;

    zzc zzow() throws RemoteException;

    zzd zzox() throws RemoteException;

    zzc zzoy() throws RemoteException;
}
