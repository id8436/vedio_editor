package com.b.a.d.d.a;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.OutputStream;

/* JADX INFO: compiled from: BitmapEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements com.b.a.d.f<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap.CompressFormat f964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f965b;

    public b() {
        this(null, 90);
    }

    public b(Bitmap.CompressFormat compressFormat, int i) {
        this.f964a = compressFormat;
        this.f965b = i;
    }

    @Override // com.b.a.d.b
    public boolean a(com.b.a.d.b.z<Bitmap> zVar, OutputStream outputStream) {
        Bitmap bitmapB = zVar.b();
        long jA = com.b.a.j.d.a();
        Bitmap.CompressFormat compressFormatA = a(bitmapB);
        bitmapB.compress(compressFormatA, this.f965b, outputStream);
        if (Log.isLoggable("BitmapEncoder", 2)) {
            Log.v("BitmapEncoder", "Compressed with type: " + compressFormatA + " of size " + com.b.a.j.h.a(bitmapB) + " in " + com.b.a.j.d.a(jA));
            return true;
        }
        return true;
    }

    @Override // com.b.a.d.b
    public String a() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }

    private Bitmap.CompressFormat a(Bitmap bitmap) {
        if (this.f964a != null) {
            return this.f964a;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }
}
