package com.facebook.h;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.v4.util.Pools;
import android.util.Pair;
import com.facebook.d.d.k;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: BitmapUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pools.SynchronizedPool<ByteBuffer> f2265a = new Pools.SynchronizedPool<>(12);

    @SuppressLint({"NewApi"})
    public static int a(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT > 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e2) {
            }
        }
        if (Build.VERSION.SDK_INT >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    @Nullable
    public static Pair<Integer, Integer> a(InputStream inputStream) {
        Pair<Integer, Integer> pair = null;
        k.a(inputStream);
        ByteBuffer byteBufferAcquire = f2265a.acquire();
        if (byteBufferAcquire == null) {
            byteBufferAcquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = byteBufferAcquire.array();
            BitmapFactory.decodeStream(inputStream, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            return pair;
        } finally {
            f2265a.release(byteBufferAcquire);
        }
    }

    public static int a(Bitmap.Config config) {
        switch (b.f2266a[config.ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 1;
            case 3:
            case 4:
                return 2;
            default:
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
        }
    }

    public static int a(int i, int i2, Bitmap.Config config) {
        return i * i2 * a(config);
    }
}
