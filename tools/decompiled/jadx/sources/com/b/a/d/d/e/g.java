package com.b.a.d.d.e;

import com.b.a.d.b.z;
import com.b.a.d.c.j;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: GifBitmapWrapperStreamResourceDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements com.b.a.d.e<InputStream, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.e<j, a> f1095a;

    public g(com.b.a.d.e<j, a> eVar) {
        this.f1095a = eVar;
    }

    @Override // com.b.a.d.e
    public z<a> a(InputStream inputStream, int i, int i2) throws IOException {
        return this.f1095a.a(new j(inputStream, null), i, i2);
    }

    @Override // com.b.a.d.e
    public String a() {
        return this.f1095a.a();
    }
}
