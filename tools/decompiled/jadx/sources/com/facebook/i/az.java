package com.facebook.i;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.util.Log;
import com.google.gdata.client.GDataProtocol;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: Validate.java */
/* JADX INFO: loaded from: classes2.dex */
public final class az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2328a = az.class.getName();

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    public static <T> void a(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    public static <T> void b(Collection<T> collection, String str) {
        a((Object) collection, str);
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    public static <T> void c(Collection<T> collection, String str) {
        b(collection, str);
        a((Collection) collection, str);
    }

    public static void a() {
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new com.facebook.q("This method should be called from the UI thread");
        }
    }

    public static void a(String str, String str2) {
        if (as.a(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    public static void b() {
        if (!com.facebook.w.a()) {
            throw new com.facebook.ab("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    public static void a(Context context, boolean z) {
        a(context, GDataProtocol.Parameter.CONTEXT);
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (z) {
                throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Log.w(f2328a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    public static void b(Context context, boolean z) {
        a(context, GDataProtocol.Parameter.CONTEXT);
        PackageManager packageManager = context.getPackageManager();
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, (Class<?>) com.facebook.m.class), 1);
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        if (activityInfo == null) {
            if (z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            Log.w(f2328a, "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
        }
    }
}
