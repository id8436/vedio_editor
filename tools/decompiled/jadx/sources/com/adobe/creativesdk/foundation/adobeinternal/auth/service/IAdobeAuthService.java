package com.adobe.creativesdk.foundation.adobeinternal.auth.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLoginCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback;
import com.adobe.creativesdk.foundation.auth.AdobeAuthErrorCode;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthService extends IInterface {
    AdobeAuthServiceUserProfile getUserProfile() throws RemoteException;

    boolean isUserAuthenticated() throws RemoteException;

    void login(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException;

    void logout(IAdobeAuthLogoutCallback iAdobeAuthLogoutCallback) throws RemoteException;

    void openContinuationAuthEvent(AdobeAuthErrorCode adobeAuthErrorCode, AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException;

    void signUp(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException;

    public abstract class Stub extends Binder implements IAdobeAuthService {
        private static final String DESCRIPTOR = "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService";
        static final int TRANSACTION_getUserProfile = 2;
        static final int TRANSACTION_isUserAuthenticated = 1;
        static final int TRANSACTION_login = 3;
        static final int TRANSACTION_logout = 4;
        static final int TRANSACTION_openContinuationAuthEvent = 6;
        static final int TRANSACTION_signUp = 5;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAdobeAuthService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAdobeAuthService)) {
                return (IAdobeAuthService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUserAuthenticated = isUserAuthenticated();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUserAuthenticated ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    AdobeAuthServiceUserProfile userProfile = getUserProfile();
                    parcel2.writeNoException();
                    if (userProfile != null) {
                        parcel2.writeInt(1);
                        userProfile.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    login(parcel.readInt() != 0 ? AdobeAuthLoginParams.CREATOR.createFromParcel(parcel) : null, IAdobeAuthLoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    logout(IAdobeAuthLogoutCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    signUp(parcel.readInt() != 0 ? AdobeAuthLoginParams.CREATOR.createFromParcel(parcel) : null, IAdobeAuthLoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    AdobeAuthErrorCode adobeAuthErrorCodeCreateFromParcel = parcel.readInt() != 0 ? AdobeAuthErrorCode.CREATOR.createFromParcel(parcel) : null;
                    openContinuationAuthEvent(adobeAuthErrorCodeCreateFromParcel, parcel.readInt() != 0 ? AdobeAuthLoginParams.CREATOR.createFromParcel(parcel) : null, IAdobeAuthLoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (adobeAuthErrorCodeCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        adobeAuthErrorCodeCreateFromParcel.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        class Proxy implements IAdobeAuthService {
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

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public boolean isUserAuthenticated() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public AdobeAuthServiceUserProfile getUserProfile() throws RemoteException {
                AdobeAuthServiceUserProfile adobeAuthServiceUserProfileCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        adobeAuthServiceUserProfileCreateFromParcel = AdobeAuthServiceUserProfile.CREATOR.createFromParcel(parcelObtain2);
                    } else {
                        adobeAuthServiceUserProfileCreateFromParcel = null;
                    }
                    return adobeAuthServiceUserProfileCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public void login(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (adobeAuthLoginParams != null) {
                        parcelObtain.writeInt(1);
                        adobeAuthLoginParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iAdobeAuthLoginCallback != null ? iAdobeAuthLoginCallback.asBinder() : null);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public void logout(IAdobeAuthLogoutCallback iAdobeAuthLogoutCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAdobeAuthLogoutCallback != null ? iAdobeAuthLogoutCallback.asBinder() : null);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public void signUp(AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (adobeAuthLoginParams != null) {
                        parcelObtain.writeInt(1);
                        adobeAuthLoginParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iAdobeAuthLoginCallback != null ? iAdobeAuthLoginCallback.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService
            public void openContinuationAuthEvent(AdobeAuthErrorCode adobeAuthErrorCode, AdobeAuthLoginParams adobeAuthLoginParams, IAdobeAuthLoginCallback iAdobeAuthLoginCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (adobeAuthErrorCode != null) {
                        parcelObtain.writeInt(1);
                        adobeAuthErrorCode.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (adobeAuthLoginParams != null) {
                        parcelObtain.writeInt(1);
                        adobeAuthLoginParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iAdobeAuthLoginCallback != null ? iAdobeAuthLoginCallback.asBinder() : null);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        adobeAuthErrorCode.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
