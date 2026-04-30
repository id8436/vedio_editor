package com.facebook.a;

import com.facebook.AccessToken;
import com.facebook.i.as;
import com.facebook.w;
import java.io.Serializable;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1709b;

    h(AccessToken accessToken) {
        this(accessToken.b(), w.i());
    }

    h(String str, String str2) {
        this.f1708a = as.a(str) ? null : str;
        this.f1709b = str2;
    }

    String a() {
        return this.f1708a;
    }

    String b() {
        return this.f1709b;
    }

    public int hashCode() {
        return (this.f1708a == null ? 0 : this.f1708a.hashCode()) ^ (this.f1709b != null ? this.f1709b.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return as.a(hVar.f1708a, this.f1708a) && as.a(hVar.f1709b, this.f1709b);
    }
}
