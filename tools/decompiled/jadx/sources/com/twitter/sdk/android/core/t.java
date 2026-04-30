package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.a;

/* JADX INFO: compiled from: Session.java */
/* JADX INFO: loaded from: classes.dex */
public class t<T extends a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("auth_token")
    private final T f4118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("id")
    private final long f4119b;

    public t(T t, long j) {
        if (t == null) {
            throw new IllegalArgumentException("AuthToken must not be null.");
        }
        this.f4118a = t;
        this.f4119b = j;
    }

    public T a() {
        return this.f4118a;
    }

    public long b() {
        return this.f4119b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f4119b != tVar.f4119b) {
            return false;
        }
        return this.f4118a != null ? this.f4118a.equals(tVar.f4118a) : tVar.f4118a == null;
    }

    public int hashCode() {
        return ((this.f4118a != null ? this.f4118a.hashCode() : 0) * 31) + ((int) (this.f4119b ^ (this.f4119b >>> 32)));
    }
}
