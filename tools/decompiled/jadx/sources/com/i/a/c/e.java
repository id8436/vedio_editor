package com.i.a.c;

import android.util.Log;

/* JADX INFO: compiled from: L.java */
/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f3398a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f3399b = true;

    public static void a(boolean z) {
        f3398a = z;
    }

    public static void a(String str, Object... objArr) {
        if (f3398a) {
            a(3, null, str, objArr);
        }
    }

    public static void b(String str, Object... objArr) {
        a(4, null, str, objArr);
    }

    public static void c(String str, Object... objArr) {
        a(5, null, str, objArr);
    }

    public static void a(Throwable th) {
        a(6, th, null, new Object[0]);
    }

    public static void d(String str, Object... objArr) {
        a(6, null, str, objArr);
    }

    private static void a(int i, Throwable th, String str, Object... objArr) {
        if (f3399b) {
            String message = objArr.length > 0 ? String.format(str, objArr) : str;
            if (th != null) {
                if (message == null) {
                    message = th.getMessage();
                }
                message = String.format("%1$s\n%2$s", message, Log.getStackTraceString(th));
            }
            Log.println(i, com.i.a.b.g.f3338a, message);
        }
    }
}
