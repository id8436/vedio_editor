package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.AtomicFile;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsErrorLogEvent;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONArray;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXUtils {
    private static AdobeDCXLocalStorageDirectories sharedLocalStorageDirectories = null;
    private static AdobeDCXLocalStorageCopyOnWrite sharedLocalStorageCopyOnWrite = null;
    private static final Long CACHE_REPLACE_TIMER = Long.valueOf(DateUtils.MILLIS_PER_MINUTE);
    private static boolean cacheConfigured = false;
    private static AdobeCommonCache eventsCache = AdobeCommonCache.getSharedInstance();
    private static String CACHE_NAME = "DCX_ANALYTICS_CACHE";

    public static AdobeDCXLocalStorageScheme guessLocalStorageSchemeOfCompositeAtPath(String str) {
        return AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeDirectories;
    }

    public static boolean convertLocalStorageScheme(AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme, String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme2, String str2, boolean z) {
        return false;
    }

    public static IAdobeDCXLocalStorageProtocol localStorageClassObjForScheme(AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) {
        if (adobeDCXLocalStorageScheme == AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeDirectories) {
            if (sharedLocalStorageDirectories == null) {
                sharedLocalStorageDirectories = new AdobeDCXLocalStorageDirectories();
            }
            return sharedLocalStorageDirectories;
        }
        if (sharedLocalStorageCopyOnWrite == null) {
            sharedLocalStorageCopyOnWrite = new AdobeDCXLocalStorageCopyOnWrite();
        }
        return sharedLocalStorageCopyOnWrite;
    }

    static boolean isValidPath(String str) {
        if (str.length() > 65535) {
            return false;
        }
        String[] strArrSplit = str.split(URIUtil.SLASH);
        if (strArrSplit.length < 1) {
            return false;
        }
        Pattern patternCompile = Pattern.compile("^[^\\x00-\\x1F\"\\\\:<>\\x7F]([^\\x00-\\x1F\"\\\\:<>\\x7F]*)");
        Pattern patternCompile2 = Pattern.compile("[^\\x00-\\x1F\"*:<>?\\.\\x7F]{1}$");
        for (String str2 : strArrSplit) {
            if (str2.length() > 255) {
                return false;
            }
            Matcher matcher = patternCompile.matcher(str2);
            matcher.region(0, str2.length());
            Matcher matcher2 = patternCompile2.matcher(str2);
            matcher2.region(0, str2.length());
            if (!matcher.find() || !matcher2.find()) {
                return false;
            }
        }
        return true;
    }

    static boolean isValidAbsPath(String str) {
        return (str == null || !str.startsWith(URIUtil.SLASH) || str.equals("/manifest") || str.startsWith("/manifest/") || str.equals("/mimetype") || str.startsWith("/mimetype/")) ? false : true;
    }

    public static String stringByDeletingLastPathComponent(String str) {
        return FilenameUtils.getFullPath(FilenameUtils.normalizeNoEndSeparator(str));
    }

    public static String stringByAppendingLastPathComponent(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            if (str.endsWith(URIUtil.SLASH)) {
                return str + str2;
            }
            return str + URIUtil.SLASH + str2;
        }
        return str2;
    }

    public static String stringByAppendingLastPathComponentAndLastPathComponentIsDir(String str, String str2) {
        return stringByAppendingLastPathComponent(str, str2) + URIUtil.SLASH;
    }

    public static String stringByDeletingPathExtension(String str) {
        if (str.length() != 1) {
            if (str.charAt(str.length() - 1) == '/') {
                str = str.substring(0, str.length() - 1);
            }
            int iLastIndexOf = str.lastIndexOf(46);
            return (iLastIndexOf == -1 || iLastIndexOf == 0) ? str : str.substring(0, iLastIndexOf);
        }
        return str;
    }

    public static String stringByAppendingPathExtension(String str, String str2) {
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        return str + "." + str2;
    }

    public static Boolean fWrite(String str, String str2) throws IOException {
        if (str2 == null) {
            return false;
        }
        File file = new File(str);
        FileLockManager.getInstance().lock(file.getCanonicalPath());
        try {
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                    logAnalytics("csdk_android_dcx", "dcxutils-fwrite", "mkdirs failed", "Directory '" + parentFile + "' could not be created");
                    throw new IOException("Directory '" + parentFile + "' could not be created");
                }
                try {
                    if (!file.createNewFile()) {
                        AdobeLogger.log(Level.DEBUG, AdobeDCXUtils.class.getSimpleName(), "File already exists at path " + str);
                    } else if (str.endsWith("/manifest")) {
                        logAnalytics("csdk_android_dcx", "dcxutils-fwrite", "manifest created " + Arrays.toString(Thread.currentThread().getStackTrace()), str);
                    }
                } catch (IOException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXUtils.class.getSimpleName(), "Failed to create new file at path " + str, e2);
                    throw e2;
                }
            }
            if (Build.VERSION.SDK_INT < 17) {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
                BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
                bufferedWriter.write(str2);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStreamWriter.close();
                fileOutputStream.close();
            } else {
                AtomicFile atomicFile = new AtomicFile(file);
                FileOutputStream fileOutputStreamStartWrite = null;
                try {
                    fileOutputStreamStartWrite = atomicFile.startWrite();
                    fileOutputStreamStartWrite.write(str2.getBytes());
                    atomicFile.finishWrite(fileOutputStreamStartWrite);
                } catch (IOException e3) {
                    logAnalytics("csdk_android_dcx", "dcxutils-fwrite", "atomic file fail" + e3.getMessage() + "Path is a directory: " + file.isDirectory() + Log.getStackTraceString(e3), str);
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                    throw e3;
                }
            }
            FileLockManager.getInstance().unlock(file.getCanonicalPath());
            return true;
        } catch (Throwable th) {
            FileLockManager.getInstance().unlock(file.getCanonicalPath());
            throw th;
        }
    }

    public static String fRead(String str) throws IOException {
        String str2 = null;
        if (str != null) {
            File file = new File(str);
            FileLockManager.getInstance().lock(file.getCanonicalPath());
            try {
                if (Build.VERSION.SDK_INT < 17) {
                    str2 = new String(FileUtils.readFileToByteArray(file), "UTF-8");
                } else {
                    try {
                        str2 = new String(new AtomicFile(file).readFully(), "UTF-8");
                    } catch (IOException e2) {
                        if (str != null && !str.contains("pull.manifest") && !str.contains("push.manifest") && !str.contains("manifest.base")) {
                            String str3 = "atomic file readFully fail" + e2.getMessage() + Log.getStackTraceString(e2);
                            logAnalyticsWithCacheOn("csdk_android_dcx", "dcxutils-fread", str3, str, CACHE_REPLACE_TIMER, str, str3);
                            throw e2;
                        }
                        throw e2;
                    }
                }
            } finally {
                FileLockManager.getInstance().unlock(file.getCanonicalPath());
            }
        }
        return str2;
    }

    public static String convertToUTF8(String str) {
        String str2;
        if (str != null) {
            try {
                str2 = new String(str.getBytes("UTF-8"), "ISO-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return null;
            }
        } else {
            str2 = null;
        }
        return str2;
    }

    private static List<Object> asList(JSONArray jSONArray) {
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            Object objOpt = jSONArray.opt(i);
            if (objOpt != null) {
                arrayList.add(objOpt);
            }
        }
        return arrayList;
    }

    public static JSONArray remove(Object obj, JSONArray jSONArray) {
        List<Object> listAsList = asList(jSONArray);
        listAsList.remove(obj);
        JSONArray jSONArray2 = new JSONArray();
        Iterator<Object> it = listAsList.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next());
        }
        return jSONArray2;
    }

    static int find(Object obj, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (obj != null && obj.equals(jSONArray.opt(i))) {
                return i;
            }
        }
        return -1;
    }

    static ArrayList<String> getAllKeys(Map<String, AdobeDCXComponent> map) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, AdobeDCXComponent>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getKey());
        }
        return arrayList;
    }

    static ArrayList<String> getAllKeysForCompositeCtrlStateMap(Map<String, CompositeControllerState> map) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, CompositeControllerState>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getKey());
        }
        return arrayList;
    }

    public static long getLongVal(Object obj) {
        return ((Number) obj).longValue();
    }

    public static boolean areStringsEqual(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static void logAnalyticsWithCacheOn(String str, String str2, String str3, String str4, Long l, String str5, String str6) {
        if (!cacheConfigured) {
            configureCache();
        }
        logAndCacheAnalytics(str, str2, str3, str4, l, str5, str6);
    }

    private static void configureCache() {
        try {
            eventsCache.configureCache(CACHE_NAME, 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU));
            eventsCache.disableDiskCaching(CACHE_NAME);
            cacheConfigured = true;
        } catch (AdobeInvalidCacheSettingsException e2) {
            Log.d("cache", e2.getMessage());
            cacheConfigured = false;
        }
    }

    public static void logAnalytics(String str, String str2, String str3, String str4) {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        if (applicationContext != null && !applicationContext.getPackageName().equals("com.adobe.creativecloud")) {
            AdobeAnalyticsErrorLogEvent adobeAnalyticsErrorLogEvent = new AdobeAnalyticsErrorLogEvent();
            adobeAnalyticsErrorLogEvent.addEventParams(AdobeAnalyticsErrorLogEvent.ADOBE_ANALYTICS_COMPONENT_KEY, str);
            adobeAnalyticsErrorLogEvent.addEventParams(AdobeAnalyticsErrorLogEvent.ADOBE_ANALYTICS_METHOD_KEY, str2);
            adobeAnalyticsErrorLogEvent.addEventParams(AdobeAnalyticsErrorLogEvent.ADOBE_ANALYTICS_ERROR_DESC_KEY, str3);
            adobeAnalyticsErrorLogEvent.addEventParams(AdobeAnalyticsErrorLogEvent.ADOBE_ANALYTICS_ERROR_EXTRA_DESC_KEY, str4);
            adobeAnalyticsErrorLogEvent.endAndTrackEvent();
        }
    }

    private static void logAndCacheAnalytics(final String str, final String str2, final String str3, final String str4, final Long l, final String str5, final String str6) {
        Handler handler;
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        final DCXAnalyticsMap dCXAnalyticsMap = new DCXAnalyticsMap(str, str2, str3, str4);
        eventsCache.getObjectFromGUID(str5, str6, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), CACHE_NAME, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils.1
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(Object obj, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                DCXAnalyticsMap dCXAnalyticsMap2 = (DCXAnalyticsMap) obj;
                if (!dCXAnalyticsMap2.isSame(dCXAnalyticsMap)) {
                    AdobeDCXUtils.eventsCache.removeItemWithGUID(str5, str6, AdobeDCXUtils.CACHE_NAME);
                    dCXAnalyticsMap.recordTime();
                    AdobeDCXUtils.eventsCache.addObject(dCXAnalyticsMap, str5, str6, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeDCXUtils.CACHE_NAME);
                    AdobeDCXUtils.logAnalytics(str, str2, str3, str4);
                    return;
                }
                if (dCXAnalyticsMap2.shouldUpdateCache(l)) {
                    AdobeDCXUtils.eventsCache.removeItemWithGUID(str5, str6, AdobeDCXUtils.CACHE_NAME);
                    dCXAnalyticsMap.recordTime();
                    AdobeDCXUtils.eventsCache.addObject(dCXAnalyticsMap, str5, str6, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeDCXUtils.CACHE_NAME);
                    AdobeDCXUtils.logAnalytics(str, str2, str3, str4);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                dCXAnalyticsMap.recordTime();
                AdobeDCXUtils.eventsCache.addObject(dCXAnalyticsMap, str5, str6, EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache), AdobeDCXUtils.CACHE_NAME);
                AdobeDCXUtils.logAnalytics(str, str2, str3, str4);
            }
        }, handler);
    }
}
