package com.l.a.a;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: LogSupport.java */
/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Logger f3579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Level f3580c = Level.FINE;

    static {
        f3578a = false;
        try {
            f3578a = Boolean.getBoolean("javax.activation.debug");
        } catch (Throwable th) {
        }
        f3579b = Logger.getLogger("javax.activation");
    }

    public static void a(String str) {
        if (f3578a) {
            System.out.println(str);
        }
        f3579b.log(f3580c, str);
    }

    public static void a(String str, Throwable th) {
        if (f3578a) {
            System.out.println(new StringBuffer().append(str).append("; Exception: ").append(th).toString());
        }
        f3579b.log(f3580c, str, th);
    }

    public static boolean a() {
        return f3578a || f3579b.isLoggable(f3580c);
    }
}
