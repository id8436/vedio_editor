package com.b.a.d.c.b;

import java.io.InputStream;

/* JADX INFO: compiled from: StreamByteArrayLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements g<byte[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f916a;

    public c() {
        this("");
    }

    @Deprecated
    public c(String str) {
        this.f916a = str;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<InputStream> a(byte[] bArr, int i, int i2) {
        return new com.b.a.d.a.b(bArr, this.f916a);
    }
}
