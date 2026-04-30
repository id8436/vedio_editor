package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class TwitterAuthConfig implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new y();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3817b;

    /* synthetic */ TwitterAuthConfig(Parcel parcel, y yVar) {
        this(parcel);
    }

    public TwitterAuthConfig(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
        }
        this.f3816a = a(str);
        this.f3817b = a(str2);
    }

    private TwitterAuthConfig(Parcel parcel) {
        this.f3816a = parcel.readString();
        this.f3817b = parcel.readString();
    }

    public String a() {
        return this.f3816a;
    }

    public String b() {
        return this.f3817b;
    }

    public int c() {
        return 140;
    }

    static String a(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3816a);
        parcel.writeString(this.f3817b);
    }
}
