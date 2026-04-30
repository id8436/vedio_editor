package com.facebook.imagepipeline.l;

import android.net.Uri;
import com.google.gdata.data.codesearch.Package;
import java.io.File;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: ImageRequest.java */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f2842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f2843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final f f2844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f2845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f2846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f2847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.d.a f2848g;

    @Nullable
    private final com.facebook.imagepipeline.d.d h;
    private final com.facebook.imagepipeline.d.e i;
    private final com.facebook.imagepipeline.d.c j;
    private final c k;
    private final boolean l;
    private final h m;

    @Nullable
    private final com.facebook.imagepipeline.i.b n;

    protected a(d dVar) {
        this.f2842a = dVar.g();
        this.f2843b = dVar.a();
        this.f2844c = dVar.b();
        this.f2846e = dVar.h();
        this.f2847f = dVar.i();
        this.f2848g = dVar.f();
        this.h = dVar.d();
        this.i = dVar.e() == null ? com.facebook.imagepipeline.d.e.a() : dVar.e();
        this.j = dVar.k();
        this.k = dVar.c();
        this.l = dVar.j();
        this.m = dVar.l();
        this.n = dVar.m();
    }

    public b a() {
        return this.f2842a;
    }

    public Uri b() {
        return this.f2843b;
    }

    @Nullable
    public f c() {
        return this.f2844c;
    }

    public int d() {
        if (this.h != null) {
            return this.h.f2479a;
        }
        return 2048;
    }

    public int e() {
        if (this.h != null) {
            return this.h.f2480b;
        }
        return 2048;
    }

    @Nullable
    public com.facebook.imagepipeline.d.d f() {
        return this.h;
    }

    public com.facebook.imagepipeline.d.e g() {
        return this.i;
    }

    public com.facebook.imagepipeline.d.a h() {
        return this.f2848g;
    }

    public boolean i() {
        return this.f2846e;
    }

    public boolean j() {
        return this.f2847f;
    }

    public com.facebook.imagepipeline.d.c k() {
        return this.j;
    }

    public c l() {
        return this.k;
    }

    public boolean m() {
        return this.l;
    }

    public synchronized File n() {
        if (this.f2845d == null) {
            this.f2845d = new File(this.f2843b.getPath());
        }
        return this.f2845d;
    }

    @Nullable
    public h o() {
        return this.m;
    }

    @Nullable
    public com.facebook.imagepipeline.i.b p() {
        return this.n;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return com.facebook.d.d.g.a(this.f2843b, aVar.f2843b) && com.facebook.d.d.g.a(this.f2842a, aVar.f2842a) && com.facebook.d.d.g.a(this.f2844c, aVar.f2844c) && com.facebook.d.d.g.a(this.f2845d, aVar.f2845d);
    }

    public int hashCode() {
        return com.facebook.d.d.g.a(this.f2842a, this.f2843b, this.f2844c, this.f2845d);
    }

    public String toString() {
        return com.facebook.d.d.g.a(this).a(Package.ATTRIBUTE_URI, this.f2843b).a("cacheChoice", this.f2842a).a("decodeOptions", this.f2848g).a("postprocessor", this.m).a("priority", this.j).a("resizeOptions", this.h).a("rotationOptions", this.i).a("mediaVariations", this.f2844c).toString();
    }
}
