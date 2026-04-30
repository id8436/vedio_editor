package com.learnncode.mediachooser;

import android.graphics.Bitmap;
import android.util.Log;
import android.util.LruCache;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: GalleryCacheModified.java */
/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LruCache<String, Bitmap> f3675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f3676b = false;

    public static void a() {
        if (!f3676b) {
            f3675a = new c(((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8);
            f3676b = true;
        }
    }

    public static void a(String str, Bitmap bitmap) {
        if (!f3676b) {
            a();
        }
        if (a(str) == null) {
            f3675a.put(str, bitmap);
        }
    }

    public static Bitmap a(String str) {
        if (!f3676b) {
            a();
        }
        return f3675a.get(str);
    }

    public static void b() {
        Log.d("GalleryCache Stats", "Hit count/Miss count = " + f3675a.hitCount() + URIUtil.SLASH + f3675a.missCount());
        Log.d("GalleryCache Stats", "Used size/Total size = " + f3675a.size() + URIUtil.SLASH + f3675a.maxSize());
    }
}
