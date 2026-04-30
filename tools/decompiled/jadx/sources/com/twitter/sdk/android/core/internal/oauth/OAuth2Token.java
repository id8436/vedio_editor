package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class OAuth2Token extends com.twitter.sdk.android.core.a implements Parcelable {
    public static final Parcelable.Creator<OAuth2Token> CREATOR = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("token_type")
    private final String f3946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("access_token")
    private final String f3947c;

    /* synthetic */ OAuth2Token(Parcel parcel, g gVar) {
        this(parcel);
    }

    public OAuth2Token(String str, String str2) {
        this.f3946b = str;
        this.f3947c = str2;
    }

    private OAuth2Token(Parcel parcel) {
        this.f3946b = parcel.readString();
        this.f3947c = parcel.readString();
    }

    public String c() {
        return this.f3946b;
    }

    public String d() {
        return this.f3947c;
    }

    public boolean b() {
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3946b);
        parcel.writeString(this.f3947c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OAuth2Token oAuth2Token = (OAuth2Token) obj;
        if (this.f3947c == null ? oAuth2Token.f3947c != null : !this.f3947c.equals(oAuth2Token.f3947c)) {
            return false;
        }
        if (this.f3946b != null) {
            if (this.f3946b.equals(oAuth2Token.f3946b)) {
                return true;
            }
        } else if (oAuth2Token.f3946b == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f3946b != null ? this.f3946b.hashCode() : 0) * 31) + (this.f3947c != null ? this.f3947c.hashCode() : 0);
    }
}
