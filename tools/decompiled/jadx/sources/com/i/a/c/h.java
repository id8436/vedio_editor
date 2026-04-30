package com.i.a.c;

import android.content.Context;
import android.os.Environment;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: StorageUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h {
    public static File a(Context context) {
        return a(context, true);
    }

    public static File a(Context context, boolean z) {
        File cacheDir = null;
        if (z && "mounted".equals(Environment.getExternalStorageState()) && d(context)) {
            cacheDir = c(context);
        }
        if (cacheDir == null) {
            cacheDir = context.getCacheDir();
        }
        if (cacheDir == null) {
            String str = "/data/data/" + context.getPackageName() + "/cache/";
            e.c("Can't define system cache directory! '%s' will be used.", str);
            return new File(str);
        }
        return cacheDir;
    }

    public static File b(Context context) {
        File fileA = a(context);
        File file = new File(fileA, "uil-images");
        return (file.exists() || file.mkdir()) ? file : fileA;
    }

    private static File c(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_PLATFORM_ANDROID), "data"), context.getPackageName()), "cache");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                e.c("Unable to create external cache directory", new Object[0]);
                return null;
            }
            try {
                new File(file, ".nomedia").createNewFile();
                return file;
            } catch (IOException e2) {
                e.b("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
                return file;
            }
        }
        return file;
    }

    private static boolean d(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
