package com.facebook.imagepipeline.d;

import android.graphics.Bitmap;
import java.util.Locale;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: ImageDecodeOptions.java */
/* JADX INFO: loaded from: classes2.dex */
@Immutable
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f2462g = b().g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bitmap.Config f2468f;

    public a(b bVar) {
        this.f2463a = bVar.a();
        this.f2464b = bVar.b();
        this.f2465c = bVar.c();
        this.f2466d = bVar.d();
        this.f2467e = bVar.e();
        this.f2468f = bVar.f();
    }

    public static a a() {
        return f2462g;
    }

    public static b b() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2464b == aVar.f2464b && this.f2465c == aVar.f2465c && this.f2466d == aVar.f2466d && this.f2467e == aVar.f2467e && this.f2468f == aVar.f2468f;
    }

    public int hashCode() {
        return (((((this.f2466d ? 1 : 0) + (((this.f2465c ? 1 : 0) + (((this.f2464b ? 1 : 0) + (this.f2463a * 31)) * 31)) * 31)) * 31) + (this.f2467e ? 1 : 0)) * 31) + this.f2468f.ordinal();
    }

    public String toString() {
        return String.format((Locale) null, "%d-%b-%b-%b-%b-%s", Integer.valueOf(this.f2463a), Boolean.valueOf(this.f2464b), Boolean.valueOf(this.f2465c), Boolean.valueOf(this.f2466d), Boolean.valueOf(this.f2467e), this.f2468f.name());
    }
}
