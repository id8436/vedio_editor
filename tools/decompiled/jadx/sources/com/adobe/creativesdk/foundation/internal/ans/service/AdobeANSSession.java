package com.adobe.creativesdk.foundation.internal.ans.service;

import android.os.Build;
import android.os.Handler;
import android.support.annotation.Nullable;
import c.a.a.a.a.b.a;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback;
import com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationQueryCallback;
import com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeNotificationUnreadCountCallback;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceRegistrationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeDeviceUnregisterCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.delegates.IAdobeUpdateNotificationCallback;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotification;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeANSSession {
    public static final String APPLICATION_JSON = "application/json";
    public static final String X_ADOBE_APP_ID = "x-adobe-app-id";
    public static final String X_ADOBE_DEVICE_ID = "x-adobe-device-id";
    public static final String X_USER_TOKEN = "x-user-token";
    private static String _userToken;
    private static AdobeNetworkHttpService sharedService;
    private static AdobeANSSession sharedSession;

    private AdobeANSSession() {
    }

    public static synchronized AdobeANSSession sharedSession() {
        AdobeANSSession adobeANSSession = null;
        String str = null;
        adobeANSSession = null;
        synchronized (AdobeANSSession.class) {
            if (sharedSession == null) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                if (sharedInstance.getAccessToken() != null && sharedInstance.getAccessToken().length() != 0) {
                    _userToken = String.format("Bearer %s", sharedInstance.getAccessToken());
                    switch (sharedInstance.getEnvironment()) {
                        case AdobeAuthIMSEnvironmentStageUS:
                            str = "https://stg-ans.oobesaas.adobe.com";
                            break;
                        case AdobeAuthIMSEnvironmentProductionUS:
                            str = "https://ans.oobesaas.adobe.com";
                            break;
                        default:
                            AdobeLogger.log(Level.ERROR, "ANS Session", "An undefined authentication endpoint has been specified for the ANS session");
                            break;
                    }
                    sharedService = new AdobeNetworkHttpService(str, null, null);
                    sharedSession = initWithHTTPService(sharedService);
                }
            }
            adobeANSSession = sharedSession;
        }
        return adobeANSSession;
    }

    public static void resetSharedSession() {
        sharedSession = null;
    }

    private static AdobeANSSession initWithHTTPService(AdobeNetworkHttpService adobeNetworkHttpService) {
        synchronized (AdobeANSSession.class) {
            if (sharedSession == null) {
                sharedSession = new AdobeANSSession();
            }
        }
        sharedService = adobeNetworkHttpService;
        return sharedSession;
    }

    public AdobeNetworkHttpRequest registerDevice(String str, String str2, String str3, String str4, String str5, final IAdobeDeviceRegistrationCallback iAdobeDeviceRegistrationCallback) {
        URL url;
        if (str4 == null || str4.length() == 0) {
            AdobeLogger.log(Level.ERROR, "registerDevice", "device token cannot be null.");
            iAdobeDeviceRegistrationCallback.onError();
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("device-type", str);
            jSONObject.putOpt("device-platform", AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_PLATFORM_ANDROID);
            jSONObject.putOpt("device-os-name", a.ANDROID_CLIENT_TYPE);
            jSONObject.putOpt("device-os-version", Build.VERSION.RELEASE);
            jSONObject.putOpt("android-registration-id", str4);
            jSONObject.putOpt("android-package-name", str5);
            jSONObject.putOpt("android-id", str3);
            jSONObject.putOpt("locale", "en_US");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        String string = jSONObject.toString();
        try {
            url = new URL(sharedService.baseURL() + "/ans/v1/device");
        } catch (MalformedURLException e3) {
            e3.printStackTrace();
            url = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str2);
        return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, string, "application/json", new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.1
            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onSuccess(JSONObject jSONObject2) {
                iAdobeDeviceRegistrationCallback.onSuccess(jSONObject2);
            }

            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDeviceRegistrationCallback.onError();
            }
        });
    }

    public AdobeNetworkHttpRequest unregisterDevice(String str, String str2, final IAdobeDeviceUnregisterCallback iAdobeDeviceUnregisterCallback) {
        if (str2 == null || str2.length() == 0) {
            AdobeLogger.log(Level.ERROR, "unregisterDevice", "device ID cannot be nil.");
            iAdobeDeviceUnregisterCallback.onError();
            return null;
        }
        URL url = getUrl("/ans/v1/device");
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_DEVICE_ID, str2);
        return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE, null, null, new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.2
            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onSuccess(JSONObject jSONObject) {
                iAdobeDeviceUnregisterCallback.onSuccess();
            }

            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeDeviceUnregisterCallback.onError();
            }
        });
    }

    public AdobeNetworkHttpRequest queryNotifications(String str, String str2, long j, long j2, int i, final IAdobeNotificationQueryCallback iAdobeNotificationQueryCallback) {
        if (str2 == null || str2.length() == 0) {
            AdobeLogger.log(Level.ERROR, "queryNotifications", "device ID cannot be nil");
            iAdobeNotificationQueryCallback.onError();
            return null;
        }
        if (i < 1 || i > 10) {
            AdobeLogger.log(Level.ERROR, "queryNotifications", "page size must be between 1 and 10");
            iAdobeNotificationQueryCallback.onError();
            return null;
        }
        URL url = getUrl(String.format("/ans/v1/notifications?from=%s&to=%s&page_size=%s", Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_DEVICE_ID, str2);
        return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, null, new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.3
            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onSuccess(JSONObject jSONObject) {
                iAdobeNotificationQueryCallback.onSuccess(jSONObject);
            }

            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNotificationQueryCallback.onError();
            }
        });
    }

    public AdobeNetworkHttpRequest queryUnreadNotificationCount(String str, String str2, final IAdobeNotificationUnreadCountCallback iAdobeNotificationUnreadCountCallback) {
        if (str2 == null || str2.length() == 0) {
            AdobeLogger.log(Level.ERROR, "queryUnreadNotificationCount", "userID ID cannot be nil");
            iAdobeNotificationUnreadCountCallback.onError();
            return null;
        }
        URL url = getUrl("/ans/v2/notifications/count");
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str);
        adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_DEVICE_ID, str2);
        return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, null, new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.4
            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onSuccess(JSONObject jSONObject) {
                iAdobeNotificationUnreadCountCallback.onSuccess(jSONObject.optInt("unread-count"));
            }

            @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeNotificationUnreadCountCallback.onError();
            }
        });
    }

    public AdobeNetworkHttpRequest updateNotifications(String str, List<AdobePushNotification> list, String str2, final IAdobeUpdateNotificationCallback iAdobeUpdateNotificationCallback) {
        if (list == null || list.isEmpty()) {
            AdobeLogger.log(Level.ERROR, "updateNotifications", "notificationIDs can not be nil or empty");
            iAdobeUpdateNotificationCallback.onError();
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (AdobePushNotification adobePushNotification : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_NOTIFICATION_ID, adobePushNotification.getNotificationID());
                jSONObject.put("state", str2);
                jSONObject.put("timestamp", adobePushNotification.getTimestamp() + 1);
                jSONArray.put(jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("notification", jSONArray);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("notifications", jSONObject2);
            String string = jSONObject3.toString();
            URL url = getUrl("/ans/v1/notifications");
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
            adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str);
            return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, string, "application/json", new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.5
                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
                public void onSuccess(JSONObject jSONObject4) {
                    iAdobeUpdateNotificationCallback.onSuccess(jSONObject4);
                }

                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeUpdateNotificationCallback.onError();
                }
            });
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Nullable
    private URL getUrl(String str) {
        try {
            return new URL(sharedService.baseURL().toString() + str);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public AdobeNetworkHttpRequest updateNotifications(String str, String str2, long j, String str3, final IAdobeUpdateNotificationCallback iAdobeUpdateNotificationCallback) {
        if (str2 == null || str2.length() == 0) {
            AdobeLogger.log(Level.ERROR, "updateNotifications", "notificationIDs can not be nil or empty");
            iAdobeUpdateNotificationCallback.onError();
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_NOTIFICATION_ID, str2);
            jSONObject.put("state", str3);
            jSONObject.put("timestamp", 1 + j);
            jSONArray.put(jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("notification", jSONArray);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("notifications", jSONObject2);
            String string = jSONObject3.toString();
            URL url = getUrl("/ans/v1/notifications");
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestProperty(X_USER_TOKEN, _userToken);
            adobeNetworkHttpRequest.setRequestProperty(X_ADOBE_APP_ID, str);
            return getResponseFor(adobeNetworkHttpRequest, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPUT, string, "application/json", new IAdobeANSResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.6
                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
                public void onSuccess(JSONObject jSONObject4) {
                    iAdobeUpdateNotificationCallback.onSuccess(jSONObject4);
                }

                @Override // com.adobe.creativesdk.foundation.internal.ans.delegates.IAdobeANSResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeUpdateNotificationCallback.onError();
                }
            });
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private AdobeNetworkHttpRequest getResponseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, final AdobeNetworkHttpRequestMethod adobeNetworkHttpRequestMethod, String str, String str2, final IAdobeANSResponseCallback iAdobeANSResponseCallback) {
        Handler handler;
        adobeNetworkHttpRequest.setRequestMethod(adobeNetworkHttpRequestMethod);
        if (str != null) {
            adobeNetworkHttpRequest.setRequestProperty("Content-Type", str2);
            adobeNetworkHttpRequest.setRequestProperty("Content-length", String.format("%d", Integer.valueOf(str.length())));
            adobeNetworkHttpRequest.setBody(dataUsingEncoding(str));
        }
        adobeNetworkHttpRequest.setRequestProperty("Accept", "application/json");
        try {
            handler = new Handler();
        } catch (Exception e2) {
            handler = null;
        }
        sharedService.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.ans.service.AdobeANSSession.7
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                if (statusCode != 200 && statusCode != 201) {
                    onError(AdobeANSSession.getErrorFromResponse());
                    return;
                }
                JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString());
                if (jSONObjectJSONObjectWithData != null) {
                    iAdobeANSResponseCallback.onSuccess(jSONObjectJSONObjectWithData);
                } else if (adobeNetworkHttpRequestMethod != AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodDELETE) {
                    onError(AdobeANSSession.getErrorFromResponse());
                } else {
                    iAdobeANSResponseCallback.onSuccess(null);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeANSResponseCallback.onError(adobeNetworkException);
            }
        }, handler);
        return adobeNetworkHttpRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdobeNetworkException getErrorFromResponse() {
        return new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
    }

    private static byte[] dataUsingEncoding(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
