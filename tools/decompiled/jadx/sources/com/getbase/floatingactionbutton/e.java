package com.getbase.floatingactionbutton;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.animation.OvershootInterpolator;

/* JADX INFO: compiled from: FloatingActionsMenu.java */
/* JADX INFO: loaded from: classes2.dex */
class e extends a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ FloatingActionsMenu f3127g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(FloatingActionsMenu floatingActionsMenu, Context context) {
        super(context);
        this.f3127g = floatingActionsMenu;
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    void a() {
        this.f3114a = this.f3127g.f3106a;
        this.f3100b = this.f3127g.f3107b;
        this.f3101c = this.f3127g.f3108c;
        this.f3104f = this.f3127g.f3110e;
        super.a();
    }

    @Override // com.getbase.floatingactionbutton.a, com.getbase.floatingactionbutton.FloatingActionButton
    Drawable getIconDrawable() {
        i iVar = new i(super.getIconDrawable());
        this.f3127g.n = iVar;
        OvershootInterpolator overshootInterpolator = new OvershootInterpolator();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(iVar, "rotation", 135.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(iVar, "rotation", 0.0f, 135.0f);
        objectAnimatorOfFloat.setInterpolator(overshootInterpolator);
        objectAnimatorOfFloat2.setInterpolator(overshootInterpolator);
        this.f3127g.k.play(objectAnimatorOfFloat2);
        this.f3127g.l.play(objectAnimatorOfFloat);
        return iVar;
    }
}
