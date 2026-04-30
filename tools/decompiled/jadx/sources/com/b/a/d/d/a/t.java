package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoBitmapDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class t implements com.b.a.d.e<com.b.a.d.c.j, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.d.e<InputStream, Bitmap> f1004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.e<ParcelFileDescriptor, Bitmap> f1005b;

    public t(com.b.a.d.e<InputStream, Bitmap> eVar, com.b.a.d.e<ParcelFileDescriptor, Bitmap> eVar2) {
        this.f1004a = eVar;
        this.f1005b = eVar2;
    }

    @Override // com.b.a.d.e
    public com.b.a.d.b.z<Bitmap> a(com.b.a.d.c.j jVar, int i, int i2) throws IOException {
        com.b.a.d.b.z<Bitmap> zVarA;
        ParcelFileDescriptor parcelFileDescriptorB;
        InputStream inputStreamA = jVar.a();
        if (inputStreamA == null) {
            zVarA = null;
        } else {
            try {
                zVarA = this.f1004a.a(inputStreamA, i, i2);
            } catch (IOException e2) {
                if (Log.isLoggable("ImageVideoDecoder", 2)) {
                    Log.v("ImageVideoDecoder", "Failed to load image from stream, trying FileDescriptor", e2);
                }
                zVarA = null;
            }
        }
        if (zVarA == null && (parcelFileDescriptorB = jVar.b()) != null) {
            return this.f1005b.a(parcelFileDescriptorB, i, i2);
        }
        return zVarA;
    }

    @Override // com.b.a.d.e
    public String a() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }
}
