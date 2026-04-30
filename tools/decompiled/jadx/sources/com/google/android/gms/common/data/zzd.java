package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class zzd<T extends SafeParcelable> extends AbstractDataBuffer<T> {
    private static final String[] zzRy = {"data"};
    private final Parcelable.Creator<T> zzRz;

    public zzd(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.zzRz = creator;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: zzaC, reason: merged with bridge method [inline-methods] */
    public T get(int i) {
        byte[] bArrZzg = this.zzPy.zzg("data", i, this.zzPy.zzaD(i));
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrZzg, 0, bArrZzg.length);
        parcelObtain.setDataPosition(0);
        T tCreateFromParcel = this.zzRz.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return tCreateFromParcel;
    }
}
