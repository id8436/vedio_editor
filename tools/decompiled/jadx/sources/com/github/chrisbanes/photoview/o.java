package com.github.chrisbanes.photoview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
class o implements GestureDetector.OnDoubleTapListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f3159a;

    o(l lVar) {
        this.f3159a = lVar;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.f3159a.y != null) {
            this.f3159a.y.onClick(this.f3159a.m);
        }
        RectF rectFA = this.f3159a.a();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.f3159a.x != null) {
            this.f3159a.x.a(this.f3159a.m, x, y);
        }
        if (rectFA != null) {
            if (!rectFA.contains(x, y)) {
                if (this.f3159a.w != null) {
                    this.f3159a.w.a(this.f3159a.m);
                }
            } else {
                float fWidth = (x - rectFA.left) / rectFA.width();
                float fHeight = (y - rectFA.top) / rectFA.height();
                if (this.f3159a.v != null) {
                    this.f3159a.v.a(this.f3159a.m, fWidth, fHeight);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        try {
            float fE = this.f3159a.e();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (fE < this.f3159a.c()) {
                this.f3159a.a(this.f3159a.c(), x, y, true);
            } else if (fE >= this.f3159a.c() && fE < this.f3159a.d()) {
                this.f3159a.a(this.f3159a.d(), x, y, true);
            } else {
                this.f3159a.a(this.f3159a.b(), x, y, true);
            }
        } catch (ArrayIndexOutOfBoundsException e2) {
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }
}
