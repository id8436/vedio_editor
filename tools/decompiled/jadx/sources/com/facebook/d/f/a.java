package com.facebook.d.f;

import android.webkit.MimeTypeMap;
import com.facebook.d.d.e;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: MediaUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, String> f1947a = e.a("mkv", "video/x-matroska");

    public static boolean a(@Nullable String str) {
        return str != null && str.startsWith("video/");
    }

    @Nullable
    public static String b(String str) {
        String strC = c(str);
        if (strC == null) {
            return null;
        }
        String lowerCase = strC.toLowerCase(Locale.US);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
        if (mimeTypeFromExtension == null) {
            return f1947a.get(lowerCase);
        }
        return mimeTypeFromExtension;
    }

    @Nullable
    private static String c(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0 || iLastIndexOf == str.length() - 1) {
            return null;
        }
        return str.substring(iLastIndexOf + 1);
    }
}
