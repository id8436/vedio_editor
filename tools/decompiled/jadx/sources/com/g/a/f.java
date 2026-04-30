package com.g.a;

import android.view.animation.Interpolator;

/* JADX INFO: compiled from: Keyframe.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f3065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Class f3066b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f3068d = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f3067c = false;

    public abstract void a(Object obj);

    public abstract Object b();

    @Override // 
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public abstract f clone();

    public static f a(float f2, float f3) {
        return new g(f2, f3);
    }

    public static f a(float f2) {
        return new g(f2);
    }

    public boolean a() {
        return this.f3067c;
    }

    public float c() {
        return this.f3065a;
    }

    public Interpolator d() {
        return this.f3068d;
    }

    public void a(Interpolator interpolator) {
        this.f3068d = interpolator;
    }
}
