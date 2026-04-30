package c.a.a.a.a.g;

import android.content.Context;
import android.graphics.BitmapFactory;

/* JADX INFO: compiled from: IconRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f326d;

    public n(String str, int i, int i2, int i3) {
        this.f323a = str;
        this.f324b = i;
        this.f325c = i2;
        this.f326d = i3;
    }

    public static n a(Context context, String str) {
        if (str != null) {
            try {
                int iL = c.a.a.a.a.b.m.l(context);
                c.a.a.a.f.h().a("Fabric", "App icon resource ID is " + iL);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), iL, options);
                return new n(str, iL, options.outWidth, options.outHeight);
            } catch (Exception e2) {
                c.a.a.a.f.h().e("Fabric", "Failed to load icon", e2);
            }
        }
        return null;
    }
}
