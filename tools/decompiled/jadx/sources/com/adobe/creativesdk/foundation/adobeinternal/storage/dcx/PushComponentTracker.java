package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: AdobeDCXCompositeXfer.java */
/* JADX INFO: loaded from: classes.dex */
class PushComponentTracker {
    private AdobeNetworkCompositeHttpTaskHandle _compRequest;
    private AdobeDCXPushJournal _journal;
    private Lock lock = new ReentrantLock();
    private Condition condition = this.lock.newCondition();
    private Integer pendingOperationCount = 0;
    private ArrayList<AdobeCSDKException> errorList = new ArrayList<>();
    private ArrayList<AdobeDCXMutableComponent> componentsToBeUpdated = new ArrayList<>();
    private ArrayList<AdobeDCXMutableComponent> componentsToBeRemoved = new ArrayList<>();

    PushComponentTracker(AdobeDCXPushJournal adobeDCXPushJournal, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) {
        this._journal = adobeDCXPushJournal;
        this._compRequest = adobeNetworkCompositeHttpTaskHandle;
    }

    void addPendingComponent() {
        this.lock.lock();
        try {
            Integer num = this.pendingOperationCount;
            this.pendingOperationCount = Integer.valueOf(this.pendingOperationCount.intValue() + 1);
        } finally {
            this.lock.unlock();
        }
    }

    void cancelRemainingRequestsOnNontransientError(AdobeCSDKException adobeCSDKException) {
        if (adobeCSDKException.getClass().equals(AdobeCSDKException.class)) {
            AdobeNetworkException adobeNetworkException = (AdobeNetworkException) adobeCSDKException;
            if ((adobeNetworkException.getStatusCode().intValue() == 507 || adobeNetworkException.getStatusCode().intValue() == 403) && !this._compRequest.isCancelled()) {
                this._compRequest.cancel();
                return;
            }
            return;
        }
        if (adobeCSDKException.getClass().equals(AdobeAssetException.class)) {
            AdobeAssetException adobeAssetException = (AdobeAssetException) adobeCSDKException;
            if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorExceededQuota) {
                if (!this._compRequest.isCancelled()) {
                    this._compRequest.cancel();
                }
            } else if (adobeAssetException.getData() != null) {
                int iIntValue = adobeAssetException.getData().containsKey("AdobeNetworkHTTPStatus") ? ((Integer) adobeAssetException.getData().get("AdobeNetworkHTTPStatus")).intValue() : 0;
                if ((iIntValue == 507 || iIntValue == 403) && !this._compRequest.isCancelled()) {
                    this._compRequest.cancel();
                }
            }
        }
    }

    void componentWasAdded(AdobeDCXComponent adobeDCXComponent, String str, AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        componentWasUpdated(adobeDCXComponent, str, adobeDCXComposite, adobeCSDKException);
    }

    void componentWasUpdated(AdobeDCXComponent adobeDCXComponent, String str, AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        AdobeDCXMutableComponent adobeDCXMutableComponent = (adobeDCXComponent == null || !adobeDCXComponent.getClass().equals(AdobeDCXMutableComponent.class)) ? null : (AdobeDCXMutableComponent) adobeDCXComponent;
        if (adobeCSDKException == null) {
            this._journal.recordUploadedComponent(adobeDCXMutableComponent, str, str != null ? AdobeStorageDCXServiceMapping.resourceForComponent(adobeDCXComponent, adobeDCXComposite, str, true).href.toString() : null);
        }
        this.lock.lock();
        try {
            if (adobeCSDKException != null) {
                this.errorList.add(adobeCSDKException);
                cancelRemainingRequestsOnNontransientError(adobeCSDKException);
            } else {
                adobeDCXMutableComponent.setState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
                this.componentsToBeUpdated.add(adobeDCXMutableComponent);
            }
            Integer num = this.pendingOperationCount;
            this.pendingOperationCount = Integer.valueOf(this.pendingOperationCount.intValue() - 1);
            this.condition.signal();
        } finally {
            this.lock.unlock();
        }
    }

    void componentWasCommittedForDelete(AdobeDCXComponent adobeDCXComponent) {
        this._journal.recordPendingDeletionOfComponent(adobeDCXComponent);
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
        mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
        this.componentsToBeUpdated.add(mutableCopy);
    }

    void componentWasDeleted(AdobeDCXComponent adobeDCXComponent, AdobeCSDKException adobeCSDKException) {
        if (adobeCSDKException == null) {
            this._journal.recordDeletionOfComponent(adobeDCXComponent);
        }
        this.lock.lock();
        try {
            if (adobeCSDKException != null) {
                this.errorList.add(adobeCSDKException);
                cancelRemainingRequestsOnNontransientError(adobeCSDKException);
            } else {
                AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
                mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                this.componentsToBeRemoved.add(mutableCopy);
            }
            Integer num = this.pendingOperationCount;
            this.pendingOperationCount = Integer.valueOf(this.pendingOperationCount.intValue() - 1);
            this.condition.signal();
        } finally {
            this.lock.unlock();
        }
    }

    void removeComponent(AdobeDCXComponent adobeDCXComponent) {
        this.lock.lock();
        try {
            if (!this._journal.componentHasBeenDeleted(adobeDCXComponent)) {
                this._journal.recordDeletionOfComponent(adobeDCXComponent);
            }
            this.componentsToBeRemoved.add(adobeDCXComponent.getMutableCopy());
        } finally {
            this.lock.unlock();
        }
    }

    void waitImpl() {
        this.lock.lock();
        while (this.pendingOperationCount.intValue() > 0) {
            try {
                try {
                    this.condition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeXfer.waitImpl", e2.getMessage());
                }
            } finally {
                this.lock.unlock();
            }
        }
    }

    final ArrayList<AdobeCSDKException> getErrors() {
        if (this.errorList.size() == 0) {
            return null;
        }
        return this.errorList;
    }

    void updateManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) {
        Iterator<AdobeDCXMutableComponent> it = this.componentsToBeUpdated.iterator();
        while (it.hasNext()) {
            try {
                adobeDCXManifest.updateComponent(it.next());
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXCompositeXfer.class.getSimpleName(), null, e2);
            }
        }
        Iterator<AdobeDCXMutableComponent> it2 = this.componentsToBeRemoved.iterator();
        while (it2.hasNext()) {
            adobeDCXComposite.removeComponent(it2.next(), adobeDCXManifest);
        }
    }

    void releaseRequest() {
        this._compRequest.releaseRequests();
        this._compRequest = null;
    }

    String hrefWithImmutableLocalPath(String str) {
        return this._journal.hrefForPath(str);
    }
}
