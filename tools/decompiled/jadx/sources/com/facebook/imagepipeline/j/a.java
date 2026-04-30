package com.facebook.imagepipeline.j;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.util.Pools;
import com.facebook.d.d.k;
import com.facebook.imagepipeline.memory.h;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: ArtDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
@TargetApi(21)
public class a implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f2590c = {-1, -39};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Pools.SynchronizedPool<ByteBuffer> f2591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f2592b;

    public a(h hVar, int i, Pools.SynchronizedPool synchronizedPool) {
        this.f2592b = hVar;
        this.f2591a = synchronizedPool;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2591a.release(ByteBuffer.allocate(16384));
        }
    }

    @Override // com.facebook.imagepipeline.j.e
    public com.facebook.d.h.a<Bitmap> a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config) {
        BitmapFactory.Options optionsB = b(dVar, config);
        boolean z = optionsB.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return a(dVar.d(), optionsB);
        } catch (RuntimeException e2) {
            if (z) {
                return a(dVar, Bitmap.Config.ARGB_8888);
            }
            throw e2;
        }
    }

    @Override // com.facebook.imagepipeline.j.e
    public com.facebook.d.h.a<Bitmap> a(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config, int i) {
        boolean zE = dVar.e(i);
        BitmapFactory.Options optionsB = b(dVar, config);
        InputStream inputStreamD = dVar.d();
        k.a(inputStreamD);
        InputStream aVar = dVar.k() > i ? new com.facebook.d.k.a(inputStreamD, i) : inputStreamD;
        InputStream bVar = !zE ? new com.facebook.d.k.b(aVar, f2590c) : aVar;
        boolean z = optionsB.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return a(bVar, optionsB);
        } catch (RuntimeException e2) {
            if (z) {
                return a(dVar, Bitmap.Config.ARGB_8888);
            }
            throw e2;
        }
    }

    protected com.facebook.d.h.a<Bitmap> a(InputStream inputStream, BitmapFactory.Options options) {
        k.a(inputStream);
        Bitmap bitmapA = this.f2592b.a(com.facebook.h.a.a(options.outWidth, options.outHeight, options.inPreferredConfig));
        if (bitmapA == null) {
            throw new NullPointerException("BitmapPool.get returned null");
        }
        options.inBitmap = bitmapA;
        ByteBuffer byteBufferAcquire = this.f2591a.acquire();
        ByteBuffer byteBufferAllocate = byteBufferAcquire == null ? ByteBuffer.allocate(16384) : byteBufferAcquire;
        try {
            try {
                options.inTempStorage = byteBufferAllocate.array();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                if (bitmapA != bitmapDecodeStream) {
                    this.f2592b.a(bitmapA);
                    bitmapDecodeStream.recycle();
                    throw new IllegalStateException();
                }
                return com.facebook.d.h.a.a(bitmapDecodeStream, this.f2592b);
            } catch (RuntimeException e2) {
                this.f2592b.a(bitmapA);
                throw e2;
            }
        } finally {
            this.f2591a.release(byteBufferAllocate);
        }
    }

    private static BitmapFactory.Options b(com.facebook.imagepipeline.h.d dVar, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = dVar.i();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(dVar.d(), null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            throw new IllegalArgumentException();
        }
        options.inJustDecodeBounds = false;
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inMutable = true;
        return options;
    }
}
