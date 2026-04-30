package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: CommonUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3942a;

    public static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
            } else {
                return;
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                com.twitter.sdk.android.core.v.h().c("Twitter", str, e2);
            }
        }
    }

    static String a(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName();
    }

    static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, a(context));
    }

    public static boolean a(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int iA = a(context, str, "bool");
            if (iA > 0) {
                return resources.getBoolean(iA);
            }
            int iA2 = a(context, str, "string");
            if (iA2 > 0) {
                return Boolean.parseBoolean(context.getString(iA2));
            }
            return z;
        }
        return z;
    }

    public static String b(Context context, String str, String str2) {
        Resources resources;
        int iA;
        if (context != null && (resources = context.getResources()) != null && (iA = a(context, str, "string")) > 0) {
            return resources.getString(iA);
        }
        return str2;
    }

    static boolean b(Context context) {
        if (f3942a == null) {
            f3942a = Boolean.valueOf(a(context, "com.twitter.sdk.android.TRACE_ENABLED", false));
        }
        return f3942a.booleanValue();
    }

    public static void a(Context context, String str) {
        if (b(context)) {
            com.twitter.sdk.android.core.v.h().a("Twitter", str);
        }
    }

    public static void a(Context context, String str, Throwable th) {
        if (b(context)) {
            com.twitter.sdk.android.core.v.h().c("Twitter", str);
        }
    }

    public static void a(Context context, int i, String str, String str2) {
        if (b(context)) {
            com.twitter.sdk.android.core.v.h().a(i, "Twitter", str2);
        }
    }

    public static void a(String str, String str2) {
        if (com.twitter.sdk.android.core.v.g()) {
            throw new IllegalStateException(str2);
        }
        com.twitter.sdk.android.core.v.h().b(str, str2);
    }
}
