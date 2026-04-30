package com.adobe.creativesdk.foundation.internal.analytics;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkUtils;
import com.adobe.creativesdk.foundation.internal.utils.Util;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdobeAnalyticsETSEvent {
    protected static final String ADOBE_CSDK_PROJECT_NAME = "csdkandroid-service";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_360_WORKFLOW = "360_workflow";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_APP_LIBRARY_BROWSER = "app_library_browser";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_ASSET_BROWSER = "asset_browser";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_ASSET_HEADLESS = "asset_headless";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH = "auth";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_COLOR = "color";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_MARKET_ASSET_BROWSER = "market_asset_browser";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_SEND_TO_DESKTOP = "send_to_desktop";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_SHARE_MENU = "share_menu";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_BROWSER = "stock_browser";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_STOCK_CONTRIBUTOR = "stock_contributor";
    public static final String ADOBE_ETS_ENVIRONMENT_COMPONENT_TYPEKIT = "typekit";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_CC_FILE = "cc_file";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY = "library";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT = "libray_element";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_REPRESENTATON = "libray_element_representation";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LOCAL_FILE = "local_file";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_MOBILE_CREATION = "mobile_creation";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO = "photo";
    public static final String ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO_ALBUM = "lr_album";
    public static final String ADOBE_ETS_EVENT_ACCESS_TOKEN_EXPIRED = "expire_access_token";
    public static final String ADOBE_ETS_EVENT_ACCESS_TOKEN_REFRESHED = "refresh_access_token";
    public static final String ADOBE_ETS_EVENT_CANCEL_REASON_STALE = "stale";
    public static final String ADOBE_ETS_EVENT_CANCEL_REASON_USER = "user";
    public static final String ADOBE_ETS_EVENT_DATA = "data";
    public static final String ADOBE_ETS_EVENT_DELETE_SHARED_DEVICE_TOKEN = "delete_shared_device_token";
    public static final String ADOBE_ETS_EVENT_DEVICE_TOKEN_DELETED = "delete_device_token";
    public static final String ADOBE_ETS_EVENT_ENVIRONMENT_TYPE = "environment";
    public static final String ADOBE_ETS_EVENT_HEADERS = "requestHeaders";
    public static final String ADOBE_ETS_EVENT_HTTP_NETWORK_NONE = "none";
    public static final String ADOBE_ETS_EVENT_HTTP_NETWORK_WIFI = "wifi";
    public static final String ADOBE_ETS_EVENT_HTTP_NETWORK_WWAN = "wwan";
    public static final String ADOBE_ETS_EVENT_INGEST_TYPE = "ingesttype";
    public static final String ADOBE_ETS_EVENT_PROJECT = "project";
    public static final String ADOBE_ETS_EVENT_PROPERTY_BYTE_COUNT_SENT = "analytics.byte_count.sent";
    public static final String ADOBE_ETS_EVENT_PROPERTY_BYTE_COUNT_UNCOMPRESSED = "analytics.byte_count.uncompressed";
    public static final String ADOBE_ETS_EVENT_PROPERTY_CANCEL_REASON = "op.cancelReason";
    public static final String ADOBE_ETS_EVENT_PROPERTY_DEACTIVATION_COUNTER = "op.event.deactivation_counter";
    public static final String ADOBE_ETS_EVENT_PROPERTY_EXPECTED_ERROR = "op.expectedError";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_CLOUD = "http.cloud";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_LENGTH = "http.content.length";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_MD_5 = "http.content.md5";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_CONTENT_TYPE = "http.content.type";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_DURATION_QUEUE = "http.duration.queue";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_DURATION_REQUEST = "http.duration.request";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_NETWORK = "http.network";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_PRIORITY = "http.priority";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_REQUEST_ID = "http.request_id";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_RETRY_OF = "http.retry_of";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_STATUS = "http.status";
    public static final String ADOBE_ETS_EVENT_PROPERTY_HTTP_VERB = "http.verb";
    public static final String ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS = "analytics.num_events.completed";
    public static final String ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_DISCARDED = "analytics.num_events.discarded";
    public static final String ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_PENDING = "analytics.num_events.pending";
    public static final String ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_REJECTED = "analytics.num_events.rejected";
    public static final String ADOBE_ETS_EVENT_PROPERTY_NUM_EVENTS_REPORTED = "analytics.num_events.reported";
    public static final String ADOBE_ETS_EVENT_PROPERTY_OFFLINE_COUNTER = "op.event.offline_counter";
    public static final String ADOBE_ETS_EVENT_REFRESH_TOKEN_DELETED = "delete_refresh_token";
    public static final String ADOBE_ETS_EVENT_TIME = "time";
    public static final String ADOBE_ETS_EVENT_TOKEN_DELETED = "token_deleted";
    public static final String ADOBE_ETS_EVENT_TOKEN_TYPE = "app.token";
    public static final String ADOBE_ETS_EVENT_TYPE_ANALYTICS_OVERFLOW = "analytics.overflow";
    public static final String ADOBE_ETS_EVENT_TYPE_ANALYTICS_SUBMISSION = "analytics.submit";
    public static final String ADOBE_ETS_FILTER_ALL = "all";
    public static final String ADOBE_ETS_FILTER_ILLUSTRATOR = "illustration";
    public static final String ADOBE_ETS_FILTER_PHOTOS = "photos";
    public static final String ADOBE_ETS_FILTER_VECTORS = "vectors";
    public static final String ADOBE_ETS_FILTER_VIDEO = "video";
    public static final String ADOBE_ETS_ORIENTATION_ALL = "all";
    public static final String ADOBE_ETS_ORIENTATION_LANDSCAPE = "landscape";
    public static final String ADOBE_ETS_ORIENTATION_PANORAMIC = "panoramic";
    public static final String ADOBE_ETS_ORIENTATION_PORTRAIT = "portrait";
    public static final String ADOBE_ETS_ORIENTATION_SQUARE = "square";
    public static final String ADOBE_ETS_SORT_ORDER_CREATED = "creation_date";
    public static final String ADOBE_ETS_SORT_ORDER_DOWNLOADED = "downloaded";
    public static final String ADOBE_ETS_SORT_ORDER_FEATURED = "featured";
    public static final String ADOBE_ETS_SORT_ORDER_MOST_RECENT = "most_recent";
    public static final String ADOBE_ETS_SORT_ORDER_NUMBER_VIEWS = "number_views";
    public static final String ADOBE_ETS_SORT_ORDER_RELEVANCE = "relevence";
    public static final String ADOBE_ETS_SORT_ORDER_UNDISCOVERED = "undiscovered";
    public static final String ADOBE_ETS_VALUE_CATEGORY = "CSDK";
    public static final String ADOBE_ETS_VALUE_CREATIVE_SDK = "AdobeCreativeSDK";
    public static final String ADOBE_ETS_VALUE_ERROR_CODE_CANCEL = "cancelled";
    public static final String ADOBE_ETS_VALUE_ERROR_CODE_FAIL = "failure";
    public static final String ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS = "success";
    public static final String ADOBE_ETS_VALUE_PLATFORM_ANDROID = "Android";
    public static final String ADOBE_ETS_VALUE_UNKNOWN = "";
    public static final String ADOBE_ETS_VALUE_VIEW_TYPE_GRID = "grid";
    public static final String ADOBE_ETS_VALUE_VIEW_TYPE_LIST = "list";
    private static Map<String, String> _coreParams = new HashMap();
    private static String fallbackUserID = "";
    protected Map<String, Object> data = new HashMap();

    public AdobeAnalyticsETSEvent(String str) {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyType.getValue(), str);
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyStart.getValue(), Util.getDateTimeForETS());
        trackOriginatingSourceDetails();
        trackEventGlobalDetails();
    }

    public static void setUserID(String str) {
        fallbackUserID = str;
    }

    public void endAndTrackEvent() {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyEnd.getValue(), Util.getDateTimeForETS());
        trackEventGlobalNetworkDetails();
        AdobeAnalyticsETSJobManager.getSharedInstance().addNewEvent(this);
    }

    public void addEventParams(String str, String str2) {
        this.data.put(str, str2);
    }

    public void endAndTrackEventWithErrorCode(String str) {
        trackErrorCode(str);
        endAndTrackEvent();
    }

    public void trackErrorCode(String str) {
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyError.getValue(), str);
    }

    public void trackService(String str, String str2, String str3) {
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceName.getValue(), str);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceAPIVersion.getValue(), str3);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyServiceAPIName.getValue(), str2);
    }

    private void trackOriginatingSourceDetails() {
        Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
        String string = "";
        String str = "";
        if (applicationContext != null) {
            PackageManager packageManager = applicationContext.getPackageManager();
            string = applicationContext.getApplicationInfo().loadLabel(packageManager).toString();
            try {
                str = packageManager.getPackageInfo(applicationContext.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e2) {
                AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
            }
        }
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        if (sharedInstance != null) {
            this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyClientId.getValue(), sharedInstance.getClientID() != null ? sharedInstance.getClientID() : "");
        }
        this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyAppName.getValue(), string);
        this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyAppVersion.getValue(), str);
        this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyPlatform.getValue(), ADOBE_ETS_VALUE_PLATFORM_ANDROID);
        this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyDeviceType.getValue(), Util.getDeviceName());
        this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyOSVersion.getValue(), Build.VERSION.RELEASE != null ? Build.VERSION.RELEASE : "");
        if (applicationContext != null) {
            this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertyAppStoreId.getValue(), applicationContext.getPackageName());
            if (applicationContext.getPackageManager().hasSystemFeature("org.chromium.arc.device_management")) {
                this.data.put(AdobeAnalyticsEventParams.Source.AdobeEventPropertySubPlatform.getValue(), "ChromeBook");
            }
        }
    }

    private void trackEventGlobalNetworkDetails() {
        if (Boolean.valueOf(AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()).booleanValue()) {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyOffline.getValue(), "false");
        } else {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyOffline.getValue(), "true");
        }
    }

    private void trackEventGlobalDetails() {
        AdobeUXAuthManager.getSharedAuthManager();
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        if (this.data.get(AdobeAnalyticsEventParams.Core.AdobeEventPropertyUser.getValue()) == null) {
            String adobeID = sharedInstance != null ? sharedInstance.getAdobeID() : null;
            if (adobeID != null) {
                this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyUser.getValue(), adobeID);
            } else if (fallbackUserID != null && !fallbackUserID.isEmpty()) {
                this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyUser.getValue(), fallbackUserID);
            }
        }
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyGuid.getValue(), UUID.randomUUID().toString().toUpperCase());
        if (sharedInstance != null) {
            String deviceID = sharedInstance.getDeviceID();
            if (!TextUtils.isEmpty(deviceID)) {
                this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyDevice.getValue(), deviceID);
            }
            String iDPFlow = sharedInstance.getIDPFlow();
            if (!TextUtils.isEmpty(iDPFlow)) {
                this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyIMSFlow.getValue(), iDPFlow);
            }
            String serviceLevel = sharedInstance.getServiceLevel();
            if (!TextUtils.isEmpty(serviceLevel)) {
                this.data.put(AdobeAnalyticsEventParams.User.AdobeEventPropertyUserServiceLevel.getValue(), serviceLevel);
            }
            String serviceCodes = sharedInstance.getServiceCodes();
            if (!TextUtils.isEmpty(serviceCodes)) {
                this.data.put(AdobeAnalyticsEventParams.User.AdobeEventPropertyUserServiceCode.getValue(), serviceCodes);
            }
        }
        try {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyLanguage.getValue(), Resources.getSystem().getConfiguration().locale.toString());
        } catch (MissingResourceException e2) {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyError.getValue(), "Language Locale Error");
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyErrorDescription.getValue(), e2.getMessage());
        }
        this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCategory.getValue(), ADOBE_ETS_VALUE_CATEGORY);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyFrameworkName.getValue(), ADOBE_ETS_VALUE_CREATIVE_SDK);
        this.data.put(AdobeAnalyticsEventParams.Environment.AdobeEventPropertyFrameworkVersion.getValue(), AdobeCSDKFoundation.getVersion());
        String userAgent = AdobeNetworkUtils.getUserAgent();
        if (userAgent != null) {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyUserAgent.getValue(), userAgent);
        }
        String ipAddressAnalytic = Util.getIpAddressAnalytic();
        if (!TextUtils.isEmpty(ipAddressAnalytic)) {
            this.data.put(AdobeAnalyticsEventParams.Core.AdobeEventPropertyIPAddress.getValue(), ipAddressAnalytic);
        }
        this.data.put(AdobeAnalyticsEventParams.Network.AdobeEventPropertyNetworkStatus.getValue(), AdobeNetworkReachabilityUtil.getSharedInstance().getNetworkStatus().toString());
        if (_coreParams.size() > 0) {
            for (Map.Entry<String, String> entry : _coreParams.entrySet()) {
                this.data.put(entry.getKey(), entry.getValue());
            }
        }
        if (this.data.get("project") == null) {
            this.data.put("project", ADOBE_CSDK_PROJECT_NAME);
        }
    }

    public static void setCoreParams(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            _coreParams.put(entry.getKey(), entry.getValue());
        }
    }

    public static void setCoreParam(String str, String str2) {
        _coreParams.put(str, str2);
    }
}
