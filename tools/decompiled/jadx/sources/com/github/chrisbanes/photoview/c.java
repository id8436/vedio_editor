package com.github.chrisbanes.photoview;

import android.view.ScaleGestureDetector;

/* JADX INFO: compiled from: CustomGestureDetector.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements ScaleGestureDetector.OnScaleGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f3149a;

    c(b bVar) {
        this.f3149a = bVar;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
            return false;
        }
        this.f3149a.j.a(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }
}
