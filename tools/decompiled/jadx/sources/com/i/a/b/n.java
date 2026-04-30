package com.i.a.b;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageLoaderConfiguration.java */
/* JADX INFO: loaded from: classes3.dex */
class n implements com.i.a.b.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.i.a.b.d.c f3360a;

    public n(com.i.a.b.d.c cVar) {
        this.f3360a = cVar;
    }

    @Override // com.i.a.b.d.c
    public InputStream a(String str, Object obj) throws IOException {
        InputStream inputStreamA = this.f3360a.a(str, obj);
        switch (com.i.a.b.d.d.a(str)) {
            case HTTP:
            case HTTPS:
                return new com.i.a.b.a.d(inputStreamA);
            default:
                return inputStreamA;
        }
    }
}
