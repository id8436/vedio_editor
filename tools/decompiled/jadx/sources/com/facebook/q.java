package com.facebook;

/* JADX INFO: compiled from: FacebookException.java */
/* JADX INFO: loaded from: classes2.dex */
public class q extends RuntimeException {
    public q() {
    }

    public q(String str) {
        super(str);
    }

    public q(String str, Throwable th) {
        super(str, th);
    }

    public q(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
