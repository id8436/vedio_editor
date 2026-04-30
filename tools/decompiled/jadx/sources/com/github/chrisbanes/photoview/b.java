package com.github.chrisbanes.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: CustomGestureDetector.java */
/* JADX INFO: loaded from: classes2.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3142a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3143b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScaleGestureDetector f3144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VelocityTracker f3145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3148g;
    private final float h;
    private final float i;
    private d j;

    b(Context context, d dVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.h = viewConfiguration.getScaledTouchSlop();
        this.j = dVar;
        this.f3144c = new ScaleGestureDetector(context, new c(this));
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f3143b);
        } catch (Exception e2) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f3143b);
        } catch (Exception e2) {
            return motionEvent.getY();
        }
    }

    public boolean a() {
        return this.f3144c.isInProgress();
    }

    public boolean b() {
        return this.f3146e;
    }

    public boolean a(MotionEvent motionEvent) {
        try {
            this.f3144c.onTouchEvent(motionEvent);
            return d(motionEvent);
        } catch (IllegalArgumentException e2) {
            return true;
        }
    }

    private boolean d(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.f3142a = motionEvent.getPointerId(0);
                this.f3145d = VelocityTracker.obtain();
                if (this.f3145d != null) {
                    this.f3145d.addMovement(motionEvent);
                }
                this.f3147f = b(motionEvent);
                this.f3148g = c(motionEvent);
                this.f3146e = false;
                break;
            case 1:
                this.f3142a = -1;
                if (this.f3146e && this.f3145d != null) {
                    this.f3147f = b(motionEvent);
                    this.f3148g = c(motionEvent);
                    this.f3145d.addMovement(motionEvent);
                    this.f3145d.computeCurrentVelocity(1000);
                    float xVelocity = this.f3145d.getXVelocity();
                    float yVelocity = this.f3145d.getYVelocity();
                    if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.i) {
                        this.j.a(this.f3147f, this.f3148g, -xVelocity, -yVelocity);
                    }
                }
                if (this.f3145d != null) {
                    this.f3145d.recycle();
                    this.f3145d = null;
                }
                break;
            case 2:
                float fB = b(motionEvent);
                float fC = c(motionEvent);
                float f2 = fB - this.f3147f;
                float f3 = fC - this.f3148g;
                if (!this.f3146e) {
                    this.f3146e = Math.sqrt((double) ((f2 * f2) + (f3 * f3))) >= ((double) this.h);
                }
                if (this.f3146e) {
                    this.j.a(f2, f3);
                    this.f3147f = fB;
                    this.f3148g = fC;
                    if (this.f3145d != null) {
                        this.f3145d.addMovement(motionEvent);
                    }
                }
                break;
            case 3:
                this.f3142a = -1;
                if (this.f3145d != null) {
                    this.f3145d.recycle();
                    this.f3145d = null;
                }
                break;
            case 6:
                int iA = s.a(motionEvent.getAction());
                if (motionEvent.getPointerId(iA) == this.f3142a) {
                    int i = iA == 0 ? 1 : 0;
                    this.f3142a = motionEvent.getPointerId(i);
                    this.f3147f = motionEvent.getX(i);
                    this.f3148g = motionEvent.getY(i);
                }
                break;
        }
        this.f3143b = motionEvent.findPointerIndex(this.f3142a != -1 ? this.f3142a : 0);
        return true;
    }
}
