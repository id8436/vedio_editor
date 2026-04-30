package com.k.a;

import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import java.io.IOException;

/* JADX INFO: compiled from: RequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class bb {
    public abstract bc a(ax axVar, int i) throws IOException;

    public abstract boolean a(ax axVar);

    int a() {
        return 0;
    }

    boolean a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    boolean b() {
        return false;
    }

    static BitmapFactory.Options c(ax axVar) {
        boolean zD = axVar.d();
        boolean z = axVar.q != null;
        BitmapFactory.Options options = null;
        if (zD || z) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = zD;
            if (z) {
                options.inPreferredConfig = axVar.q;
            }
        }
        return options;
    }

    static boolean a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    static void a(int i, int i2, BitmapFactory.Options options, ax axVar) {
        a(i, i2, options.outWidth, options.outHeight, options, axVar);
    }

    static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, ax axVar) {
        int iMin = 1;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                iMin = (int) Math.floor(i3 / i);
            } else if (i == 0) {
                iMin = (int) Math.floor(i4 / i2);
            } else {
                int iFloor = (int) Math.floor(i4 / i2);
                int iFloor2 = (int) Math.floor(i3 / i);
                if (axVar.k) {
                    iMin = Math.max(iFloor, iFloor2);
                } else {
                    iMin = Math.min(iFloor, iFloor2);
                }
            }
        }
        options.inSampleSize = iMin;
        options.inJustDecodeBounds = false;
    }
}
