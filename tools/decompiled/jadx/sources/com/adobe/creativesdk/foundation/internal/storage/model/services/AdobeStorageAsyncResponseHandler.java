package com.adobe.creativesdk.foundation.internal.storage.model.services;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageAsyncResponseHandler {
    IAdobeStorageAsyncResponseHandlerCallback callback;
    long secondsToRetry;
    AdobeStorageSession session;

    protected AdobeStorageAsyncResponseHandler(long j, AdobeStorageSession adobeStorageSession, IAdobeStorageAsyncResponseHandlerCallback iAdobeStorageAsyncResponseHandlerCallback) {
        this.secondsToRetry = j;
        this.callback = iAdobeStorageAsyncResponseHandlerCallback;
        this.session = adobeStorageSession;
    }

    public void startMonitoringServiceEndPoint(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        Handler handler;
        try {
            String string = new JSONObject(adobeNetworkHttpResponse.getDataString()).getString("href");
            try {
                handler = new Handler();
            } catch (Exception e2) {
                handler = null;
            }
            poll(string, this.secondsToRetry, handler);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void poll(final String str, final long j, final Handler handler) {
        try {
            AdobeStorageSession adobeStorageSession = this.session;
            URL url = new URI(adobeStorageSession.getServiceForSchemaId("files").baseURL().toString() + str).toURL();
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
            adobeNetworkHttpRequest.setUrl(url);
            adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
            adobeStorageSession.getResponseFor(adobeNetworkHttpRequest, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageAsyncResponseHandler.1
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    int i;
                    switch (adobeNetworkHttpResponse.getStatusCode()) {
                        case 200:
                            String dataString = adobeNetworkHttpResponse.getDataString();
                            Matcher matcher = Pattern.compile("^([0-9]+)").matcher(dataString.substring(dataString.indexOf(" ") + 1));
                            if (matcher.find()) {
                                try {
                                    i = Integer.parseInt(matcher.group(0));
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    i = 0;
                                }
                                if (i == 200 || i == 201) {
                                    AdobeStorageAsyncResponseHandler.this.callback.onComplete(adobeNetworkHttpResponse);
                                } else {
                                    AdobeStorageAsyncResponseHandler.this.callback.onError(adobeNetworkHttpResponse);
                                }
                            } else {
                                AdobeStorageAsyncResponseHandler.this.callback.onError(adobeNetworkHttpResponse);
                            }
                            break;
                        case 202:
                            try {
                                Thread.sleep(j);
                            } catch (InterruptedException e3) {
                                e3.printStackTrace();
                            }
                            AdobeStorageAsyncResponseHandler.this.poll(str, j, handler);
                            break;
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    AdobeStorageAsyncResponseHandler.this.callback.onError(adobeNetworkException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            }, handler);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
        }
    }
}
