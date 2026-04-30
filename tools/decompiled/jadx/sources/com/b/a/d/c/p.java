package com.b.a.d.c;

import android.support.v7.widget.helper.ItemTouchHelper;

/* JADX INFO: compiled from: ModelCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class p<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.j.e<r<A>, B> f946a;

    public p() {
        this(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    public p(int i) {
        this.f946a = new q(this, i);
    }

    public B a(A a2, int i, int i2) {
        r<A> rVarA = r.a(a2, i, i2);
        B b2 = this.f946a.b(rVarA);
        rVarA.a();
        return b2;
    }

    public void a(A a2, int i, int i2, B b2) {
        this.f946a.b(r.a(a2, i, i2), b2);
    }
}
