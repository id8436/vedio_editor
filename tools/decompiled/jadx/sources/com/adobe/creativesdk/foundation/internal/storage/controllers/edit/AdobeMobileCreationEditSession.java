package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeMobileCreationEditSession {
    private AdobeCloud _cloud;
    private AdobeAssetPackagePages _targetPages;
    IAdobeEditAssetCallback editResponseCallback;
    FragmentManager fm;
    AdobeMobileCreationEditOperation operation;

    public AdobeMobileCreationEditSession(AdobeAssetPackagePages adobeAssetPackagePages, FragmentManager fragmentManager, AdobeMobileCreationEditOperation adobeMobileCreationEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        this.operation = adobeMobileCreationEditOperation;
        this.editResponseCallback = iAdobeEditAssetCallback;
        this.fm = fragmentManager;
        this._cloud = adobeCloud;
        this._targetPages = adobeAssetPackagePages;
    }

    public void startEditSession() {
        switch (this.operation) {
            case ADOBE_MOBILE_CREATION_EDIT_OPERATION_ERASE:
                handleEraseOperation();
                break;
        }
    }

    public boolean getEditSummary() {
        return EditSummary.getEditStatus();
    }

    private void handleEraseOperation() {
        ((AdobeStorageSession) this._cloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).eraseAsset(this._targetPages, new IAdobeStorageSessionEditCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeMobileCreationEditSession.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback
            public void onComplete() {
                EditSummary.setEditSuccess();
                AdobeMobileCreationEditSession.this.editResponseCallback.onComplete();
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback
            public void onError(AdobeAssetException adobeAssetException) {
                EditSummary.setEditError();
                AdobeMobileCreationEditSession.this.editResponseCallback.onComplete();
            }
        });
    }

    class EditSummary {
        private static boolean isEditCompleted;

        private EditSummary() {
        }

        public static void setEditSuccess() {
            isEditCompleted = true;
        }

        public static void setEditError() {
            isEditCompleted = false;
        }

        public static boolean getEditStatus() {
            return isEditCompleted;
        }
    }
}
