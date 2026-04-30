package com.facebook;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: FacebookSdk.java */
/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile Executor f3050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f3051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile String f3052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile String f3053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile int f3054g;
    private static com.facebook.i.ae<File> l;
    private static Context m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f3048a = w.class.getCanonicalName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashSet<av> f3049b = new HashSet<>(Arrays.asList(av.DEVELOPER_ERRORS));
    private static volatile String h = "facebook.com";
    private static AtomicLong i = new AtomicLong(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
    private static volatile boolean j = false;
    private static boolean k = false;
    private static int n = 64206;
    private static final Object o = new Object();
    private static final BlockingQueue<Runnable> p = new LinkedBlockingQueue(10);
    private static final ThreadFactory q = new x();
    private static Boolean r = false;

    public static synchronized void a(Context context) {
        a(context, null);
    }

    public static synchronized void a(Context context, aa aaVar) {
        if (r.booleanValue()) {
            if (aaVar != null) {
                aaVar.a();
            }
        } else {
            com.facebook.i.az.a(context, "applicationContext");
            com.facebook.i.az.b(context, false);
            com.facebook.i.az.a(context, false);
            m = context.getApplicationContext();
            c(m);
            com.facebook.i.as.a(m, f3051d);
            com.facebook.i.ah.b();
            com.facebook.i.h.a(m);
            l = new com.facebook.i.ae<>(new y());
            d().execute(new FutureTask(new z(aaVar)));
            r = true;
        }
    }

    public static synchronized boolean a() {
        return r.booleanValue();
    }

    public static boolean a(av avVar) {
        boolean z;
        synchronized (f3049b) {
            z = b() && f3049b.contains(avVar);
        }
        return z;
    }

    public static boolean b() {
        return j;
    }

    public static boolean c() {
        return k;
    }

    public static Executor d() {
        synchronized (o) {
            if (f3050c == null) {
                f3050c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return f3050c;
    }

    public static String e() {
        return h;
    }

    public static Context f() {
        com.facebook.i.az.b();
        return m;
    }

    public static String g() {
        return "4.6.0";
    }

    public static boolean b(Context context) {
        com.facebook.i.az.b();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static long h() {
        com.facebook.i.az.b();
        return i.get();
    }

    static void c(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (f3051d == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                f3051d = str.substring(2);
                            } else {
                                f3051d = str;
                            }
                        } else if (obj instanceof Integer) {
                            throw new q("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (f3052e == null) {
                        f3052e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f3053f == null) {
                        f3053f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (f3054g == 0) {
                        a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                    }
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
    }

    public static String i() {
        com.facebook.i.az.b();
        return f3051d;
    }

    public static String j() {
        com.facebook.i.az.b();
        return f3053f;
    }

    public static int k() {
        com.facebook.i.az.b();
        return f3054g;
    }

    public static void a(int i2) {
        f3054g = i2;
    }

    public static int l() {
        com.facebook.i.az.b();
        return n;
    }
}
