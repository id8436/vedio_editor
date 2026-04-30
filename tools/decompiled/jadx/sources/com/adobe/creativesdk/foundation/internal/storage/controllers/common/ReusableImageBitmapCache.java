package com.adobe.creativesdk.foundation.internal.storage.controllers.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.LruCache;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.lang.ref.SoftReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.io.Charsets;

/* JADX INFO: loaded from: classes2.dex */
public class ReusableImageBitmapCache {
    private static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.JPEG;
    private static final int DEFAULT_COMPRESS_QUALITY = 70;
    private static final boolean DEFAULT_DISK_CACHE_ENABLED = true;
    private static final int DEFAULT_DISK_CACHE_SIZE = 10485760;
    private static final boolean DEFAULT_INIT_DISK_CACHE_ON_CREATE = false;
    private static final boolean DEFAULT_MEM_CACHE_ENABLED = true;
    private static final int DEFAULT_MEM_CACHE_SIZE = 5120;
    private static final int DISK_CACHE_INDEX = 0;
    private static final String TAG = "ImageCache";
    private ImageCacheParams mCacheParams;
    private final Object mDiskCacheLock = new Object();
    private boolean mDiskCacheStarting = true;
    private LruCache<String, BitmapDrawable> mMemoryCache;
    private Set<SoftReference<Bitmap>> mReusableBitmaps;

    private ReusableImageBitmapCache(ImageCacheParams imageCacheParams) {
        init(imageCacheParams);
    }

    public static ReusableImageBitmapCache getInstance(FragmentManager fragmentManager, ImageCacheParams imageCacheParams) {
        RetainFragment retainFragmentFindOrCreateRetainFragment = findOrCreateRetainFragment(fragmentManager);
        ReusableImageBitmapCache reusableImageBitmapCache = (ReusableImageBitmapCache) retainFragmentFindOrCreateRetainFragment.getObject();
        if (reusableImageBitmapCache == null) {
            ReusableImageBitmapCache reusableImageBitmapCache2 = new ReusableImageBitmapCache(imageCacheParams);
            retainFragmentFindOrCreateRetainFragment.setObject(reusableImageBitmapCache2);
            return reusableImageBitmapCache2;
        }
        return reusableImageBitmapCache;
    }

    private void init(ImageCacheParams imageCacheParams) {
        this.mCacheParams = imageCacheParams;
        if (this.mCacheParams.memoryCacheEnabled) {
            if (PlatformCommonUtils.hasHoneycomb()) {
                this.mReusableBitmaps = Collections.synchronizedSet(new HashSet());
            }
            this.mMemoryCache = new LruCache<String, BitmapDrawable>(this.mCacheParams.memCacheSize) { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapCache.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v4.util.LruCache
                public void entryRemoved(boolean z, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                    if (PlatformCommonUtils.hasHoneycomb()) {
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v4.util.LruCache
                public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                    int bitmapSize = ReusableImageBitmapCache.getBitmapSize(bitmapDrawable) / 1024;
                    if (bitmapSize == 0) {
                        return 1;
                    }
                    return bitmapSize;
                }
            };
        }
    }

    public void addBitmapToCache(String str, BitmapDrawable bitmapDrawable) {
        if (str != null && bitmapDrawable != null && this.mMemoryCache != null) {
            this.mMemoryCache.put(str, bitmapDrawable);
        }
    }

    public BitmapDrawable getBitmapFromMemCache(String str) {
        if (this.mMemoryCache == null) {
            return null;
        }
        return this.mMemoryCache.get(str);
    }

    protected Bitmap getBitmapFromReusableSet(BitmapFactory.Options options) {
        Bitmap bitmap;
        if (this.mReusableBitmaps == null || this.mReusableBitmaps.isEmpty()) {
            return null;
        }
        synchronized (this.mReusableBitmaps) {
            Iterator<SoftReference<Bitmap>> it = this.mReusableBitmaps.iterator();
            while (true) {
                if (!it.hasNext()) {
                    bitmap = null;
                    break;
                }
                bitmap = it.next().get();
                if (bitmap != null && bitmap.isMutable()) {
                    if (canUseForInBitmap(bitmap, options)) {
                        it.remove();
                        break;
                    }
                } else {
                    it.remove();
                }
            }
        }
        return bitmap;
    }

    public void clearCache() {
        if (this.mMemoryCache != null) {
            this.mMemoryCache.evictAll();
        }
    }

    public class ImageCacheParams {
        public int memCacheSize = ReusableImageBitmapCache.DEFAULT_MEM_CACHE_SIZE;
        public int diskCacheSize = 10485760;
        public Bitmap.CompressFormat compressFormat = ReusableImageBitmapCache.DEFAULT_COMPRESS_FORMAT;
        public int compressQuality = 70;
        public boolean memoryCacheEnabled = true;

        public void setMemCacheSizePercent(float f2) {
            if (f2 < 0.01f || f2 > 0.8f) {
                throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)");
            }
            this.memCacheSize = Math.round((Runtime.getRuntime().maxMemory() * f2) / 1024.0f);
        }
    }

