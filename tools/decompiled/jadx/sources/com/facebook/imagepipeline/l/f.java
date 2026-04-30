package com.facebook.imagepipeline.l;

import java.util.List;
import java.util.Locale;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: compiled from: MediaVariations.java */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final List<g> f2866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2867c;

    public String a() {
        return this.f2865a;
    }

    @Nullable
    public List<g> b() {
        return this.f2866b;
    }

    public boolean c() {
        return this.f2867c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return com.facebook.d.d.g.a(this.f2865a, fVar.f2865a) && this.f2867c == fVar.f2867c && com.facebook.d.d.g.a(this.f2866b, fVar.f2866b);
    }

    public int hashCode() {
        return com.facebook.d.d.g.a(this.f2865a, Boolean.valueOf(this.f2867c), this.f2866b);
    }

    public String toString() {
        return String.format((Locale) null, "%s-%b-%s", this.f2865a, Boolean.valueOf(this.f2867c), this.f2866b);
    }
}
