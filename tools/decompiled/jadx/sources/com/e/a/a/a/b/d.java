package com.e.a.a.a.b;

import android.view.animation.Interpolator;

/* JADX INFO: compiled from: BasicSwapTargetTranslationInterpolator.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f1585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f1586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f1587c;

    public d() {
        this(0.3f);
    }

    public d(float f2) {
        if (f2 < 0.0f || f2 >= 0.5f) {
            throw new IllegalArgumentException("Invalid threshold range: " + f2);
        }
        float f3 = 1.0f - (2.0f * f2);
        this.f1585a = f2;
        this.f1586b = 0.5f * f3;
        this.f1587c = 1.0f / f3;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (Math.abs(f2 - 0.5f) < this.f1586b) {
            return (f2 - this.f1585a) * this.f1587c;
        }
        return f2 < 0.5f ? 0.0f : 1.0f;
    }
}
