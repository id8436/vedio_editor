package com.adobe.creativesdk.foundation.internal.cache;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommonCache {
    private static final String AdobeCommonCacheClearDiskCacheNotification = "AdobeCommonCacheClearDiskCacheNotification";
    private static final String AdobeCommonCacheClearMemCacheNotification = "AdobeCommonCacheClearMemCacheNotification";
    private static final String AdobeCommonCacheDiskCacheEvictionNotification = "AdobeCommonCacheDiskCacheEvictionNotification";
    private static final String AdobeCommonCacheMemCacheEvictionNotification = "AdobeCommonCacheMemCacheEvictionNotification";
    private static final Integer CACHE_VERSION = 8;
    private static Context context;
    private static volatile AdobeCommonCache instance;
    private static boolean isInitiated;
    private Pattern cacheDirPattern = Pattern.compile("^[a-zA-Z0-9]{33}$");
    HashMap<String, AdobeCommonCacheInstance> cacheInstances = new HashMap<>();
    private int currentCacheVerion;
    private ExecutorService executorService;
    private final String rootCacheDir;
    private int scrubAge;
    private int scrubPeriod;
    private ScheduledFuture<?> scrubbingFuture;
    private ScheduledExecutorService scrubbingTimer;
    private SharedPreferences sharedPreferences;
    private boolean verboseLogging;

    public static AdobeCommonCache getSharedInstance() throws AdobeInvalidCacheSettingsException {
        if (instance == null) {
            synchronized (AdobeCommonCache.class) {
                if (instance == null) {
                    instance = new AdobeCommonCache();
                }
            }
        }
        return instance;
    }

    private void startScrubbingTimer() {
        stopScrubbingTimer();
        if (this.scrubbingTimer == null) {
            this.scrubbingTimer = Executors.newSingleThreadScheduledExecutor();
        }
        this.scrubbingFuture = this.scrubbingTimer.scheduleAtFixedRate(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdobeCommonCache.this.verboseLogging) {
                    AdobeLogger.log(Level.INFO, AdobeCommonCache.class.getName(), "***** Async cache scrubbing event at " + SimpleDateFormat.getInstance().format(new Date()));
                }
                AdobeCommonCache.this.removeDiskCachesOlderThan(AdobeCommonCache.this.scrubAge);
            }
        }, 0L, this.scrubPeriod, TimeUnit.MILLISECONDS);
    }

    private void stopScrubbingTimer() {
        stopScrubbingTimer(false);
    }

    private void stopScrubbingTimer(boolean z) {
        if (this.scrubbingFuture != null) {
            this.scrubbingFuture.cancel(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDiskCachesOlderThan(int i) {
        File file = new File(this.rootCacheDir);
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache.2
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    return !file2.isHidden();
                }
            });
            if (fileArrListFiles == null) {
                AdobeLogger.log(Level.ERROR, AdobeCommonCache.class.getName(), "Failed to access disk cache root directory at " + this.rootCacheDir);
                return;
            }
            if (fileArrListFiles.length == 0 && this.verboseLogging) {
                AdobeLogger.log(Level.INFO, AdobeCommonCache.class.getName(), "Cache is Empty. Nothing to scrub");
            }
            freezeAllCaches(true);
            for (File file2 : fileArrListFiles) {
                String lowerCase = file2.getName().toLowerCase();
                if (this.cacheDirPattern.matcher(lowerCase).matches() && lowerCase.charAt(32) == '7' && new Date().getTime() - file2.lastModified() > i) {
                    try {
                        FileUtils.deleteDirectory(file2);
                        if (this.verboseLogging) {
                            AdobeLogger.log(Level.INFO, AdobeCommonCache.class.getName(), "Deleting disk cache at " + file2.getAbsolutePath());
                        }
                    } catch (IOException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeCommonCache.class.getName(), "Error delecting disk cache during scrubbing : " + file2.getAbsolutePath(), e2);
                    }
                }
            }
            freezeAllCaches(false);
        }
    }

    private AdobeCommonCachePolicies getEvictionPolicy(EnumSet<AdobeCommonCachePolicies> enumSet) {
        if (enumSet.contains(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLSF)) {
            return AdobeCommonCachePolicies.AdobeCommonCacheEvictionLSF;
        }
        if (enumSet.contains(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU)) {
            return AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU;
        }
        if (enumSet.contains(AdobeCommonCachePolicies.AdobeCommonCacheEvictionFIFO)) {
            return AdobeCommonCachePolicies.AdobeCommonCacheEvictionFIFO;
        }
        return AdobeCommonCachePolicies.AdobeCommonCachePolicyUnset;
    }

    private AdobeCommonCache() {
        context = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        String absolutePath = context.getCacheDir().getAbsolutePath();
        this.rootCacheDir = absolutePath.endsWith(File.separator) ? absolutePath + "csdk" : absolutePath + File.separator + "csdk";
        this.sharedPreferences = context.getSharedPreferences("Foundation", 0);
        this.currentCacheVerion = this.sharedPreferences.getInt("CCCache.version", -1);
        if (this.currentCacheVerion != CACHE_VERSION.intValue()) {
            removeAllCaches();
            SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
            editorEdit.putInt("CCCache.version", CACHE_VERSION.intValue());
            editorEdit.commit();
        }
        this.scrubAge = 86400000;
        this.scrubPeriod = 1800000;
        removeDiskCachesOlderThan(this.scrubAge);
        startScrubbingTimer();
        new File(this.rootCacheDir).mkdirs();
        this.executorService = Executors.newCachedThreadPool();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache.3
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeCommonCache.this.clearAllCaches();
            }
        });
    }

    protected void setScrubAge(int i) {
        this.scrubAge = i;
    }

    protected void setScrubPeriod(int i) {
        this.scrubPeriod = i;
        stopScrubbingTimer();
        startScrubbingTimer();
    }

    public void configureCache(String str, int i, double d2, EnumSet<AdobeCommonCachePolicies> enumSet) throws AdobeInvalidCacheSettingsException {
        String adobeID;
        int i2;
        double d3;
        AdobeCommonCacheInstance adobeCommonCacheInstance;
        if (str == null || str.isEmpty()) {
            throw new AdobeInvalidCacheSettingsException("Invalid cache name.");
        }
        if (enumSet.contains(AdobeCommonCachePolicies.AdobeCommonCachePolicyUnset) && enumSet.size() == 1) {
            throw new AdobeInvalidCacheSettingsException("Invalid cache policy.");
        }
        AdobeCommonCachePolicies evictionPolicy = getEvictionPolicy(enumSet);
        boolean availabilityMode = getAvailabilityMode(enumSet);
        if (!availabilityMode) {
            adobeID = AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
            if (adobeID == null || adobeID.isEmpty()) {
                throw new AdobeInvalidCacheSettingsException("Cannot configure cache before logging in");
            }
        } else {
            adobeID = "000000000000000000000000@AdobeID";
        }
        if (i < 0) {
            throw new AdobeInvalidCacheSettingsException("Illegal memCacheSize value " + i);
        }
        if (i > 200) {
            AdobeLogger.log(Level.WARN, AdobeCommonCache.class.getName(), "memCacheSize: %" + (i / 1048576) + " MB exceeds maximum value.  Setting to 0 MB.");
            i2 = 200;
        } else {
            i2 = i;
        }
        if (d2 < 0.0d) {
            throw new AdobeInvalidCacheSettingsException("Illegal diskCacheSize value: " + ((long) d2));
        }
        if (d2 > 2.68435456E8d) {
            AdobeLogger.log(Level.WARN, AdobeCommonCache.class.getName(), "diskCacheSize: " + (d2 / 1048576.0d) + "MB exceeds maximum value.  Setting to 256.0MB.");
            d3 = 2.68435456E8d;
        } else {
            d3 = d2;
        }
        AdobeCommonCacheInstance adobeCommonCacheInstance2 = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance2 == null) {
            adobeCommonCacheInstance = new AdobeCommonCacheInstance(this.executorService);
            this.cacheInstances.put(str, adobeCommonCacheInstance);
        } else {
            if (!adobeID.equals(adobeCommonCacheInstance2.getCacheAdobeId())) {
                throw new AdobeInvalidCacheSettingsException("Attempt to reconfigure cache " + str + " with different AdobeID: " + adobeID + " vs " + adobeCommonCacheInstance2.getCacheAdobeId());
            }
            adobeCommonCacheInstance = adobeCommonCacheInstance2;
        }
        adobeCommonCacheInstance.configureCache(str, adobeID, this.rootCacheDir, i2, d3, evictionPolicy, availabilityMode);
    }

    private boolean getAvailabilityMode(EnumSet<AdobeCommonCachePolicies> enumSet) {
        return enumSet.contains(AdobeCommonCachePolicies.AdobeCommonCacheAllowOfflineUse);
    }

    public boolean doesCacheExist(String str) {
        return this.cacheInstances.containsKey(str);
    }

    private boolean clearCache(String str) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance != null) {
            adobeCommonCacheInstance.clear();
            return false;
        }
        return false;
    }

    public void clearAllCaches() {
        Iterator<Map.Entry<String, AdobeCommonCacheInstance>> it = this.cacheInstances.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().clear();
        }
    }

    public boolean removeCache(String str) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.clear();
        this.cacheInstances.remove(str);
        return true;
    }

    private boolean freezeCache(String str, boolean z) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.freezeCache(z);
        return true;
    }

    public void freezeAllCaches(boolean z) {
        Iterator<Map.Entry<String, AdobeCommonCacheInstance>> it = this.cacheInstances.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().freezeCache(z);
        }
    }

    public boolean enableCache(String str, boolean z) {
        if (freezeCache(str, !z)) {
            return true;
        }
        if (z) {
            return false;
        }
        return clearCache(str);
    }

    public void disableDiskCaching(String str) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance != null) {
            adobeCommonCacheInstance.disableDiskCaching();
        }
    }

    public boolean addImage(Bitmap bitmap, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.addImage(bitmap, str, str2, enumSet);
        return true;
    }

    public boolean addDictionary(Map map, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3) {
        return addObject(map, str, str2, enumSet, str3);
    }

    public boolean addArray(ArrayList arrayList, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3) {
        return addObject(arrayList, str, str2, enumSet, str3);
    }

    class DataAdditionAsyncTask extends AsyncTask<Void, Void, Void> {
        String _cacheName;
        IAdobeGenericCompletionCallback<Boolean> _callback;
        byte[] _data;
        String _guid;
        String _key;
        EnumSet<AdobeCommonCacheOptions> _options;
        boolean _retVal = false;

        DataAdditionAsyncTask(byte[] bArr, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback) {
            this._data = bArr;
            this._guid = str;
            this._key = str2;
            this._options = enumSet;
            this._cacheName = str3;
            this._callback = iAdobeGenericCompletionCallback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            this._retVal = AdobeCommonCache.this.addObject(this._data, this._guid, this._key, this._options, this._cacheName);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            this._callback.onCompletion(Boolean.valueOf(this._retVal));
        }
    }

    public void addData(byte[] bArr, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback) {
        new DataAdditionAsyncTask(bArr, str, str2, enumSet, str3, iAdobeGenericCompletionCallback).execute(new Void[0]);
    }

    public boolean addObject(Object obj, String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3) {
        if (!(obj instanceof Serializable)) {
            AdobeLogger.log(Level.INFO, AdobeCommonCache.class.getName(), "Object is not serializable. Not adding " + str2 + " to cache.");
            return false;
        }
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.addObject(obj, str, str2, enumSet);
        return true;
    }

    public boolean containsItem(String str, String str2, String str3) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance != null) {
            return adobeCommonCacheInstance.containsItemWithGUID(str, str2);
        }
        return false;
    }

    public boolean removeItemWithGUID(String str, String str2, String str3) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.removeItemWithGUID(str, str2);
        return true;
    }

    public boolean removeSetWithGUID(String str, String str2) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str2);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.removeSetWithGUID(str);
        return true;
    }

    public boolean getImageFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<Bitmap> adobeCommonCacheHandler, Handler handler) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.getImageFromGUID(str, str2, enumSet, adobeCommonCacheHandler, handler);
        return true;
    }

    public boolean getDictionaryFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<Map<String, Object>> adobeCommonCacheHandler, Handler handler) {
        return getFromGUID(str, str2, enumSet, str3, adobeCommonCacheHandler, handler);
    }

    public boolean getObjectFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<Object> adobeCommonCacheHandler, Handler handler) {
        return getFromGUID(str, str2, enumSet, str3, adobeCommonCacheHandler, handler);
    }

    private <T> boolean getFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<T> adobeCommonCacheHandler, Handler handler) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance == null) {
            return false;
        }
        adobeCommonCacheInstance.getObjectFromGUID(str, str2, enumSet, adobeCommonCacheHandler, handler);
        return true;
    }

    public <T> T getDataFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
        if (adobeCommonCacheInstance != null) {
            return (T) adobeCommonCacheInstance.getObjectFromGUID(str, str2, enumSet);
        }
        return null;
    }

    public boolean getArrayFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<ArrayList> adobeCommonCacheHandler, Handler handler) {
        return getFromGUID(str, str2, enumSet, str3, adobeCommonCacheHandler, handler);
    }

    public boolean getDataFromGUID(String str, String str2, EnumSet<AdobeCommonCacheOptions> enumSet, String str3, AdobeCommonCacheHandler<byte[]> adobeCommonCacheHandler, Handler handler) {
        return getFromGUID(str, str2, enumSet, str3, adobeCommonCacheHandler, handler);
    }

    public void printStatistics(String str) {
        AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str);
        if (adobeCommonCacheInstance != null) {
            adobeCommonCacheInstance.printStatistics();
        }
    }

    protected void logCacheMiss(String str, int i, String str2) {
    }

    public void removeAllCaches() {
        File file = new File(this.rootCacheDir);
        if (file.exists()) {
            try {
                FileUtils.deleteDirectory(file);
            } catch (IOException e2) {
                AdobeLogger.log(Level.ERROR, AdobeCommonCache.class.getName(), "Error removing cache", e2);
            }
            Iterator<String> it = this.cacheInstances.keySet().iterator();
            while (it.hasNext()) {
                this.cacheInstances.get(it.next()).clear();
            }
            this.cacheInstances.clear();
        }
    }

    public Date getTimestampForGUID(String str, String str2, String str3) {
        Date timestampForGUID;
        if (this.cacheInstances == null) {
            return null;
        }
        synchronized (this.cacheInstances) {
            AdobeCommonCacheInstance adobeCommonCacheInstance = this.cacheInstances.get(str3);
            if (adobeCommonCacheInstance == null) {
                timestampForGUID = null;
            } else {
                timestampForGUID = adobeCommonCacheInstance.getTimestampForGUID(str, str2);
            }
        }
        return timestampForGUID;
    }

    protected String getRootDir() {
        return this.rootCacheDir;
    }

    public boolean isVerboseLogging() {
        return this.verboseLogging;
    }

    public void setVerboseLogging(boolean z) {
        this.verboseLogging = z;
    }
}
