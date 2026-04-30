package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import android.util.LruCache;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.util.SimpleDiskCache;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class BitmapCache {
    private static final int IMAGE_QUALITY = 85;
    private static final long MAX_DISK_CACHE_SIZE = 52428800;
    private static final long MIN_DISK_CACHE_SIZE = 5242880;
    private static final String TAG = "BitmapCache";
    private static final int VERSION_CODE = 1316;
    private static LruCache<String, Bitmap> cache;
    private static HashMap<String, Boolean> dirty;
    private static SimpleDiskCache diskCache;
    private static boolean isInit = false;
    private static final Object mDiskCacheLock = new Object();
    private static boolean mDiskCacheStarting = true;
    private static boolean mIsDiskCacheAvailable = true;
    private static int diskHitCount = 0;
    private static int diskMissCount = 0;

    public static void init() {
        if (!isInit) {
            initializeDiskCache();
            initializeMemoryCache();
            dirty = new HashMap<>();
            isInit = true;
        }
    }

    private static void initializeDiskCache() {
        new InitDiskCacheTask().execute(Utilities.getDiskCacheDir(PremiereClipApplication.getContext()));
    }

    /* JADX INFO: loaded from: classes2.dex */
    class InitDiskCacheTask extends AsyncTask<File, Void, Void> {
        InitDiskCacheTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(File... fileArr) {
            synchronized (BitmapCache.mDiskCacheLock) {
                File file = fileArr[0];
                long jMin = Math.min(Environment.getExternalStorageDirectory().getUsableSpace() / 8, BitmapCache.MAX_DISK_CACHE_SIZE);
                Log.d("DISK_CACHE_SIZE", "" + jMin + ":5242880");
                if (jMin >= 5242880) {
                    try {
                        SimpleDiskCache unused = BitmapCache.diskCache = SimpleDiskCache.open(file, 1316, jMin);
                    } catch (IOException e2) {
                        SimpleDiskCache unused2 = BitmapCache.diskCache = null;
                        e2.printStackTrace();
                    }
                    if (BitmapCache.diskCache == null) {
                        boolean unused3 = BitmapCache.mIsDiskCacheAvailable = false;
                    }
                } else {
                    Log.d("DISK_CACHE", "Disk cache not available");
                    boolean unused4 = BitmapCache.mIsDiskCacheAvailable = false;
                }
                boolean unused5 = BitmapCache.mDiskCacheStarting = false;
                BitmapCache.mDiskCacheLock.notifyAll();
            }
            return null;
        }
    }

    private static void initializeMemoryCache() {
        cache = new LruCache<String, Bitmap>(((int) (Runtime.getRuntime().maxMemory() / 1024)) / 6) { // from class: com.adobe.premiereclip.util.BitmapCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(String str, Bitmap bitmap) {
                return bitmap.getByteCount() / 1024;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
                super.entryRemoved(z, str, bitmap, bitmap2);
                if (bitmap != null && !bitmap.isRecycled()) {
                    Log.d(BitmapCache.TAG, "recycled an evicted bitmap");
                    bitmap.recycle();
                }
            }
        };
    }

    public static void addBitmapToMemoryCache(String str, Bitmap bitmap) {
        if (str != null && bitmap != null && getBitmapFromMemoryCache(str) == null) {
            dirty.put(str, false);
            cache.put(str, bitmap);
        }
    }

    public static void addBitmapToDiskCache(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            synchronized (mDiskCacheLock) {
                while (mDiskCacheStarting) {
                    try {
                        mDiskCacheLock.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                if (mIsDiskCacheAvailable && diskCache != null) {
                    OutputStream outputStreamOpenStream = null;
                    try {
                        try {
                            if (!bitmap.isRecycled() && (outputStreamOpenStream = diskCache.openStream(str)) != null) {
                                bitmap.compress(Bitmap.CompressFormat.JPEG, 85, outputStreamOpenStream);
                            }
                            if (outputStreamOpenStream != null) {
                                try {
                                    outputStreamOpenStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                        } catch (Throwable th) {
                            if (outputStreamOpenStream != null) {
                                try {
                                    outputStreamOpenStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        if (outputStreamOpenStream != null) {
                            try {
                                outputStreamOpenStream.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class ClearDiskCacheTask extends AsyncTask<Void, Void, Void> {
        ClearDiskCacheTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            synchronized (BitmapCache.mDiskCacheLock) {
                while (BitmapCache.mDiskCacheStarting) {
                    try {
                        BitmapCache.mDiskCacheLock.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                if (BitmapCache.mIsDiskCacheAvailable && BitmapCache.diskCache != null) {
                    try {
                        BitmapCache.diskCache.clear();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            return null;
        }
    }

    public static void clearDiskCache() {
        if (!isInit) {
            init();
        }
        new ClearDiskCacheTask().execute(new Void[0]);
    }

    public static Bitmap getBitmapFromMemoryCache(String str) {
        if (!isInit) {
            init();
        }
        Boolean bool = dirty.get(str);
        if (bool == null || !bool.booleanValue()) {
            return cache.get(str);
        }
        return null;
    }

    public static Bitmap getBitmapFromDiskCache(String str) {
        SimpleDiskCache.BitmapEntry bitmap;
        Bitmap bitmap2;
        if (!isInit) {
            init();
        }
        Boolean bool = dirty.get(str);
        if (bool != null && bool.booleanValue()) {
            return null;
        }
        synchronized (mDiskCacheLock) {
            while (mDiskCacheStarting) {
                try {
                    mDiskCacheLock.wait();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (!mIsDiskCacheAvailable || diskCache == null) {
                return null;
            }
            try {
                bitmap = diskCache.getBitmap(str);
            } catch (IOException e3) {
                e3.printStackTrace();
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap2 = bitmap.getBitmap();
                if (bitmap2 != null) {
                    dirty.put(str, false);
                    addBitmapToMemoryCache(str, bitmap2);
                }
                diskHitCount++;
            } else {
                diskMissCount++;
                bitmap2 = null;
            }
            return bitmap2;
        }
    }

    public static Bitmap getBitmap(String str) {
        if (!isInit) {
            init();
        }
        Boolean bool = dirty.get(str);
        if (bool != null && bool.booleanValue()) {
            return null;
        }
        Bitmap bitmapFromMemoryCache = getBitmapFromMemoryCache(str);
        if (bitmapFromMemoryCache == null) {
            return getBitmapFromDiskCache(str);
        }
        return bitmapFromMemoryCache;
    }

    public static void markBitmapDirty(String str) {
        if (str != null) {
            if (!isInit) {
                init();
            }
            if (dirty.containsKey(str)) {
                if (!dirty.get(str).booleanValue()) {
                    dirty.put(str, true);
                    removeBitmapFromDiskCache(str);
                    return;
                }
                return;
            }
            removeBitmapFromDiskCache(str);
        }
    }

    private static void removeBitmapFromDiskCache(String str) {
        synchronized (mDiskCacheLock) {
            while (mDiskCacheStarting) {
                try {
                    mDiskCacheLock.wait();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            try {
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            if (mIsDiskCacheAvailable && diskCache.contains(str) && !diskCache.removeBitmap(str)) {
                Log.d("DISK_CACHE", "Unable to delete file with key: " + str);
            }
        }
    }

    public static void logStats() {
        if (mIsDiskCacheAvailable) {
            Log.v("BitmapCache Stats", "Hit count/Miss count(Disk) = " + diskHitCount + URIUtil.SLASH + diskMissCount);
            Log.v("BitmapCache Stats", "Used size/Total size(Disk) = " + diskCache.getCache().c() + URIUtil.SLASH + diskCache.getCache().b());
        }
        Log.v("BitmapCache Stats", "Hit count/Miss count = " + cache.hitCount() + URIUtil.SLASH + cache.missCount());
        Log.v("BitmapCache Stats", "Used size/Total size = " + cache.size() + URIUtil.SLASH + cache.maxSize());
    }
}
