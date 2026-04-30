package com.adobe.creativesdk.foundation.internal.cache;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.lang3.time.DateUtils;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommonCacheInstance {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int evictionTimePeriod = 60000;
    private String cacheAdobeId;
    private String cacheDir;
    private boolean cacheFrozen;
    private int cacheMisses;
    private String cacheName;
    private int diskCacheHits;
    private double diskCacheSize;
    private AdobeCommonCachePolicies evictionPolicy;
    private final ExecutorService executorService;
    private AdobeMemCache memCache;
    private int memCacheHits;
    private double memCacheSize;
    private ScheduledFuture<?> repeatingTimer;
    private final int AdobeCommonCacheNormalCount = 3;
    private final int AdobeCommonCacheCriticalCount = 10;
    private final boolean verboseDebugging = true;
    private final ScheduledExecutorService scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    private boolean useDiskCaching = true;
    private long currentDiskCacheSize = 0;
    private final Comparator<Map.Entry<String, Long>> lruComparator = new Comparator<Map.Entry<String, Long>>() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.1
        @Override // java.util.Comparator
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry.getValue().compareTo(entry2.getValue());
        }
    };
    private final Comparator<Map.Entry<String, Long>> numberComparator = new Comparator<Map.Entry<String, Long>>() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.2
        @Override // java.util.Comparator
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry2.getValue().compareTo(entry.getValue());
        }
    };
    private final Comparator<Date> dateComparator = new Comparator<Date>() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.3
        @Override // java.util.Comparator
        public int compare(Date date, Date date2) {
            return (int) (date.getTime() - date2.getTime());
        }
    };
    private final Map<String, Long> diskCacheCreateTimes = new ConcurrentHashMap();
    private final Map<String, Long> diskCacheAccessTimes = new ConcurrentHashMap();
    private final Map<String, Long> diskCacheObjectSizes = new ConcurrentHashMap();
    private final ReentrantReadWriteLock diskReadWriteLock = new ReentrantReadWriteLock();

    static {
        $assertionsDisabled = !AdobeCommonCacheInstance.class.desiredAssertionStatus();
    }

    AdobeCommonCacheInstance(ExecutorService executorService) {
        this.executorService = executorService;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        clearMemCache();
    }

    private void clearMemCache() {
        this.memCache.evictAll();
    }

    public void clear() {
        clearMemCache();
        if (this.repeatingTimer != null) {
            stopRepeatingTimer();
        }
        try {
            this.diskReadWriteLock.writeLock().lock();
            FileUtils.deleteDirectory(new File(this.cacheDir));
            cacheLog("Cache with cache name " + this.cacheName + " deleted from location " + this.cacheDir);
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Error deleting cache directory", e2);
            cacheLog("Unable to delete cache " + this.cacheName + " from location " + this.cacheDir);
        } finally {
            this.diskReadWriteLock.writeLock().unlock();
        }
    }

    public void disableDiskCaching() {
        this.useDiskCaching = false;
    }

    public String getCacheAdobeId() {
        return this.cacheAdobeId;
    }

    public void configureCache(String str, String str2, String str3, int i, double d2, AdobeCommonCachePolicies adobeCommonCachePolicies, boolean z) {
        String str4;
        if (str2 == null) {
            cacheLog("Cannot configure a cache without an adobeID");
            return;
        }
        this.cacheName = str;
        this.cacheAdobeId = str2;
        this.evictionPolicy = adobeCommonCachePolicies;
        this.memCache = new AdobeMemCache(i);
        String str5 = str + str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            try {
                messageDigest.update(str5.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                AdobeLogger.log(Level.ERROR, "AdobeCommonCache::configureCache", "ConfigureCache failed because of encoding exception", e2);
            }
            String strBytesToHexString = Util.bytesToHexString(messageDigest.digest());
            if (z) {
                str4 = strBytesToHexString + AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG;
            } else {
                str4 = strBytesToHexString + AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG;
            }
            this.cacheDir = str3 + File.separator + str4 + File.separator + this.cacheName;
            this.memCacheSize = i <= 200 ? i : 200.0d;
            if (d2 > 2.68435456E8d) {
                d2 = 2.68435456E8d;
            }
            this.diskCacheSize = d2;
            clearMemCache();
        } catch (NoSuchAlgorithmException e3) {
            AdobeLogger.log(Level.WARN, AdobeCommonCacheInstance.class.getName(), "MD5 Hash not available. Using unencrypted string", e3);
        }
        initDiskCacheMetadata();
        if (!$assertionsDisabled && this.cacheFrozen) {
            throw new AssertionError();
        }
        if (this.currentDiskCacheSize > getNormalEvictionThreshold()) {
            cacheEviction();
        }
        printDiskCacheMetadata();
    }

    protected void printStatistics() {
        cacheLog("=====================================================");
        cacheLog("Cache Stats:");
        cacheLog("");
        int i = this.memCacheHits + this.diskCacheHits + this.cacheMisses;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        if (i != 0) {
            d2 = (100.0d * ((double) this.memCacheHits)) / ((double) i);
            d3 = (100.0d * ((double) this.diskCacheHits)) / ((double) i);
            d4 = (100.0d * ((double) this.cacheMisses)) / ((double) i);
        }
        cacheLog(String.format("%s %6.2f%% %6d", "Memory cache hit rate:", Double.valueOf(d2), Integer.valueOf(this.memCacheHits)));
        cacheLog(String.format("%s %6.2f%% %6d", "Disk cache hit rate:", Double.valueOf(d3), Integer.valueOf(this.diskCacheHits)));
        cacheLog(String.format("%s %6.2f%% %6d", "Cache miss rate:", Double.valueOf(d4), Integer.valueOf(this.cacheMisses)));
        cacheLog(String.format("%s %6.2f%% %6d", "Total:", Double.valueOf(d2 + d3 + d4), Integer.valueOf(i)));
        cacheLog("");
        cacheLog("");
        cacheLog(String.format("Disk Cache Usage: %6.2f%% %d bytes", Double.valueOf((100.0d * this.currentDiskCacheSize) / this.diskCacheSize), Long.valueOf(this.currentDiskCacheSize)));
        cacheLog("");
        cacheLog("=====================================================");
        cacheLog("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheLog(String str) {
        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), str);
    }

    protected void logCacheMiss(String str, Integer num) {
        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "cache miss for path:" + str + " with latency " + num);
    }

    public void addImage(Bitmap bitmap, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet) {
        if (!this.cacheFrozen) {
            if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache) && this.memCacheSize > 0.0d) {
                this.memCache.put(getCacheKey(str, str2), bitmap);
            }
            if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache) && this.diskCacheSize > 0.0d) {
                setImageToDisk(bitmap, str, str2);
            }
        }
    }

    public void addObject(Object obj, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet) throws Throwable {
        if (!this.cacheFrozen) {
            if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache) && this.memCacheSize > 0.0d) {
                this.memCache.put(getCacheKey(str, str2), obj);
            }
            if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache) && this.diskCacheSize > 0.0d) {
                setObjectToDisk(obj, str, str2);
            }
        }
    }

    public boolean containsItemWithGUID(String str, String str2) {
        if (this.memCache.get(getCacheKey(str, str2)) != null) {
            return true;
        }
        String str3 = this.cacheDir + File.separator + getCacheKey(str, str2);
        try {
            this.diskReadWriteLock.readLock().lock();
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Got Read lock in containsItemWithGUID.Current lock count " + this.diskReadWriteLock.getReadLockCount());
            return new File(str3).exists();
        } finally {
            this.diskReadWriteLock.readLock().unlock();
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Released read lock in containsItemWithGUID.Current lock count " + this.diskReadWriteLock.getReadLockCount());
        }
    }

    public void removeItemWithGUID(String str, String str2) {
        if (!this.cacheFrozen) {
            File file = null;
            if (str2 != null) {
                this.memCache.remove(getCacheKey(str, str2));
                file = new File(getCacheDirectoryForGuid(str), str2);
            } else {
                clearMemCache();
            }
            try {
                this.diskReadWriteLock.writeLock().lock();
                if (file != null && file.exists()) {
                    AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Removing " + str2 + " from disk cache");
                    if (!file.delete()) {
                        AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Cannot delete file " + file.getAbsolutePath());
                    }
                    removeEntryFromCacheMetadata(getCacheKey(str, str2));
                }
            } finally {
                this.diskReadWriteLock.writeLock().unlock();
            }
        }
    }

    public void removeSetWithGUID(String str) {
        if (!this.cacheFrozen) {
            try {
                this.diskReadWriteLock.writeLock().lock();
                File cacheDirectoryForGuid = getCacheDirectoryForGuid(str);
                clearMemCache();
                if (cacheDirectoryForGuid.exists() && cacheDirectoryForGuid.isDirectory()) {
                    for (File file : (List) FileUtils.listFiles(cacheDirectoryForGuid, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE)) {
                        String name = file.getName();
                        if (!file.isDirectory() && !name.equalsIgnoreCase("modified-data")) {
                            removeEntryFromCacheMetadata(getCacheKey(str, name));
                        }
                    }
                    try {
                        FileUtils.deleteDirectory(cacheDirectoryForGuid);
                    } catch (IOException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Error deleting directory from cache", e2);
                    }
                }
            } finally {
                this.diskReadWriteLock.writeLock().unlock();
            }
        }
    }

    public void getImageFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, AdobeCommonCacheHandler<Bitmap> adobeCommonCacheHandler, Handler handler) {
        if (str == null || str2 == null) {
            callHitHandler(adobeCommonCacheHandler, handler, null, AdobeCommonCacheHitLocation.AdobeCommonCacheHitLocationMemory);
        } else {
            getImageFromDiskWithGUID(str, str2, enumSet, adobeCommonCacheHandler, handler);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void getObjectFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, AdobeCommonCacheHandler<T> adobeCommonCacheHandler, Handler handler) {
        if (str == null || str2 == null) {
            callHitHandler(adobeCommonCacheHandler, handler, null, AdobeCommonCacheHitLocation.AdobeCommonCacheHitLocationMemory);
            return;
        }
        Date date = new Date();
        Object obj = this.memCache.get(getCacheKey(str, str2));
        if (obj != null) {
            logMemCacheHit(str, str2, new Date().getTime() - date.getTime());
            callHitHandler(adobeCommonCacheHandler, handler, obj, AdobeCommonCacheHitLocation.AdobeCommonCacheHitLocationMemory);
        } else {
            getObjectFromDiskWithGUID(str, str2, enumSet, adobeCommonCacheHandler, handler);
        }
    }

    public <T> T getObjectFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet) {
        if (str == null || str2 == null) {
            return null;
        }
        T t = (T) this.memCache.get(getCacheKey(str, str2));
        if (t == null) {
            return (T) getObjectFromDiskWithGUID(str, str2, enumSet);
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v24, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.FileInputStream] */
    private <T> T getObjectFromDiskWithGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet) {
        ObjectInputStream objectInputStream;
        Object object;
        ClassNotFoundException e2;
        IOException e3;
        Date date = new Date();
        if (this.useDiskCaching) {
            try {
                this.diskReadWriteLock.readLock().lock();
                Level level = Level.INFO;
                ?? name = AdobeCommonCacheInstance.class.getName();
                ?? fileInputStream = "Got Read lock in getObjectFromDiskWithGUID.Current lock count " + this.diskReadWriteLock.getReadLockCount();
                AdobeLogger.log(level, name, fileInputStream);
                File file = new File(getCacheDirectoryForGuid(str), str2);
                try {
                    if (!file.exists()) {
                        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Disk Miss for key " + str2);
                        return null;
                    }
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (IOException e4) {
                        objectInputStream = null;
                        fileInputStream = 0;
                        object = null;
                        e3 = e4;
                    } catch (ClassNotFoundException e5) {
                        objectInputStream = null;
                        fileInputStream = 0;
                        object = null;
                        e2 = e5;
                    } catch (Throwable th) {
                        th = th;
                        name = 0;
                        fileInputStream = 0;
                    }
                    try {
                        objectInputStream = new ObjectInputStream(fileInputStream);
                        try {
                            object = objectInputStream.readObject();
                            logDiskCacheHit(str, str2, new Date().getTime() - date.getTime());
                            addEntryToCacheMetadata(file, getCacheKey(str, str2));
                            try {
                                if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache) && this.memCacheSize > 0.0d) {
                                    this.memCache.put(getCacheKey(str, str2), object);
                                }
                                if (fileInputStream != 0) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e6) {
                                        AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), e6.getMessage(), e6);
                                    }
                                }
                                if (objectInputStream != null) {
                                    objectInputStream.close();
                                }
                            } catch (IOException e7) {
                                e3 = e7;
                                AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Unable to read map from cache", e3);
                                if (fileInputStream != 0) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e8) {
                                        AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), e8.getMessage(), e8);
                                    }
                                }
                                if (objectInputStream != null) {
                                    objectInputStream.close();
                                }
                            } catch (ClassNotFoundException e9) {
                                e2 = e9;
                                AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Unable to read map from cache", e2);
                                if (fileInputStream != 0) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e10) {
                                        AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), e10.getMessage(), e10);
                                    }
                                }
                                if (objectInputStream != null) {
                                    objectInputStream.close();
                                }
                            }
                        } catch (IOException e11) {
                            object = null;
                            e3 = e11;
                        } catch (ClassNotFoundException e12) {
                            object = null;
                            e2 = e12;
                        }
                    } catch (IOException e13) {
                        objectInputStream = null;
                        object = null;
                        e3 = e13;
                    } catch (ClassNotFoundException e14) {
                        objectInputStream = null;
                        object = null;
                        e2 = e14;
                    } catch (Throwable th2) {
                        th = th2;
                        name = 0;
                        if (fileInputStream != 0) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e15) {
                                AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), e15.getMessage(), e15);
                                throw th;
                            }
                        }
                        if (name != 0) {
                            name.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } finally {
                this.diskReadWriteLock.readLock().unlock();
                AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Read lock released in getObjectFromDiskWithGUID.Holding " + this.diskReadWriteLock.getReadLockCount());
            }
        } else {
            object = null;
        }
        return (T) object;
    }

    private <T> void getObjectFromDiskWithGUID(final String str, final String str2, final EnumSet<AdobeCommonCacheOptions> enumSet, final AdobeCommonCacheHandler<T> adobeCommonCacheHandler, final Handler handler) {
        final Date date = new Date();
        if (this.useDiskCaching) {
            this.executorService.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.4
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:53:0x021b A[Catch: all -> 0x016a, IOException -> 0x021f, TRY_LEAVE, TryCatch #13 {IOException -> 0x021f, blocks: (B:51:0x0216, B:53:0x021b), top: B:82:0x0216, outer: #1 }] */
                /* JADX WARN: Removed duplicated region for block: B:82:0x0216 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Type inference failed for: r1v11 */
                /* JADX WARN: Type inference failed for: r1v13 */
                /* JADX WARN: Type inference failed for: r1v16, types: [java.io.ObjectInputStream] */
                /* JADX WARN: Type inference failed for: r1v20 */
                /* JADX WARN: Type inference failed for: r1v22 */
                /* JADX WARN: Type inference failed for: r1v30 */
                /* JADX WARN: Type inference failed for: r1v8, types: [boolean] */
                /* JADX WARN: Type inference failed for: r1v9, types: [java.io.ObjectInputStream] */
                /* JADX WARN: Type inference failed for: r2v0 */
                /* JADX WARN: Type inference failed for: r2v15 */
                /* JADX WARN: Type inference failed for: r2v16 */
                /* JADX WARN: Type inference failed for: r2v8, types: [java.io.FileInputStream] */
                /* JADX WARN: Type inference failed for: r3v10, types: [java.io.FileInputStream] */
                /* JADX WARN: Type inference failed for: r3v13 */
                /* JADX WARN: Type inference failed for: r3v14 */
                /* JADX WARN: Type inference failed for: r3v15, types: [java.io.FileInputStream] */
                /* JADX WARN: Type inference failed for: r3v17 */
                /* JADX WARN: Type inference failed for: r3v25, types: [java.io.FileInputStream, java.io.InputStream] */
                /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.String] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instruction units count: 582
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.AnonymousClass4.run():void");
                }
            });
        } else {
            callMissHandler(adobeCommonCacheHandler, handler);
        }
    }

    private void lruEviction(AdobeCommonCacheEvictionType adobeCommonCacheEvictionType) {
        Integer numValueOf = Integer.valueOf(adobeCommonCacheEvictionType == AdobeCommonCacheEvictionType.AdobeCommonCacheCriticalEviction ? 10 : 3);
        Integer numValueOf2 = Integer.valueOf(this.diskCacheAccessTimes.size());
        List<Map.Entry<String, Long>> entrySetsSortedByValue = getEntrySetsSortedByValue(this.diskCacheAccessTimes, this.lruComparator);
        try {
            this.diskReadWriteLock.writeLock().lock();
            for (int i = 0; i < numValueOf.intValue() && i < numValueOf2.intValue(); i++) {
                String key = entrySetsSortedByValue.get(i).getKey();
                File file = new File(this.cacheDir, key);
                if (file.exists()) {
                    boolean zDelete = file.delete();
                    notifyDiskCacheEviction(key, "LRU");
                    if (!zDelete) {
                        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Could not remove cached file in disk" + file.getAbsolutePath());
                    }
                } else {
                    AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "File doesn't exist in disk: " + file.getAbsolutePath());
                }
                removeEntryFromCacheMetadata(key);
                AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Removing file in cache : " + file.getAbsolutePath());
            }
        } finally {
            this.diskReadWriteLock.writeLock().unlock();
        }
    }

    private void largeObjectFirstEviction(AdobeCommonCacheEvictionType adobeCommonCacheEvictionType) {
        Integer numValueOf = Integer.valueOf(adobeCommonCacheEvictionType == AdobeCommonCacheEvictionType.AdobeCommonCacheCriticalEviction ? 10 : 3);
        Integer numValueOf2 = Integer.valueOf(this.diskCacheObjectSizes.size());
        List<Map.Entry<String, Long>> entrySetsSortedByValue = getEntrySetsSortedByValue(this.diskCacheObjectSizes, this.numberComparator);
        try {
            this.diskReadWriteLock.writeLock().lock();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= numValueOf.intValue() || i2 >= numValueOf2.intValue()) {
                    break;
                }
                String key = entrySetsSortedByValue.get(i2).getKey();
                try {
                    File file = new File(this.cacheDir + key);
                    if (file.exists()) {
                        FileUtils.deleteDirectory(file);
                        notifyDiskCacheEviction(key, "LSF");
                    }
                    removeEntryFromCacheMetadata(key);
                } catch (IOException e2) {
                    AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Could not remove cached file", e2);
                }
                i = i2 + 1;
            }
        } finally {
            this.diskReadWriteLock.writeLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheEviction() {
        AdobeCommonCacheEvictionType adobeCommonCacheEvictionType;
        Integer numValueOf;
        if (this.currentDiskCacheSize > getCriticalEvictionThreshold()) {
            adobeCommonCacheEvictionType = AdobeCommonCacheEvictionType.AdobeCommonCacheCriticalEviction;
            numValueOf = Integer.valueOf(getCriticalEvictionThreshold());
        } else {
            adobeCommonCacheEvictionType = AdobeCommonCacheEvictionType.AdobeCommonCacheNormalEviction;
            numValueOf = Integer.valueOf(getNormalEvictionThreshold());
        }
        cacheLog(String.format("%s eviction: %d > %d", adobeCommonCacheEvictionType.toString(), Long.valueOf(this.currentDiskCacheSize), numValueOf));
        switch (this.evictionPolicy) {
            case AdobeCommonCacheEvictionLSF:
                largeObjectFirstEviction(adobeCommonCacheEvictionType);
                break;
            default:
                lruEviction(adobeCommonCacheEvictionType);
                break;
        }
        this.currentDiskCacheSize = getCurrentDiskCacheSize();
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(this.currentDiskCacheSize);
        objArr[1] = numValueOf;
        objArr[2] = this.currentDiskCacheSize > ((long) numValueOf.intValue()) ? "UNORDERED" : "in order";
        cacheLog(String.format("After eviction: %d - %d are %s", objArr));
    }

    private void removeEntryFromCacheMetadata(String str) {
        long jLongValue = this.diskCacheObjectSizes.containsKey(str) ? this.diskCacheObjectSizes.get(str).longValue() : 0L;
        long jLongValue2 = this.diskCacheCreateTimes.containsKey(str) ? this.diskCacheCreateTimes.get(str).longValue() : 0L;
        long jLongValue3 = this.diskCacheAccessTimes.containsKey(str) ? this.diskCacheAccessTimes.get(str).longValue() : 0L;
        if (this.diskCacheObjectSizes.get(str) != null) {
            this.currentDiskCacheSize -= this.diskCacheObjectSizes.get(str).longValue();
        }
        if (jLongValue != 0) {
            this.diskCacheAccessTimes.remove(str);
        }
        if (jLongValue2 != 0) {
            this.diskCacheCreateTimes.remove(str);
        }
        if (jLongValue3 != 0) {
            this.diskCacheObjectSizes.remove(str);
        }
        if (jLongValue != 0 && jLongValue2 != 0 && jLongValue3 != 0) {
            cacheLog(String.format("( %d ): Deleted metadata from %s: (AT: %s) (CT: %s) (Sz: %d)", Long.valueOf(this.currentDiskCacheSize), str, Long.valueOf(jLongValue3), Long.valueOf(jLongValue2), Long.valueOf(jLongValue)));
        }
        if (this.currentDiskCacheSize < getNormalEvictionThreshold() && this.repeatingTimer != null) {
            cacheLog("===== Sync stop timer at " + SimpleDateFormat.getInstance().format(new Date()));
            cacheLog(String.format("Stopping eviction timer: %d < %d", Long.valueOf(this.currentDiskCacheSize), Integer.valueOf(getNormalEvictionThreshold())));
            stopRepeatingTimer();
        }
    }

    private void notifyDiskCacheEviction(String str, String str2) {
        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Disk cache eviction for key:" + str + ".Type: " + str2);
    }

    private List<Map.Entry<String, Long>> getEntrySetsSortedByValue(Map<String, Long> map, Comparator<Map.Entry<String, Long>> comparator) {
        ArrayList arrayList = new ArrayList(map.entrySet());
        Collections.sort(arrayList, comparator);
        return arrayList;
    }

    private void initDiskCacheMetadata() {
        if (this.cacheDir == null || this.cacheDir.isEmpty()) {
            cacheLog("Cannot create the disk cache metadata.  Non-existent disk cache.");
        }
        try {
            this.diskReadWriteLock.readLock().lock();
            this.cacheFrozen = true;
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Got Read lock in initDiskCacheMetadata.Current lock count " + this.diskReadWriteLock.getReadLockCount());
            File file = new File(this.cacheDir);
            if (!file.exists() && !file.mkdirs()) {
                AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Error creating disk cache. Folder creation not successful");
            }
            try {
                for (File file2 : (List) FileUtils.listFiles(file, TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE)) {
                    if (!file2.isDirectory() && !file2.isHidden()) {
                        addEntryToCacheMetadata(file2, file2.getAbsolutePath().substring(file2.getAbsolutePath().indexOf(this.cacheName) + this.cacheName.length() + 1));
                    }
                }
            } catch (RuntimeException e2) {
                AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Error initializing disk cache", e2);
            }
        } finally {
            this.cacheFrozen = false;
            this.diskReadWriteLock.readLock().unlock();
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Read lock released in initDiskCacheMetadata.Holding " + this.diskReadWriteLock.getReadLockCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEntryToCacheMetadata(File file, String str) {
        long jLastModified = file.lastModified();
        long jLastModified2 = file.lastModified();
        long length = file.length();
        if (!this.diskCacheObjectSizes.containsKey(str)) {
            this.currentDiskCacheSize += length;
        }
        this.diskCacheAccessTimes.put(str, Long.valueOf(jLastModified2));
        this.diskCacheCreateTimes.put(str, Long.valueOf(jLastModified));
        this.diskCacheObjectSizes.put(str, Long.valueOf(length));
    }

    private void startRepeatingTimer() {
        if (this.repeatingTimer != null) {
            this.repeatingTimer.cancel(false);
        }
        this.repeatingTimer = this.scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.5
            @Override // java.lang.Runnable
            public void run() {
                AdobeCommonCacheInstance.this.cacheLog("***** Async eviction event at " + SimpleDateFormat.getDateInstance().format(new Date()));
                if (AdobeCommonCacheInstance.this.currentDiskCacheSize > AdobeCommonCacheInstance.this.getNormalEvictionThreshold()) {
                    AdobeCommonCacheInstance.this.cacheEviction();
                } else {
                    AdobeCommonCacheInstance.this.cacheLog(String.format("Stopping eviction timer: %d < %d", Long.valueOf(AdobeCommonCacheInstance.this.currentDiskCacheSize), Integer.valueOf(AdobeCommonCacheInstance.this.getNormalEvictionThreshold())));
                    AdobeCommonCacheInstance.this.stopRepeatingTimer();
                }
            }
        }, 0L, DateUtils.MILLIS_PER_MINUTE, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRepeatingTimer() {
        if (this.repeatingTimer != null) {
            this.repeatingTimer.cancel(false);
        }
        this.repeatingTimer = null;
    }

    private void printDiskCacheMetadata() {
        try {
            this.diskReadWriteLock.readLock().lock();
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Got Read lock in printDiskCacheMetadata.Current lock count " + this.diskReadWriteLock.getReadLockCount());
            cacheLog("============================================");
            cacheLog("Disk Cache Size:" + this.currentDiskCacheSize);
            cacheLog("Disk Cache Location: " + this.cacheDir);
            if (this.evictionPolicy == AdobeCommonCachePolicies.AdobeCommonCacheEvictionLSF) {
                List<Map.Entry<String, Long>> entrySetsSortedByValue = getEntrySetsSortedByValue(this.diskCacheObjectSizes, this.numberComparator);
                cacheLog("============================================");
                cacheLog("Eviction Policy: Large Size First");
                cacheLog("Sorted Object Size Dictionary");
                for (Map.Entry<String, Long> entry : entrySetsSortedByValue) {
                    cacheLog(entry.getKey() + " : " + entry.getValue() + HttpHeaderValues.BYTES);
                }
            }
            if (this.evictionPolicy == AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU) {
                List<Map.Entry<String, Long>> entrySetsSortedByValue2 = getEntrySetsSortedByValue(this.diskCacheAccessTimes, this.numberComparator);
                cacheLog("============================================");
                cacheLog("Eviction Policy: Least Recently Used");
                cacheLog("Sorted Access Times Dictionary");
                for (Map.Entry<String, Long> entry2 : entrySetsSortedByValue2) {
                    cacheLog(entry2.getKey() + " : " + DateFormat.getInstance().format(new Date(entry2.getValue().longValue())));
                }
            }
            cacheLog("");
        } finally {
            this.diskReadWriteLock.readLock().unlock();
            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Read lock released in printDiskCacheMetadata.Holding " + this.diskReadWriteLock.getReadLockCount());
        }
    }

    private long getCurrentDiskCacheSize() {
        long jLongValue = 0;
        Iterator<Map.Entry<String, Long>> it = this.diskCacheObjectSizes.entrySet().iterator();
        while (true) {
            long j = jLongValue;
            if (it.hasNext()) {
                jLongValue = it.next().getValue().longValue() + j;
            } else {
                return j;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0251 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0256 A[Catch: IOException -> 0x02a0, all -> 0x02f6, TRY_LEAVE, TryCatch #11 {IOException -> 0x02a0, blocks: (B:76:0x0251, B:78:0x0256), top: B:124:0x0251, outer: #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x029c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> void setObjectToDisk(T r8, java.lang.String r9, java.lang.String r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.setObjectToDisk(java.lang.Object, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logDiskCacheHit(String str, String str2, long j) {
        this.diskCacheHits++;
        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Disk cache hit for key:" + str2 + " with guid " + str + " and latency " + j);
    }

    private void getImageFromDiskWithGUID(final String str, final String str2, final EnumSet<AdobeCommonCacheOptions> enumSet, final AdobeCommonCacheHandler<Bitmap> adobeCommonCacheHandler, final Handler handler) {
        final Date date = new Date();
        if (this.useDiskCaching) {
            this.executorService.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdobeCommonCacheInstance.this.diskReadWriteLock.readLock().lock();
                        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Read lock obtained in getImageFromDiskWithGUID.Holding " + AdobeCommonCacheInstance.this.diskReadWriteLock.getReadLockCount());
                        File file = new File(AdobeCommonCacheInstance.this.getCacheDirectoryForGuid(str), str2);
                        if (!file.exists()) {
                            AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Disk Miss for key " + str2);
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.6.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        adobeCommonCacheHandler.onMiss();
                                    }
                                });
                            }
                            return;
                        }
                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
                        AdobeCommonCacheInstance.this.logDiskCacheHit(str, str2, new Date().getTime() - date.getTime());
                        AdobeCommonCacheInstance.this.addEntryToCacheMetadata(file, AdobeCommonCacheInstance.this.getCacheKey(str, str2));
                        AdobeCommonCacheInstance.this.callHitHandler(adobeCommonCacheHandler, handler, bitmapDecodeFile, AdobeCommonCacheHitLocation.AdobeCommonCacheHitLocationDisk);
                        if (enumSet.contains(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache) && AdobeCommonCacheInstance.this.memCacheSize > 0.0d) {
                            AdobeCommonCacheInstance.this.memCache.put(AdobeCommonCacheInstance.this.getCacheKey(str, str2), bitmapDecodeFile);
                        }
                    } finally {
                        AdobeCommonCacheInstance.this.diskReadWriteLock.readLock().unlock();
                        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Read lock released in getImageFromDiskWithGUID.Holding " + AdobeCommonCacheInstance.this.diskReadWriteLock.getReadLockCount());
                    }
                }
            });
        } else {
            callMissHandler(adobeCommonCacheHandler, handler);
        }
    }

    private void setImageToDisk(final Bitmap bitmap, final String str, final String str2) {
        if (!this.cacheFrozen && bitmap != null && this.useDiskCaching) {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.7
                /* JADX WARN: Removed duplicated region for block: B:36:0x00a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() throws java.lang.Throwable {
                    /*
                        r5 = this;
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this
                        boolean r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$1400(r0)
                        if (r0 == 0) goto L9
                    L8:
                        return
                    L9:
                        r2 = 0
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$000(r0)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        r0.lock()     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.io.File r0 = new java.io.File     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r1 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.lang.String r3 = r2     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.io.File r1 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$100(r1, r3)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.lang.String r3 = r3     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        r0.<init>(r1, r3)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        r1.<init>(r0)     // Catch: java.io.IOException -> L5d java.lang.Throwable -> L91
                        android.graphics.Bitmap r0 = r4     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lb8
                        android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lb8
                        r3 = 100
                        r0.compress(r2, r3, r1)     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lb8
                        r1.flush()     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lb8
                        r1.close()     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lb8
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this
                        java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$000(r0)
                        java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
                        r0.unlock()
                        if (r1 == 0) goto L8
                        r1.close()     // Catch: java.io.IOException -> L4d
                        goto L8
                    L4d:
                        r0 = move-exception
                        com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR
                        java.lang.Class<com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance> r2 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.class
                        java.lang.String r2 = r2.getName()
                        java.lang.String r3 = "Error writing file to disk cache"
                        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r2, r3, r0)
                        goto L8
                    L5d:
                        r0 = move-exception
                        r1 = r2
                    L5f:
                        com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR     // Catch: java.lang.Throwable -> Lb5
                        java.lang.Class<com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance> r3 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.class
                        java.lang.String r3 = r3.getName()     // Catch: java.lang.Throwable -> Lb5
                        java.lang.String r4 = "Error writing file to disk cache"
                        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lb5
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this
                        java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$000(r0)
                        java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
                        r0.unlock()
                        if (r1 == 0) goto L8
                        r1.close()     // Catch: java.io.IOException -> L80
                        goto L8
                    L80:
                        r0 = move-exception
                        com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR
                        java.lang.Class<com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance> r2 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.class
                        java.lang.String r2 = r2.getName()
                        java.lang.String r3 = "Error writing file to disk cache"
                        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r2, r3, r0)
                        goto L8
                    L91:
                        r0 = move-exception
                    L92:
                        com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance r1 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.this
                        java.util.concurrent.locks.ReentrantReadWriteLock r1 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.access$000(r1)
                        java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r1 = r1.writeLock()
                        r1.unlock()
                        if (r2 == 0) goto La4
                        r2.close()     // Catch: java.io.IOException -> La5
                    La4:
                        throw r0
                    La5:
                        r1 = move-exception
                        com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR
                        java.lang.Class<com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance> r3 = com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.class
                        java.lang.String r3 = r3.getName()
                        java.lang.String r4 = "Error writing file to disk cache"
                        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r4, r1)
                        goto La4
                    Lb5:
                        r0 = move-exception
                        r2 = r1
                        goto L92
                    Lb8:
                        r0 = move-exception
                        goto L5f
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.AnonymousClass7.run():void");
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getCacheDirectoryForGuid(String str) {
        File file = new File(this.cacheDir, str);
        if (!file.exists() && !file.mkdirs()) {
            AdobeLogger.log(Level.ERROR, AdobeCommonCacheInstance.class.getName(), "Folder creation not successful for path " + file.getAbsolutePath());
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCacheKey(String str, String str2) {
        if (str2 != null) {
            return str + File.separator + str2;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callMissHandler(final AdobeCommonCacheHandler adobeCommonCacheHandler, Handler handler) {
        this.cacheMisses++;
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.8
            @Override // java.lang.Runnable
            public void run() {
                if (adobeCommonCacheHandler != null) {
                    adobeCommonCacheHandler.onMiss();
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void callHitHandler(final AdobeCommonCacheHandler<T> adobeCommonCacheHandler, Handler handler, final T t, final AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.9
                @Override // java.lang.Runnable
                public void run() {
                    adobeCommonCacheHandler.onHit(t, adobeCommonCacheHitLocation);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheInstance.10
                @Override // java.lang.Runnable
                public void run() {
                    adobeCommonCacheHandler.onHit(t, adobeCommonCacheHitLocation);
                }
            }).start();
        }
    }

    private void logMemCacheHit(String str, String str2, long j) {
        this.memCacheHits++;
        AdobeLogger.log(Level.INFO, AdobeCommonCacheInstance.class.getName(), "Mem cache hit for key:" + str2 + " with guid " + str + " and latency " + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNormalEvictionThreshold() {
        return (int) (0.85d * this.diskCacheSize);
    }

    private int getCriticalEvictionThreshold() {
        return (int) (0.95d * this.diskCacheSize);
    }

    public void freezeCache(boolean z) {
        this.cacheFrozen = z;
        this.useDiskCaching = !z;
    }

    public Date getTimestampForGUID(String str, String str2) {
        File file = new File(getCacheDirectoryForGuid(str), str2);
        if (!file.exists()) {
            return null;
        }
        return new Date(file.lastModified());
    }
}
