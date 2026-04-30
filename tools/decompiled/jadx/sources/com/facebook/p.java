package com.facebook;

/* JADX INFO: compiled from: FacebookDialogException.java */
/* JADX INFO: loaded from: classes2.dex */
public class p extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3034b;

    public p(String str, int i, String str2) {
        super(str);
        this.f3033a = i;
        this.f3034b = str2;
    }

    public int a() {
        return this.f3033a;
    }

    public String b() {
        return this.f3034b;
    }

    @Override // com.facebook.q, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + a() + ", message: " + getMessage() + ", url: " + b() + "}";
    }
}
