package com.adobe.creativesdk.foundation.internal.analytics;

import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAnalyticsETSSession {
    private static final String ETS_STRING_TAG = "ETSAnalytics";
    private static AdobeAnalyticsETSSession etsSession = null;
    private boolean isAnalyticsEnabled = true;
    private AdobeNetworkHttpService networkService;

    private AdobeAnalyticsETSSession() {
        this.networkService = null;
        this.networkService = new AdobeNetworkHttpService(getEndpointURL(), "Adobe Creative SDK", null);
    }

    public void enableAnalyticsReporting() {
        this.isAnalyticsEnabled = true;
    }

    public void disableAnalyticsReporting() {
        this.isAnalyticsEnabled = false;
    }

    private String getEndpointURL() {
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                return "https://cc-api-data.adobe.io/ingest";
            default:
                return "https://cc-api-data-stage.adobe.io/ingest";
        }
    }

    public static AdobeAnalyticsETSSession getSharedSession() {
        if (etsSession == null) {
            etsSession = new AdobeAnalyticsETSSession();
        }
        return etsSession;
    }

    public static byte[] compress(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes("UTF-8"));
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public AdobeNetworkHttpResponse sendEvent(String str) {
        URL url;
        byte[] bytes = null;
        if (!this.isAnalyticsEnabled) {
            return null;
        }
        AdobeLogger.log(Level.INFO, ETS_STRING_TAG, str);
        try {
            url = new URL(getEndpointURL());
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e2.getMessage(), e2);
            url = null;
        }
        if (url == null) {
            return null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(url, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, null);
        adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
        adobeNetworkHttpRequest.setRequestProperty("x-api-key", AdobeAuthIdentityManagementService.getSharedInstance().getClientID());
        adobeNetworkHttpRequest.setRequestProperty("Authorization", "Bearer " + AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e3) {
            AdobeLogger.log(Level.ERROR, getClass().getSimpleName(), e3.getMessage(), e3);
        }
        adobeNetworkHttpRequest.setBody(bytes);
        return this.networkService.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL);
    }
}
