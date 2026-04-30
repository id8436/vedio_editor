package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: compiled from: AuthToken.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("created_at")
    protected final long f3820a;

    public a() {
        this(System.currentTimeMillis());
    }

    protected a(long j) {
        this.f3820a = j;
    }
}
