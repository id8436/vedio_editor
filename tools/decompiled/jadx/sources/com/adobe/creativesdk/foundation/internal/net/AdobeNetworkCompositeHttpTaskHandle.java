package com.adobe.creativesdk.foundation.internal.net;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkCompositeHttpTaskHandle extends AdobeNetworkHttpTaskHandle {
    static final /* synthetic */ boolean $assertionsDisabled;
    private long _totalUnitCount = 0;
    private long _completedUnitCount = 0;
    private ConcurrentLinkedQueue<LengthPercentHolder> _lpHolderArray = null;
    private ConcurrentLinkedQueue<AdobeNetworkHttpTaskHandle> _requests = null;
    private boolean _complete = false;
    private ConcurrentLinkedQueue<NetworkTaskHandleListener> _requestlisteners = null;

    public interface ICancellationHandler {
        void perform();
    }

    static {
        $assertionsDisabled = !AdobeNetworkCompositeHttpTaskHandle.class.desiredAssertionStatus();
    }

    class LengthPercentHolder {
        long _length;
        double _progressPercent;

        private LengthPercentHolder() {
            this._length = 0L;
            this._progressPercent = 0.0d;
        }
    }

    class NetworkTaskHandleListener implements IAdobeNetworkHttpTaskHandleListener {
        WeakReference<AdobeNetworkCompositeHttpTaskHandle> _compRequest;
        long _length;
        AdobeNetworkHttpTaskHandle _request;

        private NetworkTaskHandleListener() {
            this._request = null;
            this._length = 0L;
            this._compRequest = null;
        }

        @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpTaskHandleListener
        public void onProgressNotification(double d2) {
            AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle;
            if (this._compRequest != null && this._compRequest.get() != null && this._length != 0 && this._request != null && d2 > 0.0d && (adobeNetworkCompositeHttpTaskHandle = this._compRequest.get()) != null) {
                adobeNetworkCompositeHttpTaskHandle.changeLPHolderArray(this._length, d2);
            }
        }
    }

    public void addComponentRequest(AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, long j) {
        if (!$assertionsDisabled && adobeNetworkHttpTaskHandle == null) {
            throw new AssertionError("Param 'request' must not be null");
        }
        if (this._requests == null) {
            this._requests = new ConcurrentLinkedQueue<>();
            this._requestlisteners = new ConcurrentLinkedQueue<>();
            this._lpHolderArray = new ConcurrentLinkedQueue<>();
        }
        NetworkTaskHandleListener networkTaskHandleListener = new NetworkTaskHandleListener();
        networkTaskHandleListener._length = j;
        networkTaskHandleListener._request = adobeNetworkHttpTaskHandle;
        networkTaskHandleListener._compRequest = new WeakReference<>(this);
        LengthPercentHolder lengthPercentHolder = new LengthPercentHolder();
        lengthPercentHolder._length = j;
        lengthPercentHolder._progressPercent = 0.0d;
        this._requestlisteners.add(networkTaskHandleListener);
        adobeNetworkHttpTaskHandle.registerListener(networkTaskHandleListener);
        this._lpHolderArray.add(lengthPercentHolder);
        this._requests.add(adobeNetworkHttpTaskHandle);
    }

    public void allComponentsHaveBeenAdded() {
        this._complete = true;
        if (this._requests == null) {
            notifyProgress(100);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle
    public void addCancellationHandler(ICancellationHandler iCancellationHandler) {
        super.addCancellationHandler(iCancellationHandler);
    }

    public boolean isExecuting() {
        if (this._requests != null) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this._requests.iterator();
            while (it.hasNext()) {
                if (!it.next().hasFinished()) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isFinished() {
        if (!this._complete) {
            return false;
        }
        if (this._requests != null) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this._requests.iterator();
            while (it.hasNext()) {
                if (!it.next().hasFinished()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle
    public boolean isCancelled() {
        if (this._requests != null) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this._requests.iterator();
            while (it.hasNext()) {
                if (it.next().isCancelled()) {
                    return true;
                }
            }
        }
        return super.isCancelled();
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle
    public void cancel() {
        if (this._requests != null) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this._requests.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
        super.cancel();
    }

    public void releaseRequests() {
        if (this._requests != null) {
            this._requests.clear();
        }
        if (this._requestlisteners != null) {
            for (NetworkTaskHandleListener networkTaskHandleListener : this._requestlisteners) {
                networkTaskHandleListener._request.unregisterListener(networkTaskHandleListener);
            }
            this._requestlisteners.clear();
        }
    }

    public long getTotalUnitCount() {
        return this._totalUnitCount;
    }

    public long getCompletedUnitCount() {
        return this._completedUnitCount;
    }

    public void setTotalUnitCount(long j) {
        this._totalUnitCount = j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100.0f) / this._totalUnitCount));
        }
    }

    public void setCompletedUnitCount(long j) {
        this._completedUnitCount = j;
        if (this._totalUnitCount != 0 && this._completedUnitCount != 0) {
            notifyProgress((int) ((this._completedUnitCount * 100.0f) / this._totalUnitCount));
        }
    }

    public void changeLPHolderArray(long j, double d2) {
        double d3;
        double d4 = 0.0d;
        if (this._lpHolderArray == null) {
            d3 = 0.0d;
        } else {
            Iterator<LengthPercentHolder> it = this._lpHolderArray.iterator();
            while (true) {
                d3 = d4;
                if (!it.hasNext()) {
                    break;
                }
                LengthPercentHolder next = it.next();
                if (next._length == j) {
                    next._progressPercent = d2;
                }
                if (next._progressPercent > 0.0d && next._length > 0) {
                    d3 += (next._progressPercent * next._length) / 100.0d;
                }
                d4 = d3;
            }
        }
        setCompletedUnitCount(Double.valueOf(d3).longValue());
    }
}
