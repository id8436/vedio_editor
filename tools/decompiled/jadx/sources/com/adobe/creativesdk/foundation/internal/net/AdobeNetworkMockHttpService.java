package com.adobe.creativesdk.foundation.internal.net;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkMockHttpService extends AdobeNetworkHttpService {
    private static int AdobeNetworkHTTPServiceMaxConcurrentRequests = 5;
    public static final String ERROR_DURING_IO_OPERATION = "Error during io operation";
    private long delayInMilliSeconds;
    private int numConcurrentRequests;
    private AdobeNetworkHttpRequestExecutor requestExecutor;
    private ArrayList<AdobeNetworkHttpRequest> requests;
    private List<AdobeNetworkHttpResponse> responseQueue;

    public AdobeNetworkMockHttpService(String str, String str2, Map<String, String> map) {
        super(str, str2, map);
        this.numConcurrentRequests = 5;
        this.requestExecutor = null;
        this.requests = new ArrayList<>();
        this.responseQueue = new ArrayList();
        setDelayInMilliSeconds(40L);
        this.requestExecutor = new AdobeNetworkHttpRequestExecutor(this.numConcurrentRequests, this.numConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public List<AdobeNetworkHttpRequest> getRequests() {
        return this.requests;
    }

    private AdobeNetworkHttpResponse logRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest) {
        AdobeNetworkHttpResponse adobeNetworkHttpResponse = null;
        if (this.responseQueue != null && !this.responseQueue.isEmpty()) {
            synchronized (this.responseQueue) {
                this.requests.add(adobeNetworkHttpRequest);
                adobeNetworkHttpResponse = this.responseQueue.get(0);
                if (adobeNetworkHttpResponse.getStatusCode() == 403) {
                    adobeNetworkHttpResponse.setNetworkException(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorRequestForbidden));
                }
                this.responseQueue.remove(0);
            }
        }
        return adobeNetworkHttpResponse;
    }

    private AdobeNetworkHttpTaskHandle scheduleResponse(final AdobeNetworkHttpResponse adobeNetworkHttpResponse, final IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler, final AdobeNetworkException adobeNetworkException) {
        final AdobeNetworkMockHttpTaskHandle adobeNetworkMockHttpTaskHandle = new AdobeNetworkMockHttpTaskHandle();
        Executors.newSingleThreadScheduledExecutor().schedule(new TimerTask() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkMockHttpService.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (adobeNetworkMockHttpTaskHandle.isCancelled()) {
                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled));
                    return;
                }
                if (adobeNetworkException != null) {
                    iAdobeNetworkCompletionHandler.onError(adobeNetworkException);
                    return;
                }
                if (adobeNetworkHttpResponse == null || ((AdobeNetworkMockHttpResponse) adobeNetworkHttpResponse).getException() != null) {
                    if (adobeNetworkHttpResponse == null) {
                        iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(null, null));
                        return;
                    }
                    AdobeNetworkException exception = ((AdobeNetworkMockHttpResponse) adobeNetworkHttpResponse).getException();
                    HashMap map = new HashMap();
                    map.put("Response", adobeNetworkHttpResponse);
                    iAdobeNetworkCompletionHandler.onError(new AdobeNetworkException(exception.getErrorCode(), map));
                    return;
                }
                iAdobeNetworkCompletionHandler.onSuccess(adobeNetworkHttpResponse);
            }
        }, getDelayInMilliSeconds(), TimeUnit.MILLISECONDS);
        return adobeNetworkMockHttpTaskHandle;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public void setConcurrentRequestCount(int i) {
        this.numConcurrentRequests = i;
        if (this.numConcurrentRequests < 1) {
            this.numConcurrentRequests = 1;
        }
        if (this.numConcurrentRequests > AdobeNetworkHTTPServiceMaxConcurrentRequests) {
            this.numConcurrentRequests = AdobeNetworkHTTPServiceMaxConcurrentRequests;
        }
        this.requestExecutor.setCorePoolSize(i);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public AdobeNetworkHttpTaskHandle getResponseForDataRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        return scheduleResponse(logRequest(adobeNetworkHttpRequest), iAdobeNetworkCompletionHandler, handler, null);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public AdobeNetworkHttpResponse getResponseForDataRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest, AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        return logRequest(adobeNetworkHttpRequest);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public AdobeNetworkHttpTaskHandle getResponseForUploadRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkRequestPriority adobeNetworkRequestPriority, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) throws Throwable {
        FileInputStream fileInputStream;
        IOException e2;
        FileNotFoundException e3;
        AdobeNetworkException adobeNetworkException = null;
        AdobeNetworkHttpResponse adobeNetworkHttpResponseLogRequest = logRequest(adobeNetworkHttpRequest);
        if (adobeNetworkHttpResponseLogRequest != null) {
            ?? Exists = new File(str).exists();
            try {
                if (Exists == 0) {
                    adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
                } else {
                    try {
                        fileInputStream = new FileInputStream(new File(str));
                    } catch (FileNotFoundException e4) {
                        fileInputStream = null;
                        e3 = e4;
                    } catch (IOException e5) {
                        fileInputStream = null;
                        e2 = e5;
                    } catch (Throwable th) {
                        Exists = 0;
                        th = th;
                        if (Exists != 0) {
                            try {
                                Exists.close();
                            } catch (IOException e6) {
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e6);
                            }
                        }
                        throw th;
                    }
                    try {
                        StringBuilder sb = new StringBuilder("");
                        while (true) {
                            int i = fileInputStream.read();
                            if (i == -1) {
                                break;
                            }
                            sb.append((char) i);
                        }
                        AdobeLogger.log(Level.DEBUG, getClass().getSimpleName(), sb.toString());
                        fileInputStream.close();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e7) {
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e7);
                            }
                        }
                    } catch (FileNotFoundException e8) {
                        e3 = e8;
                        AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e3);
                        adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e9) {
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e9);
                            }
                        }
                    } catch (IOException e10) {
                        e2 = e10;
                        AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e2);
                        adobeNetworkException = new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e11);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return scheduleResponse(adobeNetworkHttpResponseLogRequest, iAdobeNetworkCompletionHandler, handler, adobeNetworkException);
    }

    private static Boolean fWrite(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "UTF-8"));
            bufferedWriter.write(str2);
            bufferedWriter.close();
            return true;
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpTaskHandle.class.getName(), "Error during io operation", e2);
            return false;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public AdobeNetworkHttpTaskHandle getResponseForDownloadRequest(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkRequestPriority adobeNetworkRequestPriority, IAdobeNetworkCompletionHandler iAdobeNetworkCompletionHandler, Handler handler) {
        AdobeNetworkException adobeNetworkException;
        AdobeNetworkHttpResponse responseForDataRequest = getResponseForDataRequest(adobeNetworkHttpRequest, adobeNetworkRequestPriority);
        if (responseForDataRequest != null) {
            if (responseForDataRequest.getDataString() == null || fWrite(str, responseForDataRequest.getDataString()).booleanValue()) {
                adobeNetworkException = null;
            } else {
                AdobeNetworkException.AdobeNetworkErrorCode adobeNetworkErrorCode = AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorFileDoesNotExist;
                HashMap map = new HashMap();
                map.put(AdobeNetworkException.getKeyForResponse(), responseForDataRequest);
                adobeNetworkException = new AdobeNetworkException(adobeNetworkErrorCode, map);
                responseForDataRequest.setHasFileError(true);
            }
            responseForDataRequest.setData(null);
        } else {
            adobeNetworkException = null;
        }
        return scheduleResponse(responseForDataRequest, iAdobeNetworkCompletionHandler, handler, adobeNetworkException);
    }

    public void setResponseQueue(List<AdobeNetworkHttpResponse> list) {
        synchronized (this) {
            this.responseQueue = list;
            this.requests = new ArrayList<>();
        }
    }

    public long getDelayInMilliSeconds() {
        return this.delayInMilliSeconds;
    }

    public void setDelayInMilliSeconds(long j) {
        this.delayInMilliSeconds = j;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService
    public int hashCode() {
        return super.hashCode();
    }
}
