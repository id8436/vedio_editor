package g.a.a.a;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: TypefaceUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, Typeface> f4912a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Typeface, j> f4913b = new HashMap();

    public static Typeface a(AssetManager assetManager, String str) {
        Typeface typefaceCreateFromAsset;
        synchronized (f4912a) {
            try {
                if (!f4912a.containsKey(str)) {
                    typefaceCreateFromAsset = Typeface.createFromAsset(assetManager, str);
                    f4912a.put(str, typefaceCreateFromAsset);
                } else {
                    typefaceCreateFromAsset = f4912a.get(str);
                }
            } catch (Exception e2) {
                Log.w("Calligraphy", "Can't create asset from " + str + ". Make sure you have passed in the correct path and file name.", e2);
                f4912a.put(str, null);
                typefaceCreateFromAsset = null;
            }
        }
        return typefaceCreateFromAsset;
    }

    public static j a(Typeface typeface) {
        j jVar;
        if (typeface == null) {
            return null;
        }
        synchronized (f4913b) {
            if (!f4913b.containsKey(typeface)) {
                jVar = new j(typeface);
                f4913b.put(typeface, jVar);
            } else {
                jVar = f4913b.get(typeface);
            }
        }
        return jVar;
    }

    public static boolean b(Typeface typeface) {
        return typeface != null && f4912a.containsValue(typeface);
    }
}
