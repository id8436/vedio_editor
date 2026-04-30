package com.b.a.d.d.d;

import android.content.Context;
import com.b.a.d.c.v;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: GifDrawableLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements com.b.a.g.b<InputStream, b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f1048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f1049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f1050c = new v();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.d.c.c<b> f1051d;

    public d(Context context, com.b.a.d.b.a.e eVar) {
        this.f1048a = new p(context, eVar);
        this.f1051d = new com.b.a.d.d.c.c<>(this.f1048a);
        this.f1049b = new s(eVar);
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, b> a() {
        return this.f1051d;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<InputStream, b> b() {
        return this.f1048a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<InputStream> c() {
        return this.f1050c;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<b> d() {
        return this.f1049b;
    }
}
