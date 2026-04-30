package com.i.a.b.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Build;
import com.i.a.b.a.f;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: BaseImageDecoder.java */
/* JADX INFO: loaded from: classes3.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final boolean f3289a;

    public a(boolean z) {
        this.f3289a = z;
    }

    @Override // com.i.a.b.b.d
    public Bitmap a(e eVar) throws IOException {
        InputStream inputStreamB = b(eVar);
        try {
            c cVarA = a(inputStreamB, eVar);
            inputStreamB = b(inputStreamB, eVar);
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamB, null, a(cVarA.f3292a, eVar));
            if (bitmapDecodeStream == null) {
                com.i.a.c.e.d("Image can't be decoded [%s]", eVar.a());
                return bitmapDecodeStream;
            }
            return a(bitmapDecodeStream, eVar, cVarA.f3293b.f3290a, cVarA.f3293b.f3291b);
        } finally {
            com.i.a.c.c.a((Closeable) inputStreamB);
        }
    }

    protected InputStream b(e eVar) throws IOException {
        return eVar.f().a(eVar.b(), eVar.g());
    }

    protected c a(InputStream inputStream, e eVar) throws IOException {
        b bVar;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        String strB = eVar.b();
        if (eVar.h() && a(strB, options.outMimeType)) {
            bVar = a(strB);
        } else {
            bVar = new b();
        }
        return new c(new f(options.outWidth, options.outHeight, bVar.f3290a), bVar);
    }

    private boolean a(String str, String str2) {
        return Build.VERSION.SDK_INT >= 5 && "image/jpeg".equalsIgnoreCase(str2) && com.i.a.b.d.d.a(str) == com.i.a.b.d.d.FILE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected b a(String str) {
        int i = 0;
        boolean z = true;
        try {
        } catch (IOException e2) {
            com.i.a.c.e.c("Can't read EXIF tags from file [%s]", str);
        }
        switch (new ExifInterface(com.i.a.b.d.d.FILE.c(str)).getAttributeInt("Orientation", 1)) {
            case 1:
            default:
                z = false;
                break;
            case 2:
                break;
            case 3:
                z = false;
                i = 180;
                break;
            case 4:
                i = 180;
                break;
            case 5:
                i = 270;
                break;
            case 6:
                z = false;
                i = 90;
                break;
            case 7:
                i = 90;
                break;
            case 8:
                z = false;
                i = 270;
                break;
        }
        return new b(i, z);
    }

    protected BitmapFactory.Options a(f fVar, e eVar) {
        int iA;
        com.i.a.b.a.e eVarD = eVar.d();
        if (eVarD == com.i.a.b.a.e.NONE) {
            iA = com.i.a.c.a.a(fVar);
        } else {
            iA = com.i.a.c.a.a(fVar, eVar.c(), eVar.e(), eVarD == com.i.a.b.a.e.IN_SAMPLE_POWER_OF_2);
        }
        if (iA > 1 && this.f3289a) {
            com.i.a.c.e.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", fVar, fVar.a(iA), Integer.valueOf(iA), eVar.a());
        }
        BitmapFactory.Options optionsI = eVar.i();
        optionsI.inSampleSize = iA;
        return optionsI;
    }

    protected InputStream b(InputStream inputStream, e eVar) throws IOException {
        try {
            inputStream.reset();
            return inputStream;
        } catch (IOException e2) {
            com.i.a.c.c.a((Closeable) inputStream);
            return b(eVar);
        }
    }

    protected Bitmap a(Bitmap bitmap, e eVar, int i, boolean z) {
        Matrix matrix = new Matrix();
        com.i.a.b.a.e eVarD = eVar.d();
        if (eVarD == com.i.a.b.a.e.EXACTLY || eVarD == com.i.a.b.a.e.EXACTLY_STRETCHED) {
            f fVar = new f(bitmap.getWidth(), bitmap.getHeight(), i);
            float fB = com.i.a.c.a.b(fVar, eVar.c(), eVar.e(), eVarD == com.i.a.b.a.e.EXACTLY_STRETCHED);
            if (Float.compare(fB, 1.0f) != 0) {
                matrix.setScale(fB, fB);
                if (this.f3289a) {
                    com.i.a.c.e.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", fVar, fVar.a(fB), Float.valueOf(fB), eVar.a());
                }
            }
        }
        if (z) {
            matrix.postScale(-1.0f, 1.0f);
            if (this.f3289a) {
                com.i.a.c.e.a("Flip image horizontally [%s]", eVar.a());
            }
        }
        if (i != 0) {
            matrix.postRotate(i);
            if (this.f3289a) {
                com.i.a.c.e.a("Rotate image on %1$d° [%2$s]", Integer.valueOf(i), eVar.a());
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }
}
