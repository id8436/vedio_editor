package com.facebook.drawee.f;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.facebook.drawee.e.h;
import com.facebook.drawee.e.i;
import com.facebook.drawee.e.k;
import com.facebook.drawee.e.l;
import com.facebook.drawee.e.m;
import com.facebook.drawee.e.n;
import com.facebook.drawee.e.q;
import com.facebook.drawee.e.t;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: WrappingUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Drawable f2180a = new ColorDrawable(0);

    @Nullable
    static Drawable a(@Nullable Drawable drawable, @Nullable t tVar) {
        return a(drawable, tVar, (PointF) null);
    }

    @Nullable
    static Drawable a(@Nullable Drawable drawable, @Nullable t tVar, @Nullable PointF pointF) {
        if (drawable != null && tVar != null) {
            q qVar = new q(drawable, tVar);
            if (pointF != null) {
                qVar.a(pointF);
            }
            return qVar;
        }
        return drawable;
    }

    @Nullable
    static Drawable a(@Nullable Drawable drawable, @Nullable Matrix matrix) {
        return (drawable == null || matrix == null) ? drawable : new i(drawable, matrix);
    }

    static Drawable a(@Nullable Drawable drawable, @Nullable e eVar) {
        if (drawable != null && eVar != null && eVar.c() == f.OVERLAY_COLOR) {
            n nVar = new n(drawable);
            a((k) nVar, eVar);
            nVar.a(eVar.d());
            return nVar;
        }
        return drawable;
    }

    static Drawable a(@Nullable Drawable drawable, @Nullable e eVar, Resources resources) {
        if (drawable != null && eVar != null && eVar.c() == f.BITMAP_ONLY) {
            if (drawable instanceof h) {
                com.facebook.drawee.e.d dVarA = a((h) drawable);
                dVarA.a(b(dVarA.a(f2180a), eVar, resources));
                return drawable;
            }
            return b(drawable, eVar, resources);
        }
        return drawable;
    }

    private static Drawable b(Drawable drawable, e eVar, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            l lVar = new l(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
            a((k) lVar, eVar);
            return lVar;
        }
        if ((drawable instanceof ColorDrawable) && Build.VERSION.SDK_INT >= 11) {
            m mVarA = m.a((ColorDrawable) drawable);
            a((k) mVarA, eVar);
            return mVarA;
        }
        return drawable;
    }

    static void a(k kVar, e eVar) {
        kVar.a(eVar.a());
        kVar.a(eVar.b());
        kVar.a(eVar.f(), eVar.e());
        kVar.a(eVar.g());
    }

    static com.facebook.drawee.e.d a(com.facebook.drawee.e.d dVar) {
        while (true) {
            Object objA = dVar.a();
            if (objA == dVar || !(objA instanceof com.facebook.drawee.e.d)) {
                break;
            }
            dVar = (com.facebook.drawee.e.d) objA;
        }
        return dVar;
    }
}
