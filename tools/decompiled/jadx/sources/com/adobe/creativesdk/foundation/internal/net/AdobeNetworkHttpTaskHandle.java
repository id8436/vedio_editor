package com.adobe.creativesdk.foundation.internal.net;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpTaskHandle {
    public static String T = AdobeNetworkHttpTaskHandle.class.getSimpleName();
    private ArrayList<Object> listeners;
    private Future<AdobeNetworkHttpResponse> netTaskFuture = null;
    private int progressPercent = 0;
    private String accessToken = null;
    protected boolean isCancelled = false;
    private boolean hasFinished = false;
    private Handler notifyHandler = null;
    private boolean isScheduled = false;
    protected List<AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler> cancellationHandlers = Collections.synchronizedList(new ArrayList());

    public AdobeNetworkHttpTaskHandle() {
        this.listeners = null;
        this.listeners = new ArrayList<>();
    }

    public synchronized void setNotifyHandler(Handler handler) {
        this.notifyHandler = handler;
    }

    public synchronized void setFuture(Future<AdobeNetworkHttpResponse> future) {
        this.netTaskFuture = future;
    }

    public synchronized Future<AdobeNetworkHttpResponse> getFuture() {
        return this.netTaskFuture;
    }

    void setAccessTokenForRequest(String str) {
        this.accessToken = str;
    }

    String getAccessToken() {
        return this.accessToken;
    }

    public synchronized void cancel() {
        if (this.netTaskFuture != null) {
            this.netTaskFuture.cancel(true);
        }
        if (this.netTaskFuture != null) {
            this.isCancelled = this.netTaskFuture.isCancelled();
        }
        if (!isScheduled() || getClass() == AdobeNetworkCompositeHttpTaskHandle.class) {
            synchronized (this.cancellationHandlers) {
                Iterator<AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler> it = this.cancellationHandlers.iterator();
                while (it.hasNext()) {
                    it.next().perform();
                }
            }
        }
    }

    public synchronized boolean isCancelled() {
        return this.isCancelled;
    }

    public void registerListener(IAdobeNetworkHttpTaskHandleListener iAdobeNetworkHttpTaskHandleListener) {
        this.listeners.add(iAdobeNetworkHttpTaskHandleListener);
    }

    public void unregisterListener(IAdobeNetworkHttpTaskHandleListener iAdobeNetworkHttpTaskHandleListener) {
        this.listeners.remove(iAdobeNetworkHttpTaskHandleListener);
    }

    public synchronized void notifyProgress(final int i) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle.1
            @Override // java.lang.Runnable
            public void run() {
                AdobeNetworkHttpTaskHandle.this.progressPercent = i;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < AdobeNetworkHttpTaskHandle.this.listeners.size()) {
                        ((IAdobeNetworkHttpTaskHandleListener) AdobeNetworkHttpTaskHandle.this.listeners.get(i3)).onProgressNotification(i);
                        i2 = i3 + 1;
                    } else {
                        return;
                    }
                }
            }
        };
        if (this.notifyHandler != null) {
            this.notifyHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public synchronized int getProgress() {
        return this.progressPercent;
    }

    public synchronized void markFinished() {
        this.hasFinished = true;
    }

    public synchronized boolean hasFinished() {
        return this.hasFinished;
    }

    public synchronized boolean isScheduled() {
        return this.isScheduled;
    }

    public synchronized void setScheduled(boolean z) {
        this.isScheduled = z;
    }

    public void addCancellationHandler(AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler iCancellationHandler) {
        this.cancellationHandlers.add(iCancellationHandler);
    }
}
