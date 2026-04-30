package com.b.a.h.a;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: DrawableCrossFadeFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<T extends Drawable> implements f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<T> f1173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<T> f1175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c<T> f1176d;

    public a() {
        this(300);
    }

    public a(int i) {
        this(new k(new b(i)), i);
    }

    a(k<T> kVar, int i) {
        this.f1173a = kVar;
        this.f1174b = i;
    }

    @Override // com.b.a.h.a.f
    public d<T> a(boolean z, boolean z2) {
        if (z) {
            return g.b();
        }
        if (z2) {
            return a();
        }
        return b();
    }

    private d<T> a() {
        if (this.f1175c == null) {
            this.f1175c = new c<>(this.f1173a.a(false, true), this.f1174b);
        }
        return this.f1175c;
    }

    private d<T> b() {
        if (this.f1176d == null) {
            this.f1176d = new c<>(this.f1173a.a(false, false), this.f1174b);
        }
        return this.f1176d;
    }
}
