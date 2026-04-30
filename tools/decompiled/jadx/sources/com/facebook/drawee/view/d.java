package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.facebook.d.d.g;
import com.facebook.drawee.h.b;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DraweeView.java */
/* JADX INFO: loaded from: classes.dex */
public class d<DH extends com.facebook.drawee.h.b> extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f2198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<DH> f2200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2201d;

    public d(Context context) {
        super(context);
        this.f2198a = new b();
        this.f2199b = 0.0f;
        this.f2201d = false;
        a(context);
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2198a = new b();
        this.f2199b = 0.0f;
        this.f2201d = false;
        a(context);
    }

    public d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2198a = new b();
        this.f2199b = 0.0f;
        this.f2201d = false;
        a(context);
    }

    @TargetApi(21)
    public d(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2198a = new b();
        this.f2199b = 0.0f;
        this.f2201d = false;
        a(context);
    }

    private void a(Context context) {
        ColorStateList imageTintList;
        if (!this.f2201d) {
            this.f2201d = true;
            this.f2200c = c.a(null, context);
            if (Build.VERSION.SDK_INT >= 21 && (imageTintList = getImageTintList()) != null) {
                setColorFilter(imageTintList.getDefaultColor());
            }
        }
    }

    public void setHierarchy(DH dh) {
        this.f2200c.a(dh);
        super.setImageDrawable(this.f2200c.f());
    }

    public DH getHierarchy() {
        return (DH) this.f2200c.e();
    }

    @Nullable
    public Drawable getTopLevelDrawable() {
        return this.f2200c.f();
    }

    public void setController(@Nullable com.facebook.drawee.h.a aVar) {
        this.f2200c.a(aVar);
        super.setImageDrawable(this.f2200c.f());
    }

    @Nullable
    public com.facebook.drawee.h.a getController() {
        return this.f2200c.d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        b();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        a();
    }

    protected void a() {
        c();
    }

    protected void b() {
        d();
    }

    protected void c() {
        this.f2200c.b();
    }

    protected void d() {
        this.f2200c.c();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f2200c.a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(Drawable drawable) {
        a(getContext());
        this.f2200c.a((com.facebook.drawee.h.a) null);
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bitmap) {
        a(getContext());
        this.f2200c.a((com.facebook.drawee.h.a) null);
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int i) {
        a(getContext());
        this.f2200c.a((com.facebook.drawee.h.a) null);
        super.setImageResource(i);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        a(getContext());
        this.f2200c.a((com.facebook.drawee.h.a) null);
        super.setImageURI(uri);
    }

    public void setAspectRatio(float f2) {
        if (f2 != this.f2199b) {
            this.f2199b = f2;
            requestLayout();
        }
    }

    public float getAspectRatio() {
        return this.f2199b;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        this.f2198a.f2190a = i;
        this.f2198a.f2191b = i2;
        a.a(this.f2198a, this.f2199b, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        super.onMeasure(this.f2198a.f2190a, this.f2198a.f2191b);
    }

    @Override // android.view.View
    public String toString() {
        return g.a(this).a("holder", this.f2200c != null ? this.f2200c.toString() : "<no holder set>").toString();
    }
}
