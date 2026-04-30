package com.adobe.creativesdk.foundation.internal.analytics;

import android.content.res.Resources;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import com.behance.sdk.util.BehanceSDKConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsGlobalData {
    public static final String AdobeAnalyticsAuthStatusLoggedInOffline = "Logged In : Offline";
    public static final String AdobeAnalyticsAuthStatusLoggedInOnline = "Logged In : Online";
    public static final String AdobeAnalyticsAuthStatusLoggedOutOffline = "Logged Out : Offline";
    public static final String AdobeAnalyticsAuthStatusLoggedOutOnline = "Logged Out : Online";
    public static final String AdobeAnalyticsKeyADB_AuthStatus = "adb.user.profile.attributes.authStatus";
    public static final String AdobeAnalyticsKeyADB_ClientId = "adb.user.profile.attributes.clientId";
    public static final String AdobeAnalyticsKeyADB_ProfileId = "adb.user.profile.profileId";
    public static final String AdobeAnalyticsKeyADB_SDKsUtilized = "adb.page.pageInfo.SDKsUtilized";
    public static final String AdobeAnalyticsKeyEventAssetID = "adb.event.eventInfo.eventassetid";
    public static final String AdobeAnalyticsKeyEventAssetName = "adb.event.eventInfo.eventassetname";
    public static final String AdobeAnalyticsKeyEventCategory = "adb.event.eventInfo.eventeventcategory";
    public static final String AdobeAnalyticsKeyMobileEventAction = "adb.mobile.event.action";
    public static final String AdobeAnalyticsKeyMobileEventArea = "adb.mobile.event.area";
    public static final String AdobeAnalyticsKeyMobileEventName = "adb.mobile.event.name";
    public static final String AdobeAnalyticsKeyMobileEventType = "adb.mobile.event.type";
    public static final String AdobeAnalyticsKeyPageInfoLanguage = "adb.page.pageInfo.language";
    public static final String AdobeAnalyticsKeyPrimaryCategory = "adb.page.pageInfo.category.primarycategory";
    public static final String AdobeAnalyticsKeyProductCategory = "adb.page.pageInfo.productcategory";
    public static final String AdobeAnalyticsKeyProductVersion = "adb.page.pageInfo.productversion";
    public static final String AdobeAnalyticsSDKUtilizedCreativeSDK = "Creative SDK Android";
    private static final String PRODUCT_CATEGORY = "mobile";

    private AdobeAnalyticsGlobalData() {
    }

    public static void addActionData(String str, Map<String, String> map, Map<String, Object> map2) {
        String adobeID = AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
        String clientID = AdobeAuthIdentityManagementService.getSharedInstance().getClientID();
        map2.put(AdobeAnalyticsKeyADB_ProfileId, adobeID);
        map2.put(AdobeAnalyticsKeyProductCategory, PRODUCT_CATEGORY);
        map2.put(AdobeAnalyticsKeyADB_ClientId, clientID);
        map2.put(AdobeAnalyticsKeyProductVersion, Util.getProductVersion());
        map2.put(AdobeAnalyticsKeyPageInfoLanguage, Resources.getSystem().getConfiguration().locale.getDisplayLanguage());
        map2.put(AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_EventName, str);
        map2.put(AdobeAnalyticsKeyEventCategory, "");
        map2.put("adb.mobile.event.name", "");
        if (map != null) {
            if (map.containsKey(AdobeAnalyticsSDKReporter.AnalyticArea)) {
                map2.put("adb.mobile.event.area", map.get(AdobeAnalyticsSDKReporter.AnalyticArea));
            }
            if (map.containsKey("type")) {
                map2.put("adb.mobile.event.type", map.get("type"));
            }
            if (map.containsKey(AdobeAnalyticsSDKReporter.AnalyticAction)) {
                map2.put("adb.mobile.event.action", map.get(AdobeAnalyticsSDKReporter.AnalyticAction));
            }
            if (map.containsKey("assetName")) {
                map2.put(AdobeAnalyticsKeyEventAssetName, map.get("assetName"));
            }
            if (map.containsKey(AdobeAnalyticsSDKReporter.AnalyticAssetId)) {
                map2.put(AdobeAnalyticsKeyEventAssetID, map.get(AdobeAnalyticsSDKReporter.AnalyticAssetId));
            }
        }
        addCommonData(map2);
    }

    public static void addStateData(String str, Map<String, Object> map) {
        map.put(AdobeAnalyticsKeyProductCategory, PRODUCT_CATEGORY);
        map.put(AdobeAnalyticsKeyProductVersion, Util.getProductVersion());
        map.put(AdobeAnalyticsKeyPageInfoLanguage, Resources.getSystem().getConfiguration().locale.getDisplayLanguage());
        map.put(AdobeAnalyticsSDKReporter.AdobeAnalyticsKeyADB_PageName, str);
        map.put(AdobeAnalyticsKeyPrimaryCategory, str);
        addCommonData(map);
    }

    public static void addCommonData(Map<String, Object> map) {
        String str;
        AdobeUXAuthManager sharedAuthManager = AdobeUXAuthManager.getSharedAuthManager();
        String adobeID = AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID();
        String clientID = AdobeAuthIdentityManagementService.getSharedInstance().getClientID();
        map.put(AdobeAnalyticsKeyADB_ProfileId, adobeID);
        map.put(AdobeAnalyticsKeyADB_ClientId, clientID);
        if (map.get(AdobeAnalyticsKeyADB_SDKsUtilized) == null) {
            map.put(AdobeAnalyticsKeyADB_SDKsUtilized, AdobeAnalyticsSDKUtilizedCreativeSDK);
        } else {
            map.put(AdobeAnalyticsKeyADB_SDKsUtilized, map.get(AdobeAnalyticsKeyADB_SDKsUtilized) + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + AdobeAnalyticsSDKUtilizedCreativeSDK);
        }
        Boolean boolValueOf = Boolean.valueOf(sharedAuthManager.isAuthenticated());
        Boolean boolValueOf2 = Boolean.valueOf(AdobeNetworkReachabilityUtil.getSharedInstance().isOnline());
        if (boolValueOf.booleanValue()) {
            str = boolValueOf2.booleanValue() ? AdobeAnalyticsAuthStatusLoggedInOnline : AdobeAnalyticsAuthStatusLoggedInOffline;
        } else {
            str = boolValueOf2.booleanValue() ? AdobeAnalyticsAuthStatusLoggedOutOnline : AdobeAnalyticsAuthStatusLoggedOutOffline;
        }
        map.put(AdobeAnalyticsKeyADB_AuthStatus, str);
    }
}
