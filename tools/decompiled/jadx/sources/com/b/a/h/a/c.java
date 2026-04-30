package com.b.a.h.a;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

/* JADX INFO: compiled from: DrawableCrossFadeViewAnimation.java */
/* JADX INFO: loaded from: classes2.dex */
public class c<T extends Drawable> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<T> f1178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1179b;

    public c(d<T> dVar, int i) {
        this.f1178a = dVar;
        this.f1179b = i;
    }

    @Override // com.b.a.h.a.d
    public boolean a(T t, e eVar) {
        Drawable drawableB = eVar.b();
        if (drawableB != null) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawableB, t});
            transitionDrawable.setCrossFadeEnabled(true);
            transitionDrawable.startTransition(this.f1179b);
            eVar.a(transitionDrawable);
            return true;
        }
        this.f1178a.a(t, eVar);
        return false;
    }
}
