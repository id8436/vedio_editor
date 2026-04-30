package com.adobe.creativesdk.foundation.internal.sendtodesktop;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeCreativeCloudApplication;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNotificationSession extends AdobeCloudServiceSession {
    private static ArrayList<String> appNotificationID;
    private static ArrayList<String> applicationString;

    protected static AdobeCloudEndpoint getServiceEndpoint() {
        String str;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://ans.adobe.io/ans/v1/notifications";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://stg-ans.adobe.io/ans/v1/notifications";
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobeNotificationSession.class.getSimpleName(), "An undefined authentication endpoint has been specified.");
                str = null;
                break;
        }
        try {
            return new AdobeCloudEndpoint(null, str != null ? new URL(str) : null, AdobeCloudServiceType.AdobeCloudServiceTypeNotification);
        } catch (MalformedURLException e2) {
            return null;
        }
    }

    public static AdobeCloudServiceSession getSessionForCloudEndpoint(AdobeCloudEndpoint adobeCloudEndpoint) {
        if (adobeCloudEndpoint == null) {
            adobeCloudEndpoint = getServiceEndpoint();
        }
        return new AdobeNotificationSession(adobeCloudEndpoint);
    }

    public AdobeNotificationSession(AdobeCloudEndpoint adobeCloudEndpoint) {
        super(adobeCloudEndpoint);
        setUpService();
        setDisconnectionNotifier(AdobeInternalNotificationID.AdobeNotificationServiceDisconnectedNotification);
        setupOngoingConnectionTimer(15L, false);
    }

    public AdobeNotificationSession(AdobeNetworkHttpService adobeNetworkHttpService, String str) {
        super(adobeNetworkHttpService, str);
    }

    public AdobeNotificationSession(AdobeNetworkHttpService adobeNetworkHttpService) {
        super(adobeNetworkHttpService, null);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void setUpService() {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession
    public void tearDownService() {
        super.tearDownService();
    }

    public static ArrayList<String> getApplicationString() {
        synchronized (AdobeNotificationSession.class) {
            if (applicationString == null) {
                applicationString = new ArrayList<>();
                applicationString.add("Unknown");
                applicationString.add("Photoshop");
                applicationString.add(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetIllustrator);
                applicationString.add(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetInDesign);
            }
        }
        return applicationString;
    }

    public static ArrayList<String> getAppNotificationID() {
        synchronized (AdobeNotificationSession.class) {
            if (appNotificationID == null) {
                appNotificationID = new ArrayList<>();
                appNotificationID.add("Unknown");
                appNotificationID.add("PHSP");
                appNotificationID.add("ILST");
                appNotificationID.add("IDSN");
                appNotificationID.add("FLPR");
            }
        }
        return appNotificationID;
    }

    public static long getTimeIntervalSince1970() {
        Calendar.getInstance(TimeZone.getTimeZone("UTC")).clear();
        return System.currentTimeMillis();
    }

    public static byte[] dataUsingEncoding(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public AdobeNetworkHttpRequest requestFor(String str, String str2, AdobeCloud adobeCloud, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str3) {
        String guid;
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        AdobeNetworkHttpService service = getService();
        if (service != null) {
            adobeNetworkHttpRequest.setUrl(service.getBaseURL());
            AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
            String str4 = getAppNotificationID().get(adobeCreativeCloudApplication.getValue());
            if (adobeCloud == null) {
                guid = AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID();
            } else {
                guid = adobeCloud.getGUID();
            }
            byte[] bArrDataUsingEncoding = dataUsingEncoding(String.format("{\"notifications\":{\"notification\":[{\"payload\": \"{%s}\",\"state\":\"NEW\",\"type\":\"com.adobe.push.desktop.v1\",\"user-id\":\"%s\",\"sub-type\":\"asset.desktop.push\"}]}}", String.format("\\\"targets\\\":[{\\\"type\\\":\\\"appLaunch\\\",\\\"target\\\":{\\\"context\\\":{\\\"args\\\":[\\\"[ASSET_PATH]\\\"]},\\\"identifier\\\":\\\"%s\\\"}}],\\\"id\\\":\\\"%s\\\",\\\"source\\\":{\\\"id\\\":\\\"%s\\\"},\\\"asset\\\":{\\\"cloudId\\\":\\\"%s\\\",\\\"uri\\\":\\\"\\\\/%s\\\",\\\"name\\\":\\\"%s\\\",\\\"type\\\":\\\"%s\\\"}", str4, AdobeStorageUtils.generateUuid(), sharedInstance.getDeviceID(), guid, str, str2, str3), AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID()));
            adobeNetworkHttpRequest.setBody(bArrDataUsingEncoding);
            adobeNetworkHttpRequest.setRequestProperty("Content-length", String.valueOf(bArrDataUsingEncoding.length));
            adobeNetworkHttpRequest.setRequestProperty("Content-type", "application/json");
            adobeNetworkHttpRequest.setRequestProperty("Accept", "application/json");
            adobeNetworkHttpRequest.setRequestProperty("x-api-key", AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getClientID());
            adobeNetworkHttpRequest.setRequestProperty("Authorization", "Bearer " + AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST);
            return adobeNetworkHttpRequest;
        }
        return null;
    }

    AdobeCSDKException errorFromResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, String str, String str2) {
        AdobeNetworkException adobeNetworkException = null;
        if (adobeNetworkHttpResponse.getStatusCode() == 400) {
            adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
        } else if (adobeNetworkHttpResponse.getStatusCode() == 401) {
            adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorAuthenticationFailed);
        }
        if (adobeNetworkException == null) {
            return AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse, adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders());
        }
        return adobeNetworkException;
    }

    public AdobeNetworkHttpTaskHandle responseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        return getService().getResponseForDataRequest(adobeNetworkHttpRequest, adobeNetworkRequestPriority, iAdobeNetworkCompletionHandler, handler);
    }

    public AdobeNetworkHttpResponse responseFor(AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        return getService().getResponseForDataRequest(adobeNetworkHttpRequest, adobeNetworkRequestPriority);
    }
}
