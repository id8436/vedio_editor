package com.b.a.d.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: compiled from: ByteArrayFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f769b;

    public b(byte[] bArr, String str) {
        this.f768a = bArr;
        this.f769b = str;
    }

    @Override // com.b.a.d.a.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public InputStream a(com.b.a.k kVar) {
        return new ByteArrayInputStream(this.f768a);
    }

    @Override // com.b.a.d.a.c
    public void a() {
    }

    @Override // com.b.a.d.a.c
    public String b() {
        return this.f769b;
    }

    @Override // com.b.a.d.a.c
    public void c() {
    }
}
