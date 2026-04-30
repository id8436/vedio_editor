package c.a.a.a.a.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes.dex */
final class i implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f159a;

    public i(IBinder iBinder) {
        this.f159a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f159a;
    }

    public String a() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        String string = null;
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f159a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Exception e2) {
            c.a.a.a.f.h().a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
        return string;
    }

    public boolean b() throws RemoteException {
        boolean z;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.f159a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                z = parcelObtain2.readInt() != 0;
            } catch (Exception e2) {
                c.a.a.a.f.h().a("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
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
