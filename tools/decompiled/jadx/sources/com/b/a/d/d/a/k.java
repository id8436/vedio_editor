package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: FileDescriptorBitmapDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements com.b.a.d.e<ParcelFileDescriptor, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aa f978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b.a.e f979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.a f980c;

    public k(com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this(new aa(), eVar, aVar);
    }

    public k(aa aaVar, com.b.a.d.b.a.e eVar, com.b.a.d.a aVar) {
        this.f978a = aaVar;
        this.f979b = eVar;
        this.f980c = aVar;
    }

    @Override // com.b.a.d.e
    public com.b.a.d.b.z<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2) throws IOException {
        return c.a(this.f978a.a(parcelFileDescriptor, this.f979b, i, i2, this.f980c), this.f979b);
    }

    @Override // com.b.a.d.e
    public String a() {
        return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
    }
}
