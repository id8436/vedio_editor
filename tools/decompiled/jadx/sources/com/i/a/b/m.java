package com.i.a.b;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageLoaderConfiguration.java */
/* JADX INFO: loaded from: classes3.dex */
class m implements com.i.a.b.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.i.a.b.d.c f3359a;

    public m(com.i.a.b.d.c cVar) {
        this.f3359a = cVar;
    }

    @Override // com.i.a.b.d.c
    public InputStream a(String str, Object obj) throws IOException {
        switch (com.i.a.b.d.d.a(str)) {
            case HTTP:
            case HTTPS:
                throw new IllegalStateException();
            default:
                return this.f3359a.a(str, obj);
        }
    }
}
