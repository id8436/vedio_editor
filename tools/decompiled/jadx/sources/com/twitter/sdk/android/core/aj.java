package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: compiled from: TwitterSession.java */
/* JADX INFO: loaded from: classes.dex */
public class aj extends t<TwitterAuthToken> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("user_name")
    private final String f3866a;

    public aj(TwitterAuthToken twitterAuthToken, long j, String str) {
        super(twitterAuthToken, j);
        this.f3866a = str;
    }

    public String c() {
        return this.f3866a;
    }

    @Override // com.twitter.sdk.android.core.t
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
        aj ajVar = (aj) obj;
        return this.f3866a != null ? this.f3866a.equals(ajVar.f3866a) : ajVar.f3866a == null;
    }

    @Override // com.twitter.sdk.android.core.t
    public int hashCode() {
        return (this.f3866a != null ? this.f3866a.hashCode() : 0) + (super.hashCode() * 31);
    }
}
