package com.b.a.h.a;

import android.view.View;

/* JADX INFO: compiled from: ViewAnimation.java */
/* JADX INFO: loaded from: classes2.dex */
public class i<R> implements d<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f1182a;

    i(j jVar) {
        this.f1182a = jVar;
    }

    @Override // com.b.a.h.a.d
    public boolean a(R r, e eVar) {
        View viewA = eVar.a();
        if (viewA != null) {
            viewA.clearAnimation();
            viewA.startAnimation(this.f1182a.a());
            return false;
        }
        return false;
    }
}
