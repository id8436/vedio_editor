package com.twitter.sdk.android.core;

import android.util.Log;

/* JADX INFO: compiled from: DefaultLogger.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3870a;

    public d(int i) {
        this.f3870a = i;
    }

    public d() {
        this.f3870a = 4;
    }

    public boolean a(String str, int i) {
        return this.f3870a <= i;
    }

    @Override // com.twitter.sdk.android.core.j
    public void a(String str, String str2, Throwable th) {
        if (a(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.j
    public void b(String str, String str2, Throwable th) {
        if (a(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.j
    public void c(String str, String str2, Throwable th) {
        if (a(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.j
    public void a(String str, String str2) {
        a(str, str2, (Throwable) null);
    }

    @Override // com.twitter.sdk.android.core.j
    public void b(String str, String str2) {
        b(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.j
    public void c(String str, String str2) {
        c(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.j
    public void a(int i, String str, String str2) {
        a(i, str, str2, false);
    }

    public void a(int i, String str, String str2, boolean z) {
        if (z || a(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
