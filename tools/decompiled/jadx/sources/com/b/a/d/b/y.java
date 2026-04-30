package com.b.a.d.b;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/* JADX INFO: compiled from: OriginalKey.java */
/* JADX INFO: loaded from: classes2.dex */
class y implements com.b.a.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.c f911b;

    public y(String str, com.b.a.d.c cVar) {
        this.f910a = str;
        this.f911b = cVar;
    }

    @Override // com.b.a.d.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        return this.f910a.equals(yVar.f910a) && this.f911b.equals(yVar.f911b);
    }

    @Override // com.b.a.d.c
    public int hashCode() {
        return (this.f910a.hashCode() * 31) + this.f911b.hashCode();
    }

    @Override // com.b.a.d.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.f910a.getBytes("UTF-8"));
        this.f911b.a(messageDigest);
    }
}
