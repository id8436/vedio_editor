package com.adobe.creativesdk.foundation.adobeinternal.auth.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthLoginCallback extends IInterface {
    void onError(int i) throws RemoteException;

    void onSuccess(AdobeAuthServiceUserProfile adobeAuthServiceUserProfile) throws RemoteException;

    public abstract class Stub extends Binder implements IAdobeAuthLoginCallback {
        private static final String DESCRIPTOR = "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLoginCallback";
        static final int TRANSACTION_onError = 2;
        static final int TRANSACTION_onSuccess = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAdobeAuthLoginCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAdobeAuthLoginCallback)) {
                return (IAdobeAuthLoginCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            AdobeAuthServiceUserProfile adobeAuthServiceUserProfileCreateFromParcel;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        adobeAuthServiceUserProfileCreateFromParcel = AdobeAuthServiceUserProfile.CREATOR.createFromParcel(parcel);
                    } else {
                        adobeAuthServiceUserProfileCreateFromParcel = null;
                    }
                    onSuccess(adobeAuthServiceUserProfileCreateFromParcel);
                    parcel2.writeNoException();
                    if (adobeAuthServiceUserProfileCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        adobeAuthServiceUserProfileCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onError(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        class Proxy implements IAdobeAuthLoginCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLoginCallback
            public void onSuccess(AdobeAuthServiceUserProfile adobeAuthServiceUserProfile) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (adobeAuthServiceUserProfile != null) {
                        parcelObtain.writeInt(1);
                        adobeAuthServiceUserProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        adobeAuthServiceUserProfile.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLoginCallback
            public void onError(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
