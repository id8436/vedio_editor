package com.b.a.h.a;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

/* JADX INFO: compiled from: DrawableCrossFadeFactory.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1177a;

    b(int i) {
        this.f1177a = i;
    }

    @Override // com.b.a.h.a.j
    public Animation a() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(this.f1177a);
        return alphaAnimation;
    }
}
