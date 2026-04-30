package com.l.a.a;

/* JADX INFO: compiled from: MimeTypeEntry.java */
/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3593b;

    public f(String str, String str2) {
        this.f3592a = str;
        this.f3593b = str2;
    }

    public String a() {
        return this.f3592a;
    }

    public String toString() {
        return new StringBuffer().append("MIMETypeEntry: ").append(this.f3592a).append(", ").append(this.f3593b).toString();
    }
}
