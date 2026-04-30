package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class TwitterAuthToken extends a implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthToken> CREATOR = new aa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("token")
    public final String f3818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("secret")
    public final String f3819c;

    /* synthetic */ TwitterAuthToken(Parcel parcel, aa aaVar) {
        this(parcel);
    }

    public TwitterAuthToken(String str, String str2) {
        this.f3818b = str;
        this.f3819c = str2;
    }

    private TwitterAuthToken(Parcel parcel) {
        this.f3818b = parcel.readString();
        this.f3819c = parcel.readString();
    }

    public String toString() {
        return "token=" + this.f3818b + ",secret=" + this.f3819c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3818b);
        parcel.writeString(this.f3819c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TwitterAuthToken)) {
            return false;
        }
        TwitterAuthToken twitterAuthToken = (TwitterAuthToken) obj;
        if (this.f3819c == null ? twitterAuthToken.f3819c != null : !this.f3819c.equals(twitterAuthToken.f3819c)) {
            return false;
        }
        if (this.f3818b != null) {
            if (this.f3818b.equals(twitterAuthToken.f3818b)) {
                return true;
            }
        } else if (twitterAuthToken.f3818b == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f3818b != null ? this.f3818b.hashCode() : 0) * 31) + (this.f3819c != null ? this.f3819c.hashCode() : 0);
    }
}