    @TargetApi(19)
    private static boolean canUseForInBitmap(Bitmap bitmap, BitmapFactory.Options options) {
        return !PlatformCommonUtils.hasKitKat() ? bitmap.getWidth() == options.outWidth && bitmap.getHeight() == options.outHeight && options.inSampleSize == 1 : ((options.outWidth / options.inSampleSize) * (options.outHeight / options.inSampleSize)) * getBytesPerPixel(bitmap.getConfig()) <= bitmap.getAllocationByteCount();
    }

    private static int getBytesPerPixel(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888) {
            return 4;
        }
        if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
            return 2;
        }
        return config == Bitmap.Config.ALPHA_8 ? 1 : 1;
    }

    public static File getDiskCacheDir(Context context, String str) {
        return new File((("mounted".equals(Environment.getExternalStorageState()) || !isExternalStorageRemovable()) ? getExternalCacheDir(context).getPath() : context.getCacheDir().getPath()) + File.separator + str);
    }

    public static String hashKeyForDisk(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(Charsets.UTF_8));
            return bytesToHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            return String.valueOf(str.hashCode());
        }
    }

    private static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    @TargetApi(19)
    public static int getBitmapSize(BitmapDrawable bitmapDrawable) {
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (PlatformCommonUtils.hasKitKat()) {
            return bitmap.getAllocationByteCount();
        }
        if (PlatformCommonUtils.hasHoneycombMR1()) {
            return bitmap.getByteCount();
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    @TargetApi(9)
    public static boolean isExternalStorageRemovable() {
        if (PlatformCommonUtils.hasGingerbread()) {
            return Environment.isExternalStorageRemovable();
        }
        return true;
    }

    @TargetApi(8)
    public static File getExternalCacheDir(Context context) {
        if (PlatformCommonUtils.hasFroyo()) {
            return context.getExternalCacheDir();
        }
        return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/cache/"));
    }

    @TargetApi(9)
    public static long getUsableSpace(File file) {
        if (PlatformCommonUtils.hasGingerbread()) {
            return file.getUsableSpace();
        }
        StatFs statFs = new StatFs(file.getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    private static RetainFragment findOrCreateRetainFragment(FragmentManager fragmentManager) {
        RetainFragment retainFragment = (RetainFragment) fragmentManager.findFragmentByTag(TAG);
        if (retainFragment == null) {
            RetainFragment retainFragment2 = new RetainFragment();
            fragmentManager.beginTransaction().add(retainFragment2, TAG).commitAllowingStateLoss();
            return retainFragment2;
        }
        return retainFragment;
    }

    public class RetainFragment extends Fragment {
        private Object mObject;

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
        }

        public void setObject(Object obj) {
            this.mObject = obj;
        }

        public Object getObject() {
            return this.mObject;
        }
    }
}
