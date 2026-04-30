package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.sdk.android.core.TwitterAuthToken;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthResponse implements Parcelable {
    public static final Parcelable.Creator<OAuthResponse> CREATOR = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwitterAuthToken f3948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3950c;

    /* synthetic */ OAuthResponse(Parcel parcel, h hVar) {
        this(parcel);
    }

    public OAuthResponse(TwitterAuthToken twitterAuthToken, String str, long j) {
        this.f3948a = twitterAuthToken;
        this.f3949b = str;
        this.f3950c = j;
    }

    private OAuthResponse(Parcel parcel) {
        this.f3948a = (TwitterAuthToken) parcel.readParcelable(TwitterAuthToken.class.getClassLoader());
        this.f3949b = parcel.readString();
        this.f3950c = parcel.readLong();
    }

    public String toString() {
        return "authToken=" + this.f3948a + ",userName=" + this.f3949b + ",userId=" + this.f3950c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3948a, i);
        parcel.writeString(this.f3949b);
        parcel.writeLong(this.f3950c);
    }
}
