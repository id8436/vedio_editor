package com.learnncode.mediachooser.b;

import android.graphics.Bitmap;
import java.util.ArrayList;

/* JADX INFO: compiled from: VideoLoadAsyncModified.java */
/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ArrayList<String> f3703a = new ArrayList<>();

    public static void a(int i, int i2, String str, com.learnncode.mediachooser.c.a aVar) {
        Bitmap bitmapA = com.learnncode.mediachooser.b.a(str);
        if (bitmapA != null) {
            aVar.b().setImageBitmap(bitmapA);
            com.learnncode.mediachooser.b.b();
        } else if (!f3703a.contains(str)) {
            new n(str, 600L, i, i2, aVar).executeOnExecutor(b.f3681a, str);
        }
    }
}
