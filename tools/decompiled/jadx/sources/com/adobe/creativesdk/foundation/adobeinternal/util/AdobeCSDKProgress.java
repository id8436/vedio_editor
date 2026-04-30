package com.adobe.creativesdk.foundation.adobeinternal.util;

import android.os.Handler;
import com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKProgress {
    protected List<IAdobeProgressCallback> _listeners;
    protected int _progressPercent = 0;
    protected boolean _isCancelled = false;
    protected Handler _notifyHandler = null;
    protected boolean _hasFinished = false;
    protected long _totalUnitCount = 0;
    protected long _completedUnitCount = 0;

    public AdobeCSDKProgress() {
        this._listeners = null;
        this._listeners = Collections.synchronizedList(new ArrayList());
    }

    public synchronized void setNotifyHandler(Handler handler) {
        this._notifyHandler = handler;
    }

    public void registerListener(IAdobeProgressCallback iAdobeProgressCallback) {
        this._listeners.add(iAdobeProgressCallback);
    }

    public void unregisterListener(IAdobeProgressCallback iAdobeProgressCallback) {
        this._listeners.remove(iAdobeProgressCallback);
    }

    public synchronized void notifyProgress(final int i) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.util.AdobeCSDKProgress.1
            @Override // java.lang.Runnable
            public void run() {
                AdobeCSDKProgress.this._progressPercent = i;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < AdobeCSDKProgress.this._listeners.size()) {
                        AdobeCSDKProgress.this._listeners.get(i3).onProgress(i);
                        i2 = i3 + 1;
                    } else {
                        return;
                    }
                }
            }
        };
        if (this._notifyHandler != null) {
            this._notifyHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public synchronized int getProgress() {
        return this._progressPercent;
    }

    public synchronized void cancel() {
        this._isCancelled = true;
    }

    public synchronized boolean isCancelled() {
        return this._isCancelled;
    }

    public synchronized void markFinished() {
        this._hasFinished = true;
    }

    public synchronized boolean hasFinished() {
        return this._hasFinished;
    }

    public synchronized void setTotalUnitCount(long j) {
        this._totalUnitCount = j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100) / this._totalUnitCount));
        }
    }

    public synchronized void setCompletedUnitCount(long j) {
        this._completedUnitCount = j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100) / this._totalUnitCount));
        }
    }

    public synchronized void updateTotalUnitCount(long j) {
        this._totalUnitCount += j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100) / this._totalUnitCount));
        }
    }

    public synchronized void updateCompletedUnitCount(long j) {
        this._completedUnitCount += j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100) / this._totalUnitCount));
        }
    }

    public synchronized long getTotalUnitCount() {
        return this._totalUnitCount;
    }

    public synchronized long getCompletedUnitCount() {
        return this._completedUnitCount;
    }
}
