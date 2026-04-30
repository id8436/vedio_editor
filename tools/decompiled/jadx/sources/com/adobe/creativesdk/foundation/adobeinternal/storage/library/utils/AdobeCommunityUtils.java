package com.adobe.creativesdk.foundation.adobeinternal.storage.library.utils;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityRequestParams;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCachePolicies;
import com.adobe.creativesdk.foundation.internal.cache.AdobeInvalidCacheSettingsException;
import com.c.a.a.e;
import java.util.EnumSet;
import java.util.UUID;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityUtils {
    private static final String CACHE_NAME = "ADOBE_COMMUNITY_CACHE";
    private static final String ESCAPE_CHARS = "%/:;=";
    private static AdobeCommonCache communityCache = AdobeCommonCache.getSharedInstance();
    private static EnumSet<AdobeCommonCacheOptions> cacheOptions = EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache);
    private static boolean cacheConfigured = false;
    private static String[] communityEndpoints = {"https://cc-api-cp.adobe.io", "https://cc-api-cp-stage.adobe.io", "https://cc-api-cp-labs.adobe.io", "https://cdn-stage.cp.adobe.io"};

    public static String getFormattedLink(String str, AdobeCommunityRequestParams adobeCommunityRequestParams) {
        if (str == null) {
            return null;
        }
        e eVarA = e.a(str);
        for (String str2 : eVarA.b()) {
            String paramaterValue = adobeCommunityRequestParams.getParamaterValue(str2);
            if (paramaterValue != null && !paramaterValue.isEmpty()) {
                eVarA.a(str2, paramaterValue);
            }
        }
        return Uri.encode(eVarA.d(), ESCAPE_CHARS);
    }

    public static String urlForComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite) {
        return AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXComposite.getHref().toString(), adobeDCXComponent.getAbsolutePath().substring(1));
    }

    public static String getRelativePathTo(String str, String str2) {
        boolean z;
        if (!str.startsWith("http")) {
            z = false;
        } else if (str.startsWith(str2)) {
            z = true;
        } else {
            for (String str3 : communityEndpoints) {
                if (str.startsWith(str3)) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        if (!z) {
            if (str.startsWith(URIUtil.SLASH)) {
                str = str.substring(1);
            }
            if (str2.endsWith(URIUtil.SLASH)) {
                str2 = str2.substring(0, str2.lastIndexOf(URIUtil.SLASH));
            }
            return str2 + URIUtil.SLASH + str;
        }
        return str;
    }

    public static String generateUuid() {
        return UUID.randomUUID().toString().toUpperCase();
    }

    public static void addToCache(final String str, final String str2, final Object obj) {
        Handler handler;
        if (!cacheConfigured) {
            configureCache();
        }
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        communityCache.getObjectFromGUID(str, str2, cacheOptions, CACHE_NAME, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.utils.AdobeCommunityUtils.1
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(Object obj2, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobeCommunityUtils.communityCache.addObject(obj, str, str2, AdobeCommunityUtils.cacheOptions, AdobeCommunityUtils.CACHE_NAME);
            }
        }, handler);
    }

    public static boolean getFromCache(String str, String str2, final IAdobeGenericCompletionCallback<Object> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<String> iAdobeGenericErrorCallback) {
        Handler handler;
        if (!cacheConfigured) {
            configureCache();
        }
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        return communityCache.getObjectFromGUID(str, str2, cacheOptions, CACHE_NAME, new AdobeCommonCacheHandler<Object>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.utils.AdobeCommunityUtils.2
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(Object obj, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                iAdobeGenericCompletionCallback.onCompletion(obj);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                iAdobeGenericErrorCallback.onError("cache_miss");
            }
        }, handler);
    }

    private static void configureCache() {
        try {
            communityCache.configureCache(CACHE_NAME, 100, 1.34217728E8d, EnumSet.of(AdobeCommonCachePolicies.AdobeCommonCacheEvictionLRU));
            cacheConfigured = true;
        } catch (AdobeInvalidCacheSettingsException e2) {
            Log.d("cache", e2.getMessage());
            cacheConfigured = false;
        }
    }
}
