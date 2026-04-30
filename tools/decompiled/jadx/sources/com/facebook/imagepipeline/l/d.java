package com.facebook.imagepipeline.l;

import android.net.Uri;
import com.facebook.d.d.k;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ImageRequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    @Nullable
    private com.facebook.imagepipeline.i.b l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f2858a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2859b = c.FULL_FETCH;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.d.d f2860c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.d.e f2861d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.facebook.imagepipeline.d.a f2862e = com.facebook.imagepipeline.d.a.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f2863f = b.DEFAULT;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2864g = com.facebook.imagepipeline.e.h.e().a();
    private boolean h = false;
    private com.facebook.imagepipeline.d.c i = com.facebook.imagepipeline.d.c.HIGH;

    @Nullable
    private h j = null;
    private boolean k = true;

    @Nullable
    private f m = null;

    public static d a(Uri uri) {
        return new d().b(uri);
    }

    private d() {
    }

    public d b(Uri uri) {
        k.a(uri);
        this.f2858a = uri;
        return this;
    }

    public Uri a() {
        return this.f2858a;
    }

    @Nullable
    public f b() {
        return this.m;
    }

    public c c() {
        return this.f2859b;
    }

    @Nullable
    public com.facebook.imagepipeline.d.d d() {
        return this.f2860c;
    }

    public d a(@Nullable com.facebook.imagepipeline.d.e eVar) {
        this.f2861d = eVar;
        return this;
    }

    @Nullable
    public com.facebook.imagepipeline.d.e e() {
        return this.f2861d;
    }

    public com.facebook.imagepipeline.d.a f() {
        return this.f2862e;
    }

    public b g() {
        return this.f2863f;
    }

    public d a(boolean z) {
        this.f2864g = z;
        return this;
    }

    public boolean h() {
        return this.f2864g;
    }

    public boolean i() {
        return this.h;
    }

    public boolean j() {
        return this.k && com.facebook.d.m.f.a(this.f2858a);
    }

    public com.facebook.imagepipeline.d.c k() {
        return this.i;
    }

    @Nullable
    public h l() {
        return this.j;
    }

    @Nullable
    public com.facebook.imagepipeline.i.b m() {
        return this.l;
    }

    public a n() {
        o();
        return new a(this);
    }

    protected void o() {
        if (this.f2858a == null) {
            throw new e("Source must be set!");
        }
        if (com.facebook.d.m.f.g(this.f2858a)) {
            if (!this.f2858a.isAbsolute()) {
                throw new e("Resource URI path must be absolute.");
            }
            if (this.f2858a.getPath().isEmpty()) {
                throw new e("Resource URI must not be empty");
            }
            try {
                Integer.parseInt(this.f2858a.getPath().substring(1));
            } catch (NumberFormatException e2) {
                throw new e("Resource URI path must be a resource id.");
            }
        }
        if (com.facebook.d.m.f.f(this.f2858a) && !this.f2858a.isAbsolute()) {
            throw new e("Asset URI path must be absolute.");
        }
    }
}
