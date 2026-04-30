package com.facebook.c.b;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
enum f {
    CONTENT(".cnt"),
    TEMP(".tmp");


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1872c;

    f(String str) {
        this.f1872c = str;
    }

    public static f a(String str) {
        if (".cnt".equals(str)) {
            return CONTENT;
        }
        if (".tmp".equals(str)) {
            return TEMP;
        }
        return null;
    }
}
