package com.facebook.drawee.f;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.e.af;
import com.facebook.drawee.e.ag;
import com.facebook.drawee.e.h;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RootDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends h implements af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    Drawable f2168a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ag f2169c;

    public d(Drawable drawable) {
        super(drawable);
        this.f2168a = null;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // com.facebook.drawee.e.af
    public void a(@Nullable ag agVar) {
        this.f2169c = agVar;
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f2169c != null) {
            this.f2169c.a(z);
        }
        return super.setVisible(z, z2);
    }

    @Override // com.facebook.drawee.e.h, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            if (this.f2169c != null) {
                this.f2169c.a();
            }
            super.draw(canvas);
            if (this.f2168a != null) {
                this.f2168a.setBounds(getBounds());
                this.f2168a.draw(canvas);
            }
        }
    }

    public void d(@Nullable Drawable drawable) {
        this.f2168a = drawable;
        invalidateSelf();
    }
}
