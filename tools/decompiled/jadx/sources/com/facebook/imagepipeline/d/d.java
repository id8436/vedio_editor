package com.facebook.imagepipeline.d;

import java.util.Locale;

/* JADX INFO: compiled from: ResizeOptions.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2482d;

    public int hashCode() {
        return com.facebook.d.m.b.a(this.f2479a, this.f2480b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f2479a == dVar.f2479a && this.f2480b == dVar.f2480b;
    }

    public String toString() {
        return String.format((Locale) null, "%dx%d", Integer.valueOf(this.f2479a), Integer.valueOf(this.f2480b));
    }
}
