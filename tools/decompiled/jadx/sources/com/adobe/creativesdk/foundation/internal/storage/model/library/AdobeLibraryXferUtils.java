package com.adobe.creativesdk.foundation.internal.storage.model.library;

import android.content.Context;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryXferUtils implements IAdobeNetworkHttpServiceDelegate {
    private static AdobeLibraryXferUtils _sharedInstance = null;
    private static Map<String, AdobeNetworkHttpService> _services = null;

    private AdobeLibraryXferUtils() {
    }

    public static synchronized AdobeLibraryXferUtils getSharedInstance() {
        if (_sharedInstance == null) {
            _sharedInstance = new AdobeLibraryXferUtils();
        }
        return _sharedInstance;
    }

    public AdobeNetworkHttpService getTempServiceForURL(URL url) {
        String accessToken;
        boolean z = false;
        synchronized (this) {
            if (_services == null) {
                _services = new HashMap();
            }
        }
        String string = url.toString();
        String str = !string.endsWith(URIUtil.SLASH) ? string + URIUtil.SLASH : string;
        AdobeNetworkHttpService adobeNetworkHttpService = _services.get(str);
        if (adobeNetworkHttpService == null) {
            String lowerCase = url.getHost().toLowerCase();
            int i = 0;
            while (true) {
                if (i >= AdobeLibraryCompositeConstantsInternal.AdobeLibraryWhitelistedDomains.length) {
                    break;
                }
                if (!lowerCase.startsWith(AdobeLibraryCompositeConstantsInternal.AdobeLibraryWhitelistedDomains[i])) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            }
            HashMap map = new HashMap();
            if (z) {
                AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
                accessToken = sharedInstance.getAccessToken();
                if (sharedInstance.getClientID() != null) {
                    map.put("x-api-key", sharedInstance.getClientID());
                }
            } else {
                accessToken = null;
            }
            Context applicationContext = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
            AdobeNetworkHttpService adobeNetworkHttpService2 = new AdobeNetworkHttpService(str, applicationContext != null ? applicationContext.getPackageName() : null, map);
            if (z) {
                adobeNetworkHttpService2.setAccessToken(accessToken);
                adobeNetworkHttpService2.setHttpServiceDelegate(this);
            }
            _services.put(str, adobeNetworkHttpService2);
            return adobeNetworkHttpService2;
        }
        return adobeNetworkHttpService;
    }

    public AdobeNetworkHttpTaskHandle downloadExternalFile(URL url, String str, final IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeNetworkException> iAdobeGenericErrorCallback) {
        AdobeNetworkHttpTaskHandle responseForDataRequest;
        if (!AdobeLibraryManager.getSharedInstance().isSyncEnabled()) {
            return null;
        }
        AdobeNetworkHttpService adobeNetworkHttpService = new AdobeNetworkHttpService(url.toString(), AdobeAuthIdentityManagementService.getSharedInstance().getClientID(), null);
        adobeNetworkHttpService.setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET);
        IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler = new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.model.library.AdobeLibraryXferUtils.1
            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                if (adobeNetworkHttpResponse.getStatusCode() == 200) {
                    iAdobeGenericCompletionCallback.onCompletion(null);
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                iAdobeGenericErrorCallback.onError(adobeNetworkException);
            }
        };
        if (str != null) {
            responseForDataRequest = adobeNetworkHttpService.getResponseForDownloadRequest(adobeNetworkHttpRequest, str, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, null);
        } else {
            responseForDataRequest = adobeNetworkHttpService.getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, iAdobeNetworkCompletionHandler, null);
        }
        return responseForDataRequest;
    }

    public static boolean validateURL(String str) {
        return true;
    }

    public static boolean isUnrecoverableError(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        int statusCode = adobeNetworkHttpResponse.getStatusCode();
        adobeNetworkHttpResponse.getNetworkException();
        return statusCode > 0 && statusCode != 401 && statusCode != 407 && statusCode != 408 && statusCode >= 400 && statusCode < 500;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public boolean HTTPServiceAuthenticationDidFail(AdobeNetworkHttpService adobeNetworkHttpService) {
        if (adobeNetworkHttpService == null || adobeNetworkHttpService.getAccessToken() == null) {
            return false;
        }
        String accessToken = AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
        if (adobeNetworkHttpService.getAccessToken().equals(accessToken)) {
            return false;
        }
        adobeNetworkHttpService.setAccessToken(accessToken);
        adobeNetworkHttpService.setSuspended(false);
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceDidDisconnect(AdobeNetworkHttpService adobeNetworkHttpService) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceIsActive(AdobeNetworkHttpService adobeNetworkHttpService) {
    }
}
