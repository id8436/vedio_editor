package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;

/* JADX INFO: compiled from: FileDescriptorBitmapDataLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements com.b.a.g.b<ParcelFileDescriptor, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.e<File, Bitmap> f974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k f975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f976c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.b<ParcelFileDescriptor> f977d = com.b.a.d.d.a.b();

    public j(com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this.f974a = new com.b.a.d.d.c.c(new y(eVar, aVar));
        this.f975b = new k(eVar, aVar);
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<File, Bitmap> a() {
        return this.f974a;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.e<ParcelFileDescriptor, Bitmap> b() {
        return this.f975b;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.b<ParcelFileDescriptor> c() {
        return this.f977d;
    }

    @Override // com.b.a.g.b
    public com.b.a.d.f<Bitmap> d() {
        return this.f976c;
    }
}
