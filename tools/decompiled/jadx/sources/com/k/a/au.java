package com.k.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.ImageView;

/* JADX INFO: compiled from: PicassoDrawable.java */
/* JADX INFO: loaded from: classes3.dex */
final class au extends BitmapDrawable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Paint f3479e = new Paint();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f3480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f3482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3483d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f3484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f3485g;
    private final aq h;

    static void a(ImageView imageView, Context context, Bitmap bitmap, aq aqVar, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new au(context, bitmap, drawable, aqVar, z, z2));
    }

    static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    au(Context context, Bitmap bitmap, Drawable drawable, aq aqVar, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f3483d = 255;
        this.f3484f = z2;
        this.f3485g = context.getResources().getDisplayMetrics().density;
        this.h = aqVar;
        if ((aqVar == aq.MEMORY || z) ? false : true) {
            this.f3480a = drawable;
            this.f3482c = true;
            this.f3481b = SystemClock.uptimeMillis();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f3482c) {
            super.draw(canvas);
        } else {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.f3481b) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f3482c = false;
                this.f3480a = null;
                super.draw(canvas);
            } else {
                if (this.f3480a != null) {
                    this.f3480a.draw(canvas);
                }
                super.setAlpha((int) (fUptimeMillis * this.f3483d));
                super.draw(canvas);
                super.setAlpha(this.f3483d);
                if (Build.VERSION.SDK_INT <= 10) {
                    invalidateSelf();
                }
            }
        }
        if (this.f3484f) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3483d = i;
        if (this.f3480a != null) {
            this.f3480a.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f3480a != null) {
            this.f3480a.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f3480a != null) {
            this.f3480a.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    private void a(Canvas canvas) {
        f3479e.setColor(-1);
        canvas.drawPath(a(new Point(0, 0), (int) (16.0f * this.f3485g)), f3479e);
        f3479e.setColor(this.h.f3473d);
        canvas.drawPath(a(new Point(0, 0), (int) (15.0f * this.f3485g)), f3479e);
    }

    private static Path a(Point point, int i) {
        Point point2 = new Point(point.x + i, point.y);
        Point point3 = new Point(point.x, point.y + i);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }
}
