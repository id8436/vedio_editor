package com.twitter.sdk.android.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
final class l implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f3941a;

    private l(IBinder iBinder) {
        this.f3941a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f3941a;
    }

    public String a() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        String string = null;
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f3941a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Exception e2) {
            com.twitter.sdk.android.core.v.h().a("Twitter", "Could not get parcel from Google Play Service to capture AdvertisingId");
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() throws RemoteException {
        boolean z;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.f3941a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                z = parcelObtain2.readInt() != 0;
            } catch (Exception e2) {
                com.twitter.sdk.android.core.v.h().a("Twitter", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
                parcelObtain2.recycle();
                parcelObtain.recycle();
                z = false;
            }
            return z;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
