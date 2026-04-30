package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.notification.IAdobeNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditManager;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadCreateNewLibraryDialogFragment extends AdobeDialogFragment {
    private boolean _dialogStopped;
    private LibraryCreationSavedResult _savedLibraryCreationResult;

    public enum AdobeFolderCreationNotificationID implements IAdobeNotificationID {
        AdobeNewFolderCreated
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleNegativeClick() {
        cancelNewLibrary();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handlePositiveClick() {
        showUIProgressUpdate();
        createNewLibrary();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleTextChanged() {
        hideErrorDialog();
        if (getEnteredText() != null && getEnteredText().trim().length() > 0) {
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
        setDialogTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_LIBRARY_DIALOG_TITLE));
        setPositiveButtonTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE));
        setNegativeButtonTitle(getResources().getString(R.string.adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CANCEL));
        setEditTextHint(getResources().getString(R.string.adobe_csdk_CREATE_NEW_LIBRARY_EDIT_TEXT_HINT));
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._dialogStopped = false;
        if (this._savedLibraryCreationResult != null) {
            if (this._savedLibraryCreationResult.newlyCreatedLibraryObj != null) {
                handleNewLibraryCreation(this._savedLibraryCreationResult.newlyCreatedLibraryObj.getLibraryId());
                return;
            }
            if (this._savedLibraryCreationResult.errorObj != null) {
                handleErrorLibraryCreation(this._savedLibraryCreationResult.errorObj);
            }
            this._savedLibraryCreationResult = null;
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

    private void handleNewLibraryCreation(String str) {
        hideErrorDialog();
        AdobeDesignLibraryEditManager.setUpdateCollectionDueToItemEdit(true);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_LIBRARY_CREATED, str);
        finishDialog();
    }

    private void handleErrorLibraryCreation(AdobeCSDKException adobeCSDKException) {
        showError(adobeCSDKException);
        hideProgressSpinner();
        enableNegativeButton();
    }

    public void createNewLibrary() {
        String enteredText = getEnteredText();
        this._dialogStopped = false;
        String strTrim = enteredText.trim();
        if (strTrim.length() != 0) {
            disableNegativeButton();
            disablePositiveButton();
            handleNewLibraryCreation(AdobeLibraryManager.getSharedInstance().createLibraryWithName(strTrim).getLibraryId());
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

    public void cancelNewLibrary() {
        dismissKeyBoard();
        dismiss();
    }
}
