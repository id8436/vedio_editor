package com.b.a.h.b;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: SquaringDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class j extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable.ConstantState f1197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1198b;

    j(j jVar) {
        this(jVar.f1197a, jVar.f1198b);
    }

    j(Drawable.ConstantState constantState, int i) {
        this.f1197a = constantState;
        this.f1198b = i;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new i(this, null, resources);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }
}
