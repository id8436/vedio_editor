package com.facebook.imagepipeline.d;

import java.util.Locale;

/* JADX INFO: compiled from: RotationOptions.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e f2483c = new e(-1, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final e f2484d = new e(-2, false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final e f2485e = new e(-1, true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2487b;

    public static e a() {
        return f2483c;
    }

    public static e b() {
        return f2485e;
    }

    private e(int i, boolean z) {
        this.f2486a = i;
        this.f2487b = z;
    }

    public boolean c() {
        return this.f2486a == -1;
    }

    public boolean d() {
        return this.f2486a != -2;
    }

    public int e() {
        if (c()) {
            throw new IllegalStateException("Rotation is set to use EXIF");
        }
        return this.f2486a;
    }

    public boolean f() {
        return this.f2487b;
    }

    public int hashCode() {
        return com.facebook.d.m.b.a(Integer.valueOf(this.f2486a), Boolean.valueOf(this.f2487b));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f2486a == eVar.f2486a && this.f2487b == eVar.f2487b;
    }

    public String toString() {
        return String.format((Locale) null, "%d defer:%b", Integer.valueOf(this.f2486a), Boolean.valueOf(this.f2487b));
    }
}
