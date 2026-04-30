package com.b.a.h.b;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: SquaringDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends com.b.a.d.d.b.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.b.a.d.d.b.b f1194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f1195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1196c;

    public i(com.b.a.d.d.b.b bVar, int i) {
        this(new j(bVar.getConstantState(), i), bVar, null);
    }

    i(j jVar, com.b.a.d.d.b.b bVar, Resources resources) {
        this.f1195b = jVar;
        if (bVar == null) {
            if (resources != null) {
                this.f1194a = (com.b.a.d.d.b.b) jVar.f1197a.newDrawable(resources);
                return;
            } else {
                this.f1194a = (com.b.a.d.d.b.b) jVar.f1197a.newDrawable();
                return;
            }
        }
        this.f1194a = bVar;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f1194a.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        super.setBounds(rect);
        this.f1194a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1194a.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f1194a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1194a.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1194a.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(11)
    public Drawable.Callback getCallback() {
        return this.f1194a.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(19)
    public int getAlpha() {
        return this.f1194a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
        this.f1194a.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f1194a.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1194a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f1194a.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1195b.f1198b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1195b.f1198b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1194a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1194a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1194a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f1194a.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f1194a.unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.f1194a.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1194a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1194a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1194a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1194a.getOpacity();
    }

    @Override // com.b.a.d.d.b.b
    public boolean a() {
        return this.f1194a.a();
    }

    @Override // com.b.a.d.d.b.b
    public void a(int i) {
        this.f1194a.a(i);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f1194a.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f1194a.stop();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f1194a.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1196c && super.mutate() == this) {
            this.f1194a = (com.b.a.d.d.b.b) this.f1194a.mutate();
            this.f1195b = new j(this.f1195b);
            this.f1196c = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f1195b;
    }
}
