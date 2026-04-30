package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes3.dex */
public class zzb implements Parcelable.Creator<WebImage> {
    static void zza(WebImage webImage, Parcel parcel, int i) {
        int iZzM = com.google.android.gms.common.internal.safeparcel.zzb.zzM(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, webImage.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) webImage.getUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, webImage.getWidth());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, webImage.getHeight());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, iZzM);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzD, reason: merged with bridge method [inline-methods] */
    public WebImage createFromParcel(Parcel parcel) {
        int iZzg;
        int iZzg2;
        Uri uri;
        int iZzg3;
        int i = 0;
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        Uri uri2 = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)) {
                case 1:
                    int i4 = i;
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    iZzg = i4;
                    break;
                case 2:
                    iZzg3 = i3;
                    int i5 = i2;
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzK, Uri.CREATOR);
                    iZzg = i;
                    iZzg2 = i5;
                    break;
                case 3:
                    uri = uri2;
                    iZzg3 = i3;
                    int i6 = i;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    iZzg = i6;
                    break;
                case 4:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzK);
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzK);
                    iZzg = i;
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = i3;
                    break;
            }
            i3 = iZzg3;
            uri2 = uri;
            i2 = iZzg2;
            i = iZzg;
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        return new WebImage(i3, uri2, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaJ, reason: merged with bridge method [inline-methods] */
    public WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
