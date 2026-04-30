package com.i.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.i.a.b.a.i;
import com.i.a.c.e;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: ImageViewAware.java */
/* JADX INFO: loaded from: classes3.dex */
public class b extends d {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // com.i.a.b.e.d, com.i.a.b.e.a
    public int a() {
        ImageView imageView;
        int iA = super.a();
        return (iA > 0 || (imageView = (ImageView) this.f3329a.get()) == null) ? iA : a(imageView, "mMaxWidth");
    }

    @Override // com.i.a.b.e.d, com.i.a.b.e.a
    public int b() {
        ImageView imageView;
        int iB = super.b();
        return (iB > 0 || (imageView = (ImageView) this.f3329a.get()) == null) ? iB : a(imageView, "mMaxHeight");
    }

    @Override // com.i.a.b.e.d, com.i.a.b.e.a
    public i c() {
        ImageView imageView = (ImageView) this.f3329a.get();
        return imageView != null ? i.a(imageView) : super.c();
    }

    @Override // com.i.a.b.e.d, com.i.a.b.e.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public ImageView d() {
        return (ImageView) super.d();
    }

    @Override // com.i.a.b.e.d
    protected void a(Drawable drawable, View view) {
        ((ImageView) view).setImageDrawable(drawable);
    }

    @Override // com.i.a.b.e.d
    protected void a(Bitmap bitmap, View view) {
        ((ImageView) view).setImageBitmap(bitmap);
    }

    private static int a(Object obj, String str) {
        try {
            Field declaredField = ImageView.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            int iIntValue = ((Integer) declaredField.get(obj)).intValue();
            if (iIntValue > 0 && iIntValue < Integer.MAX_VALUE) {
                return iIntValue;
            }
        } catch (Exception e2) {
            e.a(e2);
        }
        return 0;
    }
}
