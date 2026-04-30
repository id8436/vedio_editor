package com.getbase.floatingactionbutton;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: FloatingActionsMenu.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends ViewGroup.LayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ FloatingActionsMenu f3129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ObjectAnimator f3130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f3131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ObjectAnimator f3132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ObjectAnimator f3133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3134f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(FloatingActionsMenu floatingActionsMenu, ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f3129a = floatingActionsMenu;
        this.f3130b = new ObjectAnimator();
        this.f3131c = new ObjectAnimator();
        this.f3132d = new ObjectAnimator();
        this.f3133e = new ObjectAnimator();
        this.f3130b.setInterpolator(FloatingActionsMenu.v);
        this.f3131c.setInterpolator(FloatingActionsMenu.x);
        this.f3132d.setInterpolator(FloatingActionsMenu.w);
        this.f3133e.setInterpolator(FloatingActionsMenu.w);
        this.f3133e.setProperty(View.ALPHA);
        this.f3133e.setFloatValues(1.0f, 0.0f);
        this.f3131c.setProperty(View.ALPHA);
        this.f3131c.setFloatValues(0.0f, 1.0f);
        switch (floatingActionsMenu.f3111f) {
            case 0:
            case 1:
                this.f3132d.setProperty(View.TRANSLATION_Y);
                this.f3130b.setProperty(View.TRANSLATION_Y);
                break;
            case 2:
            case 3:
                this.f3132d.setProperty(View.TRANSLATION_X);
                this.f3130b.setProperty(View.TRANSLATION_X);
                break;
        }
    }

    public void a(View view) {
        this.f3133e.setTarget(view);
        this.f3132d.setTarget(view);
        this.f3131c.setTarget(view);
        this.f3130b.setTarget(view);
        if (!this.f3134f) {
            this.f3129a.l.play(this.f3133e);
            this.f3129a.l.play(this.f3132d);
            this.f3129a.k.play(this.f3131c);
            this.f3129a.k.play(this.f3130b);
            this.f3134f = true;
        }
    }
}
