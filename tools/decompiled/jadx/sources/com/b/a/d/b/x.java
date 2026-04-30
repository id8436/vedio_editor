package com.b.a.d.b;

/* JADX INFO: compiled from: ErrorWrappingGlideException.java */
/* JADX INFO: loaded from: classes2.dex */
public class x extends Exception {
    public x(Error error) {
        super(error);
        if (error == null) {
            throw new NullPointerException("The causing error must not be null");
        }
    }

    @Override // java.lang.Throwable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Error getCause() {
        return (Error) super.getCause();
    }
}
