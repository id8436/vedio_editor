package com.github.chrisbanes.photoview;

import android.support.v4.view.MotionEventCompat;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
class n extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f3158a;

    n(l lVar) {
        this.f3158a = lVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.f3158a.z != null) {
            this.f3158a.z.onLongClick(this.f3158a.m);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (this.f3158a.B == null || this.f3158a.e() > l.f3152c || MotionEventCompat.getPointerCount(motionEvent) > l.f3154e || MotionEventCompat.getPointerCount(motionEvent2) > l.f3154e) {
            return false;
        }
        return this.f3158a.B.a(motionEvent, motionEvent2, f2, f3);
    }
}
