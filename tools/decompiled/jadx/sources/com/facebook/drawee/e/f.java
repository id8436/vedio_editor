package com.facebook.drawee.e;

import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DrawableUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static void a(Drawable drawable, Drawable drawable2) {
        if (drawable2 != null && drawable != null && drawable != drawable2) {
            drawable.setBounds(drawable2.getBounds());
            drawable.setChangingConfigurations(drawable2.getChangingConfigurations());
            drawable.setLevel(drawable2.getLevel());
            drawable.setVisible(drawable2.isVisible(), false);
            drawable.setState(drawable2.getState());
        }
    }

    public static void a(Drawable drawable, e eVar) {
        if (drawable != null && eVar != null) {
            eVar.a(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Drawable drawable, @Nullable Drawable.Callback callback, @Nullable ae aeVar) {
        if (drawable != 0) {
            drawable.setCallback(callback);
            if (drawable instanceof ad) {
                ((ad) drawable).a(aeVar);
            }
        }
    }

    public static int a(int i, int i2) {
        if (i2 != 255) {
            if (i2 == 0) {
                return i & ViewCompat.MEASURED_SIZE_MASK;
            }
            return (((((i2 >> 7) + i2) * (i >>> 24)) >> 8) << 24) | (i & ViewCompat.MEASURED_SIZE_MASK);
        }
        return i;
    }

    public static int a(int i) {
        int i2 = i >>> 24;
        if (i2 == 255) {
            return -1;
        }
        if (i2 == 0) {
            return -2;
        }
        return -3;
    }
}
