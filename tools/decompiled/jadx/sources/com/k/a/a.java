package com.k.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: Action.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ak f3413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ax f3414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final WeakReference<T> f3415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f3416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f3417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f3418f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f3419g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    abstract void a();

    abstract void a(Bitmap bitmap, aq aqVar);

    a(ak akVar, T t, ax axVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f3413a = akVar;
        this.f3414b = axVar;
        this.f3415c = t == null ? null : new b(this, t, akVar.i);
        this.f3417e = i;
        this.f3418f = i2;
        this.f3416d = z;
        this.f3419g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    void b() {
        this.l = true;
    }

    ax c() {
        return this.f3414b;
    }

    T d() {
        if (this.f3415c == null) {
            return null;
        }
        return this.f3415c.get();
    }

    String e() {
        return this.i;
    }

    boolean f() {
        return this.l;
    }

    boolean g() {
        return this.k;
    }

    int h() {
        return this.f3417e;
    }

    int i() {
        return this.f3418f;
    }

    ak j() {
        return this.f3413a;
    }

    ar k() {
        return this.f3414b.r;
    }

    Object l() {
        return this.j;
    }
}
