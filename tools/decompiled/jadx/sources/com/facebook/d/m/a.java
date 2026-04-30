package com.facebook.d.m;

/* JADX INFO: compiled from: ExceptionWithNoStacktrace.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends Exception {
    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }

    public a(String str) {
        super(str);
    }
}
