package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobePhotoCollectionAssetsUploadStatus;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoAssetInternal;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCPhotosEditSession {
    private AdobeCloud cloud;
    IAdobeEditAssetCallback editResponseCallback;
    FragmentManager fm;
    AdobePhotosEditOperation operation;
    private AdobePhoto photo;

    public AdobeCCPhotosEditSession(AdobePhoto adobePhoto, FragmentManager fragmentManager, AdobePhotosEditOperation adobePhotosEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        this.operation = adobePhotosEditOperation;
        this.editResponseCallback = iAdobeEditAssetCallback;
        this.fm = fragmentManager;
        this.cloud = adobeCloud;
        this.photo = adobePhoto;
    }

    public void startEditSession() {
        switch (this.operation) {
            case ADOBE_CC_PHOTO_OPERATION_ERASE:
                handleEraseOperation();
                break;
            case ADOBE_CC_PHOTO_ITEM_COVER_ASSET:
                handleChangeCoverAsset();
                break;
        }
    }

    private void notifiyEditStarted() {
        AdobeCCPhotosEditManager.setEditInProgress(true);
        AdobeCCPhotosEditManager.setEditStarted(true);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_STARTED);
    }

    private void handleEraseOperation() {
        notifiyEditStarted();
        AdobePhotoSession adobePhotoSession = (AdobePhotoSession) this.cloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        if (this.photo instanceof AdobePhotoCollection) {
            adobePhotoSession.deleteCollection((AdobePhotoCollection) this.photo, new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            });
        } else if (this.photo instanceof AdobePhotoAsset) {
            AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded = true;
            adobePhotoSession.deleteAsset((AdobePhotoAsset) this.photo, new IAdobeGenericCompletionCallback<AdobePhotoAsset>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoAsset adobePhotoAsset) {
                    AdobeCCPhotosEditManager.setEditCompletionHandled(false);
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeCCPhotosEditManager.setEditCompletionHandled(false);
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            });
        }
    }

    private void handleChangeCoverAsset() {
        if (this.photo instanceof AdobePhotoAssetInternal) {
            AdobePhotoAssetInternal adobePhotoAssetInternal = (AdobePhotoAssetInternal) this.photo;
            AdobePhotoCollection photoCollection = adobePhotoAssetInternal.getPhotoCollection();
            photoCollection.setCoverAsset(adobePhotoAssetInternal);
            AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded = true;
            photoCollection.update(new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.5
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    AdobeCCPhotosEditManager.setEditCompletionHandled(false);
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCPhotosEditSession.6
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeCCPhotosEditManager.setEditCompletionHandled(false);
                    AdobeCCPhotosEditSession.this.editResponseCallback.onComplete();
                }
            });
        }
    }
}
