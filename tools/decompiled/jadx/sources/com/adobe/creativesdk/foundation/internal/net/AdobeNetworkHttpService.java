package com.adobe.creativesdk.foundation.internal.net;

import android.os.Handler;
import android.os.Looper;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.utils.AdobeNetworkUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpService {
    public static final long AdobeNetworkHTTPProgressCompletionFudge = 10;
    static final String NETTAG = "NetworkService";
    private Map<String, String> _additionalHTTPHeaders;
    private String _applicationName;
    private URL _baseURL;
    private int _numConcurrentRequests;
    private AtomicInteger _recentErrorCount;
    private AdobeNetworkHttpRequestExecutor _requestExecutor;
    private static int AdobeNetworkHTTPServiceMaxConcurrentRequests = 5;
    private static int AdobeNetworkHTTPServiceMaxAuthTokenHistory = 10;
    private static int _recentErrorThresholdToDisconnect = 10;
    private static List<Date> _authTokenHistory = Collections.synchronizedList(new ArrayList());
    private static Map<String, Boolean> _recentAuthTokens = new LinkedHashMap();
    private static Object _recentAuthTokensMutex = new Object();
    private String _accessToken = null;
    private IAdobeNetworkHttpServiceDelegate _serviceDelegate = null;

    interface RunnableInternal extends Runnable {
        void runInternal();
    }

    public AdobeNetworkHttpService(String str, String str2, Map<String, String> map) {
        this._baseURL = null;
        this._applicationName = null;
        this._additionalHTTPHeaders = null;
        this._numConcurrentRequests = 5;
        this._requestExecutor = null;
        this._recentErrorCount = null;
        try {
            this._baseURL = new URL(str);
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.INFO, AdobeNetworkHttpService.class.getName(), "Malformed url", e2);
        }
        this._applicationName = str2;
        this._additionalHTTPHeaders = map;
        this._numConcurrentRequests = 5;
        _recentErrorThresholdToDisconnect = 5;
        this._recentErrorCount = new AtomicInteger(0);
        this._requestExecutor = new AdobeNetworkHttpRequestExecutor(this._numConcurrentRequests, this._numConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public void setHttpServiceDelegate(IAdobeNetworkHttpServiceDelegate iAdobeNetworkHttpServiceDelegate) {
        this._serviceDelegate = iAdobeNetworkHttpServiceDelegate;
    }

    public URL getBaseURL() {
        return this._baseURL;
    }

    public void setBaseURL(URL url) {
        this._baseURL = url;
    }

    public void setConcurrentRequestCount(int i) {
        this._numConcurrentRequests = i;
        if (this._numConcurrentRequests < 1) {
            this._numConcurrentRequests = 1;
        }
        if (this._numConcurrentRequests > AdobeNetworkHTTPServiceMaxConcurrentRequests) {
            this._numConcurrentRequests = AdobeNetworkHTTPServiceMaxConcurrentRequests;
        }
        this._requestExecutor.setCorePoolSize(i);
    }

    public synchronized void setRecentErrorThresholdToDisconnect(int i) {
        _recentErrorThresholdToDisconnect = i;
    }

    public synchronized void reconnect() {
        this._recentErrorCount.set(0);
    }

    public synchronized boolean isConnected() {
        return this._recentErrorCount.get() < _recentErrorThresholdToDisconnect;
    }

    public boolean isSuspended() {
        return this._requestExecutor.isPaused();
    }

    public void setSuspended(boolean z) {
        if (z) {
            this._requestExecutor.pause();
        } else {
            this._requestExecutor.resume();
        }
    }

    public void clearQueuedRequests() {
        this._requestExecutor.shutdownNow();
        this._requestExecutor = new AdobeNetworkHttpRequestExecutor(this._numConcurrentRequests, this._numConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public URL baseURL() {
        return this._baseURL;
    }

    public synchronized boolean hasEncounteredTooManyAuthFailures() {
        boolean z;
        if (_authTokenHistory.size() >= AdobeNetworkHTTPServiceMaxAuthTokenHistory) {
            Date date = new Date();
            synchronized (_authTokenHistory) {
                int i = 0;
                while (true) {
                    if (i >= _authTokenHistory.size()) {
                        z = false;
                        break;
                    }
                    if (date.getTime() - _authTokenHistory.get(i).getTime() <= 300000) {
                        i++;
                    } else {
                        z = true;
                        break;
                    }
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    public void setAccessToken(String str) {
        synchronized (_authTokenHistory) {
            this._accessToken = str;
            if (str != null) {
                if (_authTokenHistory.size() >= AdobeNetworkHTTPServiceMaxAuthTokenHistory) {
                    _authTokenHistory.remove(_authTokenHistory.size() - 1);
                }
                _authTokenHistory.add(new Date());
            } else {
                _authTokenHistory = Collections.synchronizedList(new ArrayList());
            }
        }
    }

    public synchronized String getAccessToken() {
        return this._accessToken;
    }

    public AdobeNetworkHttpTaskHandle getResponseForDataRequest(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, final Handler handler) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
        final AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler = new AdobeNetworkHttpResponseHandler() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.1
            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponseHandler
            public void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeNetworkHttpService.this._analyseResponse(adobeNetworkHttpResponse, adobeNetworkHttpTaskHandle, this._requestRunner, iAdobeNetworkCompletionHandler, handler);
            }
        };
        RunnableInternal runnableInternal = new RunnableInternal() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.2
            @Override // java.lang.Runnable
            public void run() {
                runInternal();
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.RunnableInternal
            public void runInternal() {
                if (!AdobeNetworkHttpService.this.isConnected()) {
                    AdobeNetworkHttpService.this._sendDisconnectError(iAdobeNetworkCompletionHandler, handler);
                    return;
                }
                AdobeNetworkHttpDataDownloadTask adobeNetworkHttpDataDownloadTask = new AdobeNetworkHttpDataDownloadTask();
                String accessToken = AdobeNetworkHttpService.this.getAccessToken();
                adobeNetworkHttpDataDownloadTask.init(adobeNetworkHttpRequest, accessToken, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
                try {
                    adobeNetworkHttpTaskHandle.setFuture(AdobeNetworkHttpService.this._requestExecutor.submit(adobeNetworkHttpDataDownloadTask));
                    adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpService.NETTAG, null, e2);
                }
            }
        };
        adobeNetworkHttpResponseHandler._requestRunner = runnableInternal;
        runnableInternal.runInternal();
        return adobeNetworkHttpTaskHandle;
    }

    public AdobeNetworkHttpResponse getResponseForDataRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        if (isConnected()) {
            AdobeNetworkHttpDataDownloadTask adobeNetworkHttpDataDownloadTask = new AdobeNetworkHttpDataDownloadTask();
            AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
            String accessToken = getAccessToken();
            adobeNetworkHttpDataDownloadTask.init(adobeNetworkHttpRequest, accessToken, null, adobeNetworkHttpTaskHandle);
            try {
                Future futureSubmit = this._requestExecutor.submit(adobeNetworkHttpDataDownloadTask);
                adobeNetworkHttpTaskHandle.setFuture(futureSubmit);
                adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                return futureSubmit.get();
            } catch (Exception e2) {
                AdobeLogger.log(Level.ERROR, NETTAG, "Network Disconnected!", e2);
            }
        }
        return null;
    }

    public AdobeNetworkHttpTaskHandle getResponseForDownloadRequest(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final String str, AdobeNetworkRequestPriority adobeNetworkRequestPriority, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, final Handler handler) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
        adobeNetworkHttpTaskHandle.setNotifyHandler(handler);
        final AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler = new AdobeNetworkHttpResponseHandler() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.3
            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponseHandler
            public void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeNetworkHttpService.this._analyseResponse(adobeNetworkHttpResponse, adobeNetworkHttpTaskHandle, this._requestRunner, iAdobeNetworkCompletionHandler, handler);
            }
        };
        RunnableInternal runnableInternal = new RunnableInternal() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.4
            @Override // java.lang.Runnable
            public void run() {
                runInternal();
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.RunnableInternal
            public void runInternal() {
                if (!AdobeNetworkHttpService.this.isConnected()) {
                    AdobeNetworkHttpService.this._sendDisconnectError(iAdobeNetworkCompletionHandler, handler);
                    return;
                }
                AdobeNetworkHttpFileDownloadTask adobeNetworkHttpFileDownloadTask = new AdobeNetworkHttpFileDownloadTask();
                String accessToken = AdobeNetworkHttpService.this.getAccessToken();
                adobeNetworkHttpFileDownloadTask.init(adobeNetworkHttpRequest, accessToken, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
                try {
                    adobeNetworkHttpTaskHandle.setFuture(AdobeNetworkHttpService.this._requestExecutor.submit(adobeNetworkHttpFileDownloadTask));
                    adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpService.NETTAG, null, e2);
                }
            }
        };
        adobeNetworkHttpResponseHandler._requestRunner = runnableInternal;
        runnableInternal.runInternal();
        return adobeNetworkHttpTaskHandle;
    }

    public AdobeNetworkHttpTaskHandle getResponseForUploadRequest(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final String str, AdobeNetworkRequestPriority adobeNetworkRequestPriority, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, final Handler handler) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
        adobeNetworkHttpTaskHandle.setNotifyHandler(handler);
        final AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler = new AdobeNetworkHttpResponseHandler() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.5
            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponseHandler
            public void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeNetworkHttpService.this._analyseResponse(adobeNetworkHttpResponse, adobeNetworkHttpTaskHandle, this._requestRunner, iAdobeNetworkCompletionHandler, handler);
            }
        };
        RunnableInternal runnableInternal = new RunnableInternal() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.6
            @Override // java.lang.Runnable
            public void run() {
                runInternal();
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.RunnableInternal
            public void runInternal() {
                if (!AdobeNetworkHttpService.this.isConnected()) {
                    AdobeNetworkHttpService.this._sendDisconnectError(iAdobeNetworkCompletionHandler, handler);
                    return;
                }
                String accessToken = AdobeNetworkHttpService.this.getAccessToken();
                AdobeNetworkHttpFileUploadTask adobeNetworkHttpFileUploadTask = new AdobeNetworkHttpFileUploadTask();
                adobeNetworkHttpFileUploadTask.init(adobeNetworkHttpRequest, accessToken, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
                try {
                    Future<AdobeNetworkHttpResponse> futureSubmit = AdobeNetworkHttpService.this._requestExecutor.submit(adobeNetworkHttpFileUploadTask);
                    adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                    adobeNetworkHttpTaskHandle.setFuture(futureSubmit);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpService.NETTAG, null, e2);
                }
            }
        };
        adobeNetworkHttpResponseHandler._requestRunner = runnableInternal;
        runnableInternal.runInternal();
        return adobeNetworkHttpTaskHandle;
    }

    public AdobeNetworkHttpTaskHandle getResponseForUploadRequestFromStream(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final InputStream inputStream, AdobeNetworkRequestPriority adobeNetworkRequestPriority, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, final Handler handler) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
        adobeNetworkHttpTaskHandle.setNotifyHandler(handler);
        final AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler = new AdobeNetworkHttpResponseHandler() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.7
            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponseHandler
            public void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeNetworkHttpService.this._analyseResponse(adobeNetworkHttpResponse, adobeNetworkHttpTaskHandle, this._requestRunner, iAdobeNetworkCompletionHandler, handler);
            }
        };
        RunnableInternal runnableInternal = new RunnableInternal() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.8
            @Override // java.lang.Runnable
            public void run() {
                runInternal();
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.RunnableInternal
            public void runInternal() {
                if (!AdobeNetworkHttpService.this.isConnected()) {
                    AdobeNetworkHttpService.this._sendDisconnectError(iAdobeNetworkCompletionHandler, handler);
                    return;
                }
                String accessToken = AdobeNetworkHttpService.this.getAccessToken();
                AdobeNetworkHttpFileUploadStreamTask adobeNetworkHttpFileUploadStreamTask = new AdobeNetworkHttpFileUploadStreamTask();
                adobeNetworkHttpFileUploadStreamTask.init(adobeNetworkHttpRequest, accessToken, inputStream, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
                try {
                    Future<AdobeNetworkHttpResponse> futureSubmit = AdobeNetworkHttpService.this._requestExecutor.submit(adobeNetworkHttpFileUploadStreamTask);
                    adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                    adobeNetworkHttpTaskHandle.setFuture(futureSubmit);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpService.NETTAG, null, e2);
                }
            }
        };
        adobeNetworkHttpResponseHandler._requestRunner = runnableInternal;
        runnableInternal.runInternal();
        return adobeNetworkHttpTaskHandle;
    }

    public AdobeNetworkHttpTaskHandle getResponseForMultiPartDataRequest(final AdobeNetworkHttpRequest adobeNetworkHttpRequest, final String str, final ArrayList<AdobeMultiPartData> arrayList, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, final Handler handler) {
        _addAdditionalHttpHeaders(adobeNetworkHttpRequest);
        final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = new AdobeNetworkHttpTaskHandle();
        adobeNetworkHttpTaskHandle.setNotifyHandler(handler);
        final AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler = new AdobeNetworkHttpResponseHandler() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.9
            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponseHandler
            public void handleResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                AdobeNetworkHttpService.this._analyseResponse(adobeNetworkHttpResponse, adobeNetworkHttpTaskHandle, this._requestRunner, iAdobeNetworkCompletionHandler, handler);
            }
        };
        RunnableInternal runnableInternal = new RunnableInternal() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.10
            @Override // java.lang.Runnable
            public void run() {
                runInternal();
            }

            @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.RunnableInternal
            public void runInternal() {
                if (!AdobeNetworkHttpService.this.isConnected()) {
                    AdobeNetworkHttpService.this._sendDisconnectError(iAdobeNetworkCompletionHandler, handler);
                    return;
                }
                String accessToken = AdobeNetworkHttpService.this.getAccessToken();
                AdobeNetworkHttpMultiPartTask adobeNetworkHttpMultiPartTask = new AdobeNetworkHttpMultiPartTask();
                adobeNetworkHttpMultiPartTask.init(adobeNetworkHttpRequest, accessToken, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle, str, arrayList);
                try {
                    Future<AdobeNetworkHttpResponse> futureSubmit = AdobeNetworkHttpService.this._requestExecutor.submit(adobeNetworkHttpMultiPartTask);
                    adobeNetworkHttpTaskHandle.setAccessTokenForRequest(accessToken);
                    adobeNetworkHttpTaskHandle.setFuture(futureSubmit);
                } catch (Exception e2) {
                    AdobeLogger.log(Level.ERROR, AdobeNetworkHttpService.NETTAG, null, e2);
                }
            }
        };
        adobeNetworkHttpResponseHandler._requestRunner = runnableInternal;
        runnableInternal.runInternal();
        return adobeNetworkHttpTaskHandle;
    }

    private void ConvertHeaderKeyToLowerCase(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        Map<String, List<String>> headers;
        if (adobeNetworkHttpResponse != null && (headers = adobeNetworkHttpResponse.getHeaders()) != null && headers.size() != 0) {
            HashMap map = new HashMap();
            for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (key != null) {
                    map.put(key.toLowerCase(), value);
                }
            }
            adobeNetworkHttpResponse.setHeaders(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _analyseResponse(final AdobeNetworkHttpResponse adobeNetworkHttpResponse, final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, Runnable runnable, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        boolean zHTTPServiceAuthenticationDidFail;
        ConvertHeaderKeyToLowerCase(adobeNetworkHttpResponse);
        if (adobeNetworkHttpResponse != null) {
            if (adobeNetworkHttpResponse.getStatusCode() == 401) {
                synchronized (_recentAuthTokensMutex) {
                    String accessToken = adobeNetworkHttpTaskHandle.getAccessToken();
                    String str = accessToken == null ? "no-token" + AdobeNetworkUtils.generateUuid() : accessToken;
                    boolean zContainsKey = _recentAuthTokens.containsKey(str);
                    if (zContainsKey ? _recentAuthTokens.get(str).booleanValue() : false) {
                        setAccessToken(AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
                        zHTTPServiceAuthenticationDidFail = true;
                    } else if (zContainsKey) {
                        zHTTPServiceAuthenticationDidFail = false;
                    } else {
                        if (this._serviceDelegate != null) {
                            this._requestExecutor.pause();
                            zHTTPServiceAuthenticationDidFail = this._serviceDelegate.HTTPServiceAuthenticationDidFail(this);
                        } else {
                            zHTTPServiceAuthenticationDidFail = false;
                        }
                        _recentAuthTokens.put(str, Boolean.valueOf(zHTTPServiceAuthenticationDidFail));
                    }
                }
            } else {
                zHTTPServiceAuthenticationDidFail = false;
            }
            if (adobeNetworkHttpResponse.getStatusCode() == 401 && !_hasUserCancelled(adobeNetworkHttpTaskHandle)) {
                this._recentErrorCount.incrementAndGet();
                if (this._serviceDelegate != null && !isConnected()) {
                    this._serviceDelegate.HTTPServiceDidDisconnect(this);
                }
            }
            if (adobeNetworkHttpResponse.getStatusCode() < 400 && !adobeNetworkHttpResponse.hasFileError() && this._serviceDelegate != null) {
                this._serviceDelegate.HTTPServiceIsActive(this);
            }
            if (zHTTPServiceAuthenticationDidFail) {
                runnable.run();
                return;
            } else {
                _sendResponse(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (iAdobeNetworkCompletionHandler != null) {
                            int statusCode = adobeNetworkHttpResponse.getStatusCode();
                            if (adobeNetworkHttpResponse.hasNoStorageSpaceError()) {
                                AdobeNetworkException.AdobeNetworkErrorCode adobeNetworkErrorCode = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNoEnoughDeviceStorage;
                                HashMap map = new HashMap();
                                map.put(AdobeNetworkException.getKeyForResponse(), adobeNetworkHttpResponse);
                                iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(adobeNetworkErrorCode, map));
                            } else if (statusCode < 400) {
                                if (adobeNetworkHttpResponse.hasFileError()) {
                                    AdobeNetworkException.AdobeNetworkErrorCode adobeNetworkErrorCode2 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist;
                                    HashMap map2 = new HashMap();
                                    map2.put(AdobeNetworkException.getKeyForResponse(), adobeNetworkHttpResponse);
                                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(adobeNetworkErrorCode2, map2));
                                } else {
                                    iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse);
                                }
                            } else {
                                AdobeNetworkException.AdobeNetworkErrorCode adobeNetworkErrorCode3 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest;
                                if (statusCode == 401) {
                                    adobeNetworkErrorCode3 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorAuthenticationFailed;
                                } else if (statusCode == 403) {
                                    adobeNetworkErrorCode3 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest;
                                } else if (statusCode == 503 || statusCode == 600 || (statusCode == 404 && (adobeNetworkHttpResponse.getNetworkException() instanceof SocketException))) {
                                    adobeNetworkErrorCode3 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline;
                                } else if ((adobeNetworkHttpResponse.getNetworkException() != null && (adobeNetworkHttpResponse.getNetworkException() instanceof SocketTimeoutException)) || (adobeNetworkHttpResponse.getNetworkException() instanceof ConnectException)) {
                                    adobeNetworkErrorCode3 = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorTimeout;
                                }
                                HashMap map3 = new HashMap();
                                map3.put(AdobeNetworkException.getKeyForResponse(), adobeNetworkHttpResponse);
                                iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(adobeNetworkErrorCode3, map3));
                            }
                        }
                        adobeNetworkHttpTaskHandle.markFinished();
                    }
                }, handler);
                return;
            }
        }
        _sendResponse(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.12
            @Override // java.lang.Runnable
            public void run() {
                if (iAdobeNetworkCompletionHandler != null) {
                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled, null));
                }
                adobeNetworkHttpTaskHandle.markFinished();
            }
        }, handler);
    }

    private void _sendResponse(Runnable runnable, Handler handler) {
        if (handler != null && handler.getLooper() == Looper.getMainLooper()) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _sendDisconnectError(final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService.13
            @Override // java.lang.Runnable
            public void run() {
                if (iAdobeNetworkCompletionHandler != null) {
                    HashMap map = new HashMap();
                    map.put("AdobeNetworkHTTPStatus", 401);
                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorServiceDisconnected, map));
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    private boolean _hasUserCancelled(AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        return adobeNetworkHttpTaskHandle.isCancelled();
    }

    private void _addAdditionalHttpHeaders(AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        if (this._additionalHTTPHeaders != null) {
            for (Map.Entry<String, String> entry : this._additionalHTTPHeaders.entrySet()) {
                adobeNetworkHttpRequest.getRequestProperties().put(entry.getKey(), entry.getValue());
            }
        }
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AdobeNetworkHttpService)) {
            return false;
        }
        AdobeNetworkHttpService adobeNetworkHttpService = (AdobeNetworkHttpService) obj;
        return areURLsEqual(this._baseURL, adobeNetworkHttpService._baseURL) & areStringsEqual(this._applicationName, adobeNetworkHttpService._applicationName) & areStringsEqual(this._accessToken, adobeNetworkHttpService._accessToken);
    }

    private boolean areStringsEqual(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    private boolean areURLsEqual(URL url, URL url2) {
        if (url == null && url2 == null) {
            return true;
        }
        if (url == null || url2 == null) {
            return false;
        }
        return url.getPath().equals(url2.getPath());
    }
}
