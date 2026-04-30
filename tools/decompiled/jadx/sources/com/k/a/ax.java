package com.k.a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.gdata.data.Category;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ax {
    private static final long s = TimeUnit.SECONDS.toNanos(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uri f3490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f3492f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<bi> f3493g;
    public final int h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final float m;
    public final float n;
    public final float o;
    public final boolean p;
    public final Bitmap.Config q;
    public final ar r;

    private ax(Uri uri, int i, String str, List<bi> list, int i2, int i3, boolean z, boolean z2, boolean z3, float f2, float f3, float f4, boolean z4, Bitmap.Config config, ar arVar) {
        this.f3490d = uri;
        this.f3491e = i;
        this.f3492f = str;
        if (list == null) {
            this.f3493g = null;
        } else {
            this.f3493g = Collections.unmodifiableList(list);
        }
        this.h = i2;
        this.i = i3;
        this.j = z;
        this.k = z2;
        this.l = z3;
        this.m = f2;
        this.n = f3;
        this.o = f4;
        this.p = z4;
        this.q = config;
        this.r = arVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        if (this.f3491e > 0) {
            sb.append(this.f3491e);
        } else {
            sb.append(this.f3490d);
        }
        if (this.f3493g != null && !this.f3493g.isEmpty()) {
            Iterator<bi> it = this.f3493g.iterator();
            while (it.hasNext()) {
                sb.append(' ').append(it.next().key());
            }
        }
        if (this.f3492f != null) {
            sb.append(" stableKey(").append(this.f3492f).append(')');
        }
        if (this.h > 0) {
            sb.append(" resize(").append(this.h).append(',').append(this.i).append(')');
        }
        if (this.j) {
            sb.append(" centerCrop");
        }
        if (this.k) {
            sb.append(" centerInside");
        }
        if (this.m != 0.0f) {
            sb.append(" rotation(").append(this.m);
            if (this.p) {
                sb.append(" @ ").append(this.n).append(',').append(this.o);
            }
            sb.append(')');
        }
        if (this.q != null) {
            sb.append(' ').append(this.q);
        }
        sb.append(Category.SCHEME_SUFFIX);
        return sb.toString();
    }

    String a() {
        long jNanoTime = System.nanoTime() - this.f3488b;
        return jNanoTime > s ? b() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's' : b() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    String b() {
        return "[R" + this.f3487a + ']';
    }

    String c() {
        return this.f3490d != null ? String.valueOf(this.f3490d.getPath()) : Integer.toHexString(this.f3491e);
    }

    public boolean d() {
        return (this.h == 0 && this.i == 0) ? false : true;
    }

    boolean e() {
        return f() || g();
    }

    boolean f() {
        return d() || this.m != 0.0f;
    }

    boolean g() {
        return this.f3493g != null;
    }
}
