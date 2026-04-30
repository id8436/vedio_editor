package com.behance.sdk.util;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.widget.ImageView;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.ui.animations.BehanceSDKCustomFadeInBitmapDisplayer;
import com.i.a.b.a.e;
import com.i.a.b.a.h;
import com.i.a.b.d;
import com.i.a.b.f;
import com.i.a.b.f.a;
import com.i.a.b.g;
import com.i.a.b.j;
import com.i.a.b.l;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageLoaderUtils {
    private static final int ANIMATION_DURATION_IN_MILLISECONDS = 300;
    private static d imageOptions;

    public static j getImageLoaderConfig(Context context) {
        return new l(context).a(10).a(h.LIFO).a();
    }

    public static d getDefaultImageLoaderOptions() {
        if (imageOptions == null) {
            imageOptions = new f().b(false).a(false).c(false).a(e.EXACTLY).a(new BehanceSDKCustomFadeInBitmapDisplayer(300, true, false, false)).a(R.drawable.stat_notify_error).a(Bitmap.Config.RGB_565).a();
        }
        return imageOptions;
    }

    public static void displayImageFromCacheOrLoadFromServer(String str, ImageView imageView, a aVar) {
        displayImageFromCacheOrLoadFromServer(str, imageView, aVar, getDefaultImageLoaderOptions());
    }

    public static void displayImageFromCacheOrLoadFromServer(String str, ImageView imageView, a aVar, d dVar) {
        boolean z;
        List<Bitmap> listA;
        Bitmap bitmap;
        boolean z2 = false;
        g gVarA = g.a();
        gVarA.a(imageView);
        com.i.a.a.b.a aVarC = gVarA.c();
        if (aVarC == null || (listA = com.i.a.c.f.a(str, aVarC)) == null || listA.size() <= 0 || (bitmap = listA.get(0)) == null || bitmap.isRecycled()) {
            z = z2;
        } else {
            z2 = true;
            if (aVar != null) {
                aVar.onLoadingComplete(str, imageView, bitmap);
                z = true;
            } else {
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap);
                }
                z = z2;
            }
        }
        if (!z) {
            if (aVar != null) {
                gVarA.a(str, imageView, dVar, aVar);
            } else {
                gVarA.a(str, imageView, dVar);
            }
        }
    }

    public static void displayImageFromCacheOrLoadFromServer(String str, ImageView imageView) {
        displayImageFromCacheOrLoadFromServer(str, imageView, null);
    }

    public static Bitmap getImageBitmap(String str) {
        return g.a().a(str, getDefaultImageLoaderOptions());
    }

    public static Bitmap getImageBitmapFromCache(String str) {
        List<Bitmap> listA;
        Bitmap bitmap;
        com.i.a.a.b.a aVarC = g.a().c();
        if (aVarC == null || (listA = com.i.a.c.f.a(str, aVarC)) == null || listA.size() <= 0 || (bitmap = listA.get(0)) == null || bitmap.isRecycled()) {
            return null;
        }
        return bitmap;
    }

    public static Bitmap updateBitmapForRotation(Bitmap bitmap, ImageModule imageModule) {
        if (imageModule.getRotation() > 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(r0 * 90);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        }
        return bitmap;
    }
}
