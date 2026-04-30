package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.AddressConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class UserAddress implements SafeParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new zzb();
    String name;
    String zzBc;
    String zzapA;
    String zzapo;
    String zzapp;
    String zzapq;
    String zzapr;
    String zzaps;
    String zzapt;
    String zzapu;
    String zzapv;
    String zzapw;
    String zzapx;
    boolean zzapy;
    String zzapz;
    private final int zzzH;

    UserAddress() {
        this.zzzH = 1;
    }

    UserAddress(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.zzzH = i;
        this.name = str;
        this.zzapo = str2;
        this.zzapp = str3;
        this.zzapq = str4;
        this.zzapr = str5;
        this.zzaps = str6;
        this.zzapt = str7;
        this.zzapu = str8;
        this.zzBc = str9;
        this.zzapv = str10;
        this.zzapw = str11;
        this.zzapx = str12;
        this.zzapy = z;
        this.zzapz = str13;
        this.zzapA = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        if (intent == null || !intent.hasExtra(AddressConstants.Extras.EXTRA_ADDRESS)) {
            return null;
        }
        return (UserAddress) intent.getParcelableExtra(AddressConstants.Extras.EXTRA_ADDRESS);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress1() {
        return this.zzapo;
    }

    public String getAddress2() {
        return this.zzapp;
    }

    public String getAddress3() {
        return this.zzapq;
    }

    public String getAddress4() {
        return this.zzapr;
    }

    public String getAddress5() {
        return this.zzaps;
    }

    public String getAdministrativeArea() {
        return this.zzapt;
    }

    public String getCompanyName() {
        return this.zzapz;
    }

    public String getCountryCode() {
        return this.zzBc;
    }

    public String getEmailAddress() {
        return this.zzapA;
    }

    public String getLocality() {
        return this.zzapu;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.zzapx;
    }

    public String getPostalCode() {
        return this.zzapv;
    }

    public String getSortingCode() {
        return this.zzapw;
    }

    public int getVersionCode() {
        return this.zzzH;
    }

    public boolean isPostBox() {
        return this.zzapy;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
