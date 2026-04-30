package com.github.chrisbanes.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f3140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView.ScaleType f3141b;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    @TargetApi(21)
    public PhotoView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a();
    }

    private void a() {
        this.f3140a = new l(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        if (this.f3141b != null) {
            setScaleType(this.f3141b);
            this.f3141b = null;
        }
    }

    public l getAttacher() {
        return this.f3140a;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f3140a.f();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f3140a.h();
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f3140a.a(onLongClickListener);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f3140a.a(onClickListener);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.f3140a == null) {
            this.f3141b = scaleType;
        } else {
            this.f3140a.a(scaleType);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.f3140a != null) {
            this.f3140a.g();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        if (this.f3140a != null) {
            this.f3140a.g();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.f3140a != null) {
            this.f3140a.g();
        }
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f3140a.g();
        }
        return frame;
    }

    public void setRotationTo(float f2) {
        this.f3140a.a(f2);
    }

    public void setRotationBy(float f2) {
        this.f3140a.b(f2);
    }

    public void setZoomable(boolean z) {
        this.f3140a.b(z);
    }

    public RectF getDisplayRect() {
        return this.f3140a.a();
    }

    public float getMinimumScale() {
        return this.f3140a.b();
    }

    public float getMediumScale() {
        return this.f3140a.c();
    }

    public float getMaximumScale() {
        return this.f3140a.d();
    }

    public float getScale() {
        return this.f3140a.e();
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f3140a.a(z);
    }

    public void setMinimumScale(float f2) {
        this.f3140a.c(f2);
    }

    public void setMediumScale(float f2) {
        this.f3140a.d(f2);
    }

    public void setMaximumScale(float f2) {
        this.f3140a.e(f2);
    }

    public void a(float f2, float f3, float f4) {
        this.f3140a.a(f2, f3, f4);
    }

    public void setOnMatrixChangeListener(e eVar) {
        this.f3140a.a(eVar);
    }

    public void setOnPhotoTapListener(g gVar) {
        this.f3140a.a(gVar);
    }

    public void setOnOutsidePhotoTapListener(f fVar) {
        this.f3140a.a(fVar);
    }

    public void setOnViewTapListener(k kVar) {
        this.f3140a.a(kVar);
    }

    public void setOnViewDragListener(j jVar) {
        this.f3140a.a(jVar);
    }

    public void setScale(float f2) {
        this.f3140a.f(f2);
    }

    public void setZoomTransitionDuration(int i) {
        this.f3140a.a(i);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f3140a.a(onDoubleTapListener);
    }

    public void setOnScaleChangeListener(h hVar) {
        this.f3140a.a(hVar);
    }

    public void setOnSingleFlingListener(i iVar) {
        this.f3140a.a(iVar);
    }
}
