package com.facebook.imagepipeline.c;

import java.util.Locale;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: BitmapMemoryCacheKey.java */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class e implements com.facebook.c.a.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.d.d f2419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.d.e f2420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.d.a f2421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final com.facebook.c.a.f f2422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f2423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f2424g;
    private final Object h;
    private final long i;

    public e(String str, @Nullable com.facebook.imagepipeline.d.d dVar, com.facebook.imagepipeline.d.e eVar, com.facebook.imagepipeline.d.a aVar, @Nullable com.facebook.c.a.f fVar, @Nullable String str2, Object obj) {
        this.f2418a = (String) com.facebook.d.d.k.a(str);
        this.f2419b = dVar;
        this.f2420c = eVar;
        this.f2421d = aVar;
        this.f2422e = fVar;
        this.f2423f = str2;
        this.f2424g = com.facebook.d.m.b.a(Integer.valueOf(str.hashCode()), Integer.valueOf(dVar != null ? dVar.hashCode() : 0), Integer.valueOf(eVar.hashCode()), this.f2421d, this.f2422e, str2);
        this.h = obj;
        this.i = com.facebook.d.l.b.a().b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f2424g == eVar.f2424g && this.f2418a.equals(eVar.f2418a) && com.facebook.d.d.g.a(this.f2419b, eVar.f2419b) && com.facebook.d.d.g.a(this.f2420c, eVar.f2420c) && com.facebook.d.d.g.a(this.f2421d, eVar.f2421d) && com.facebook.d.d.g.a(this.f2422e, eVar.f2422e) && com.facebook.d.d.g.a(this.f2423f, eVar.f2423f);
    }

    public int hashCode() {
        return this.f2424g;
    }

    @Override // com.facebook.c.a.f
    public String a() {
        return this.f2418a;
    }

    public String toString() {
        return String.format((Locale) null, "%s_%s_%s_%s_%s_%s_%d", this.f2418a, this.f2419b, this.f2420c, this.f2421d, this.f2422e, this.f2423f, Integer.valueOf(this.f2424g));
    }
}
