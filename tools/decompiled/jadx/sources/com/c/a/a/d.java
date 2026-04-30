package com.c.a.a;

/* JADX INFO: compiled from: MalformedUriTemplateException.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1301a;

    public d(String str, int i, Throwable th) {
        super(str, th);
        this.f1301a = i;
    }

    public d(String str, int i) {
        super(str);
        this.f1301a = i;
    }
}
