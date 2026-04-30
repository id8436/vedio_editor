package com.i.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.i.a.b.a.i;
import com.i.a.c.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: ViewAware.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Reference<View> f3329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f3330b;

    protected abstract void a(Bitmap bitmap, View view);

    protected abstract void a(Drawable drawable, View view);

    public d(View view) {
        this(view, true);
    }

    public d(View view, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        this.f3329a = new WeakReference(view);
        this.f3330b = z;
    }

    @Override // com.i.a.b.e.a
    public int a() {
        View view = this.f3329a.get();
        if (view == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int width = (!this.f3330b || layoutParams == null || layoutParams.width == -2) ? 0 : view.getWidth();
        return (width > 0 || layoutParams == null) ? width : layoutParams.width;
    }

    @Override // com.i.a.b.e.a
    public int b() {
        View view = this.f3329a.get();
        if (view == null) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int height = (!this.f3330b || layoutParams == null || layoutParams.height == -2) ? 0 : view.getHeight();
        return (height > 0 || layoutParams == null) ? height : layoutParams.height;
    }

    @Override // com.i.a.b.e.a
    public i c() {
        return i.CROP;
    }

    @Override // com.i.a.b.e.a
    public View d() {
        return this.f3329a.get();
    }

    @Override // com.i.a.b.e.a
    public boolean e() {
        return this.f3329a.get() == null;
    }

    @Override // com.i.a.b.e.a
    public int f() {
        View view = this.f3329a.get();
        return view == null ? super.hashCode() : view.hashCode();
    }

    @Override // com.i.a.b.e.a
    public boolean a(Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.f3329a.get();
            if (view != null) {
                a(drawable, view);
                return true;
            }
        } else {
            e.c("Can't set a drawable into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        }
        return false;
    }

    @Override // com.i.a.b.e.a
    public boolean a(Bitmap bitmap) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.f3329a.get();
            if (view != null) {
                a(bitmap, view);
                return true;
            }
        } else {
            e.c("Can't set a bitmap into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        }
        return false;
    }
}
