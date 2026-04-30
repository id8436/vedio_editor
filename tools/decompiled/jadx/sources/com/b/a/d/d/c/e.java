package com.b.a.d.d.c;

import com.b.a.d.c.v;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamFileDataLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements com.b.a.g.b<InputStream, File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g f1029a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.e<File, File> f1030b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.b<InputStream> f1031c = new v();

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, File> a() {
        return this.f1030b;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<InputStream, File> b() {
        return f1029a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<InputStream> c() {
        return this.f1031c;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<File> d() {
        return com.b.a.d.d.b.b();
    }
}
