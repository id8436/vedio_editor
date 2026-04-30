package com.facebook;

/* JADX INFO: compiled from: FacebookServiceException.java */
/* JADX INFO: loaded from: classes2.dex */
public class ac extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f1753a;

    public ac(s sVar, String str) {
        super(str);
        this.f1753a = sVar;
    }

    public final s a() {
        return this.f1753a;
    }

    @Override // com.facebook.q, java.lang.Throwable
    public final String toString() {
        return "{FacebookServiceException: httpResponseCode: " + this.f1753a.a() + ", facebookErrorCode: " + this.f1753a.b() + ", facebookErrorType: " + this.f1753a.c() + ", message: " + this.f1753a.d() + "}";
    }
}
