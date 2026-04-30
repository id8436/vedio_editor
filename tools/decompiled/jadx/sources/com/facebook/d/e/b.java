package com.facebook.d.e;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: compiled from: FLogDefaultLoggingDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f1944a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1945b = "unknown";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1946c = 5;

    public static b a() {
        return f1944a;
    }

    private b() {
    }

    @Override // com.facebook.d.e.c
    public boolean a(int i) {
        return this.f1946c <= i;
    }

    @Override // com.facebook.d.e.c
    public void a(String str, String str2) {
        a(2, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void b(String str, String str2) {
        a(3, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void c(String str, String str2) {
        a(4, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void d(String str, String str2) {
        a(5, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void a(String str, String str2, Throwable th) {
        a(5, str, str2, th);
    }

    @Override // com.facebook.d.e.c
    public void e(String str, String str2) {
        a(6, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void b(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    @Override // com.facebook.d.e.c
    public void f(String str, String str2) {
        a(6, str, str2);
    }

    @Override // com.facebook.d.e.c
    public void c(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    private void a(int i, String str, String str2) {
        Log.println(i, a(str), str2);
    }

    private void a(int i, String str, String str2, Throwable th) {
        Log.println(i, a(str), a(str2, th));
    }

    private String a(String str) {
        if (this.f1945b != null) {
            return this.f1945b + ":" + str;
        }
        return str;
    }

    private static String a(String str, Throwable th) {
        return str + '\n' + a(th);
    }

    private static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
