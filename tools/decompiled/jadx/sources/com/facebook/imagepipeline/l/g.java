package com.facebook.imagepipeline.l;

import android.net.Uri;
import java.util.Locale;

/* JADX INFO: compiled from: MediaVariations.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f2868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2870c;

    public g(Uri uri, int i, int i2) {
        this.f2868a = uri;
        this.f2869b = i;
        this.f2870c = i2;
    }

    public Uri a() {
        return this.f2868a;
    }

    public int b() {
        return this.f2869b;
    }

    public int c() {
        return this.f2870c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return com.facebook.d.d.g.a(this.f2868a, gVar.f2868a) && this.f2869b == gVar.f2869b && this.f2870c == gVar.f2870c;
    }

    public int hashCode() {
        return (((this.f2868a.hashCode() * 31) + this.f2869b) * 31) + this.f2870c;
    }

    public String toString() {
        return String.format((Locale) null, "%dx%d %s", Integer.valueOf(this.f2869b), Integer.valueOf(this.f2870c), this.f2868a);
    }
}
