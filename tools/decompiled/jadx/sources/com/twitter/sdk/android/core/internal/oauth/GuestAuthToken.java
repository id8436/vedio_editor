package com.twitter.sdk.android.core.internal.oauth;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class GuestAuthToken extends OAuth2Token {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("guest_token")
    private final String f3943b;

    public GuestAuthToken(String str, String str2, String str3) {
        super(str, str2);
        this.f3943b = str3;
    }

    public String a() {
        return this.f3943b;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token
    public boolean b() {
        return System.currentTimeMillis() >= this.f3820a + 10800000;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        GuestAuthToken guestAuthToken = (GuestAuthToken) obj;
        if (this.f3943b != null) {
            if (this.f3943b.equals(guestAuthToken.f3943b)) {
                return true;
            }
        } else if (guestAuthToken.f3943b == null) {
            return true;
        }
        return false;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token
    public int hashCode() {
        return (this.f3943b != null ? this.f3943b.hashCode() : 0) + (super.hashCode() * 31);
    }
}
