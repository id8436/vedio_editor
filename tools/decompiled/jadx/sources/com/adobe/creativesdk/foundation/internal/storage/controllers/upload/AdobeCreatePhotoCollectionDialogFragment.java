package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCreatePhotoCollectionDialogFragment extends AdobeDialogFragment {
    private AdobeCloud _cloud;
    private boolean _dialogStopped;
    private CollectionCreationSavedResult _savedCollectionCreationResult;
    private boolean isCreateOpeartionInProgress;

    public void setCloud(AdobeCloud adobeCloud) {
        this._cloud = adobeCloud;
    }

    public AdobeCreatePhotoCollectionDialogFragment() {
        this.isCreateOpeartionInProgress = false;
        this.isCreateOpeartionInProgress = false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleNegativeClick() {
        cancelNewCollection();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handlePositiveClick() {
        createNewCollection();
        showUIProgressUpdate();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleTextChanged() {
        hideErrorDialog();
        if (getEnteredText() != null && getEnteredText().trim().length() > 0 && !this.isCreateOpeartionInProgress) {
            enablePositiveButton();
        } else {
            disablePositiveButton();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleAfterTextChanged(Editable editable) {
        for (int length = editable.length(); length > 0; length--) {
            if (editable.subSequence(length - 1, length).toString().equals(IOUtils.LINE_SEPARATOR_UNIX)) {
                editable.replace(length - 1, length, "");
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        setDialogTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_PHOTO_COLLECTION_DIALOG_TITLE));
        setPositiveButtonTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE));
        setNegativeButtonTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CANCEL));
        setEditTextHint(getResources().getString(R.string.adobe_csdk_CREATE_NEW_PHOTO_COLLECTION_EDIT_TEXT_HINT));
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._dialogStopped = false;
        if (this._savedCollectionCreationResult != null) {
            if (this._savedCollectionCreationResult.newlyCreatedCollectionObj != null) {
                handleNewCollectionCreation(this._savedCollectionCreationResult.newlyCreatedCollectionObj);
                return;
            }
            if (this._savedCollectionCreationResult.errorObj != null) {
                handleErrorCollectionCreation(this._savedCollectionCreationResult.errorObj);
            }
            this._savedCollectionCreationResult = null;
        }
    }

    private void showError(AdobeCSDKException adobeCSDKException) {
        int i = R.string.adobe_csdk_common_error_while_creating_folder;
        if (adobeCSDKException instanceof AdobeAssetException) {
            AdobeAssetException adobeAssetException = (AdobeAssetException) adobeCSDKException;
            if (adobeAssetException.getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure) {
                i = R.string.adobe_csdk_common_error_folder_invalid_chars;
            } else if (adobeAssetException.getHttpStatusCode().intValue() == 409) {
                i = R.string.adobe_csdk_storage_create_folder_already_exists_error;
            }
        } else if (adobeCSDKException instanceof AdobeAuthException) {
            i = R.string.adobe_csdk_storage_create_folder_authention_requires_error;
        }
        showErrorDialog(getResources().getString(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewCollectionCreation(AdobePhotoCollection adobePhotoCollection) {
        hideErrorDialog();
        this.isCreateOpeartionInProgress = false;
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED, adobePhotoCollection);
        finishDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleErrorCollectionCreation(AdobeCSDKException adobeCSDKException) {
        this.isCreateOpeartionInProgress = false;
        showError(adobeCSDKException);
        hideProgressSpinner();
        enableNegativeButton();
    }

    public void createNewCollection() {
        String enteredText = getEnteredText();
        this._dialogStopped = false;
        final String strTrim = enteredText.trim();
        if (strTrim.length() != 0) {
            this.isCreateOpeartionInProgress = true;
            disableNegativeButton();
            disablePositiveButton();
            final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback = new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeCreatePhotoCollectionDialogFragment.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    AdobeCreatePhotoCollectionDialogFragment.this.handleNewCollectionCreation(adobePhotoCollection);
                }
            };
            final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback = new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeCreatePhotoCollectionDialogFragment.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeCreatePhotoCollectionDialogFragment.this.handleErrorCollectionCreation(adobeCSDKException);
                }
            };
            AdobePhotoCatalog.listCatalogOfType(AdobePhotoCatalog.AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom, this._cloud, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeCreatePhotoCollectionDialogFragment.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoCatalog> arrayList) {
                    if (arrayList.size() > 1) {
                        AdobeLogger.log(Level.WARN, "AdobeCreatePhotoCollectionDialogFragment", "More than one catalog was unexpected.");
                    } else {
                        AdobeLogger.log(Level.DEBUG, "", "Loaded photo catalog.");
                    }
                    AdobePhotoCollection.create(strTrim, arrayList.get(0), iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeCreatePhotoCollectionDialogFragment.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeLogger.log(Level.ERROR, "AdobeCreatePhotoCollectionDialogFragment", "Failed to retrive the catalog.");
                    AdobeCreatePhotoCollectionDialogFragment.this.handleErrorCollectionCreation(adobeCSDKException);
                }
            });
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._dialogStopped = true;
    }

    private void finishDialog() {
        dismissKeyBoard();
        dismiss();
    }

    public void cancelNewCollection() {
        dismissKeyBoard();
        dismiss();
    }
}
