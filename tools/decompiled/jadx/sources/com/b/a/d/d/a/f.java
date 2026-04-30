package com.b.a.d.d.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: compiled from: Downsampler.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f implements a<InputStream> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<q> f972d = EnumSet.of(q.JPEG, q.PNG_A, q.PNG);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Queue<BitmapFactory.Options> f973e = com.b.a.j.h.a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f969a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f970b = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f971c = new i();

    protected abstract int a(int i, int i2, int i3, int i4);

    public Bitmap a(InputStream inputStream, com.b.a.d.b.a.e eVar, int i, int i2, com.b.a.d.a aVar) {
        int i3;
        com.b.a.j.a aVarA = com.b.a.j.a.a();
        byte[] bArrB = aVarA.b();
        byte[] bArrB2 = aVarA.b();
        BitmapFactory.Options optionsB = b();
        v vVar = new v(inputStream, bArrB2);
        com.b.a.j.c cVarA = com.b.a.j.c.a(vVar);
        com.b.a.j.f fVar = new com.b.a.j.f(cVarA);
        try {
            cVarA.mark(5242880);
            try {
                try {
                    int iC = new p(cVarA).c();
                    try {
                        cVarA.reset();
                        i3 = iC;
                    } catch (IOException e2) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e2);
                        }
                        i3 = iC;
                    }
                } catch (IOException e3) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot determine the image orientation from header", e3);
                    }
                    try {
                        cVarA.reset();
                        i3 = 0;
                    } catch (IOException e4) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e4);
                        }
                        i3 = 0;
                    }
                }
                optionsB.inTempStorage = bArrB;
                int[] iArrA = a(fVar, vVar, optionsB);
                int i4 = iArrA[0];
                int i5 = iArrA[1];
                Bitmap bitmapA = a(fVar, vVar, optionsB, eVar, i4, i5, a(z.a(i3), i4, i5, i, i2), aVar);
                IOException iOExceptionA = cVarA.a();
                if (iOExceptionA != null) {
                    throw new RuntimeException(iOExceptionA);
                }
                Bitmap bitmapA2 = null;
                if (bitmapA != null) {
                    bitmapA2 = z.a(bitmapA, eVar, i3);
                    if (!bitmapA.equals(bitmapA2) && !eVar.a(bitmapA)) {
                        bitmapA.recycle();
                    }
                }
                return bitmapA2;
            } finally {
            }
        } finally {
            aVarA.a(bArrB);
            aVarA.a(bArrB2);
            cVarA.b();
            a(optionsB);
        }
    }

    private int a(int i, int i2, int i3, int i4, int i5) {
        int iA;
        if (i5 == Integer.MIN_VALUE) {
            i5 = i3;
        }
        if (i4 == Integer.MIN_VALUE) {
            i4 = i2;
        }
        if (i == 90 || i == 270) {
            iA = a(i3, i2, i4, i5);
        } else {
            iA = a(i2, i3, i4, i5);
        }
        return Math.max(1, iA == 0 ? 0 : Integer.highestOneBit(iA));
    }

    private Bitmap a(com.b.a.j.f fVar, v vVar, BitmapFactory.Options options, com.b.a.d.b.a.e eVar, int i, int i2, int i3, com.b.a.d.a aVar) {
        Bitmap.Config configA = a(fVar, aVar);
        options.inSampleSize = i3;
        options.inPreferredConfig = configA;
        if ((options.inSampleSize == 1 || 19 <= Build.VERSION.SDK_INT) && a(fVar)) {
            a(options, eVar.b((int) Math.ceil(((double) i) / ((double) i3)), (int) Math.ceil(((double) i2) / ((double) i3)), configA));
        }
        return b(fVar, vVar, options);
    }

    private static boolean a(InputStream inputStream) {
        if (19 <= Build.VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        try {
            try {
                boolean zContains = f972d.contains(new p(inputStream).b());
                try {
                    inputStream.reset();
                    return zContains;
                } catch (IOException e2) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e2);
                        return zContains;
                    }
                    return zContains;
                }
            } catch (IOException e3) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot determine the image type from header", e3);
                }
                return false;
            }
        } finally {
            try {
                inputStream.reset();
            } catch (IOException e4) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot reset the input stream", e4);
                }
            }
        }
    }

    private static Bitmap.Config a(InputStream inputStream, com.b.a.d.a aVar) {
        boolean zA;
        if (aVar == com.b.a.d.a.ALWAYS_ARGB_8888 || aVar == com.b.a.d.a.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            return Bitmap.Config.ARGB_8888;
        }
        inputStream.mark(1024);
        try {
            try {
                zA = new p(inputStream).a();
            } catch (IOException e2) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot determine whether the image has alpha or not from header for format " + aVar, e2);
                }
                try {
                    inputStream.reset();
                    zA = false;
                } catch (IOException e3) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e3);
                    }
                    zA = false;
                }
            }
            return zA ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        } finally {
            try {
                inputStream.reset();
            } catch (IOException e4) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot reset the input stream", e4);
                }
            }
        }
    }

    public int[] a(com.b.a.j.f fVar, v vVar, BitmapFactory.Options options) {
        options.inJustDecodeBounds = true;
        b(fVar, vVar, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static Bitmap b(com.b.a.j.f fVar, v vVar, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            fVar.mark(5242880);
        } else {
            vVar.a();
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fVar, null, options);
        try {
            if (options.inJustDecodeBounds) {
                fVar.reset();
            }
        } catch (IOException e2) {
            if (Log.isLoggable("Downsampler", 6)) {
                Log.e("Downsampler", "Exception loading inDecodeBounds=" + options.inJustDecodeBounds + " sample=" + options.inSampleSize, e2);
            }
        }
        return bitmapDecodeStream;
    }

    @TargetApi(11)
    private static void a(BitmapFactory.Options options, Bitmap bitmap) {
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = bitmap;
        }
    }

    @TargetApi(11)
    private static synchronized BitmapFactory.Options b() {
        BitmapFactory.Options optionsPoll;
        synchronized (f973e) {
            optionsPoll = f973e.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            b(optionsPoll);
        }
        return optionsPoll;
    }

    private static void a(BitmapFactory.Options options) {
        b(options);
        synchronized (f973e) {
            f973e.offer(options);
        }
    }

    @TargetApi(11)
    private static void b(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }
}
