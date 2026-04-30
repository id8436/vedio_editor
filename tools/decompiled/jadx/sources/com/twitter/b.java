package com.twitter;

import com.behance.sdk.util.BehanceSDKConstants;

/* JADX INFO: compiled from: Extractor.java */
/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f3792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f3793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final String f3794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final String f3795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final c f3796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f3797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f3798g;

    public b(int i, int i2, String str, String str2, c cVar) {
        this.f3797f = null;
        this.f3798g = null;
        this.f3792a = i;
        this.f3793b = i2;
        this.f3794c = str;
        this.f3795d = str2;
        this.f3796e = cVar;
    }

    public b(int i, int i2, String str, c cVar) {
        this(i, i2, str, null, cVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3796e.equals(bVar.f3796e) && this.f3792a == bVar.f3792a && this.f3793b == bVar.f3793b && this.f3794c.equals(bVar.f3794c);
    }

    public int hashCode() {
        return this.f3796e.hashCode() + this.f3794c.hashCode() + this.f3792a + this.f3793b;
    }

    public String toString() {
        return this.f3794c + "(" + this.f3796e + ") [" + this.f3792a + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + this.f3793b + "]";
    }
}
