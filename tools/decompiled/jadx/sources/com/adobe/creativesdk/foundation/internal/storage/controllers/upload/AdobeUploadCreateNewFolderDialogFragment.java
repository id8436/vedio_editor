package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.notification.IAdobeNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetDataSourceMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadCreateNewFolderDialogFragment extends AdobeCCDialogFragment {
    AdobeAssetFolder _currentFolder;
    private boolean _dialogStopped;
    private FolderCreationSavedResult _savedFolderCreationResult;
    private boolean isCreateOpeartionInProgress;

    public enum AdobeFolderCreationNotificationID implements IAdobeNotificationID {
        AdobeNewFolderCreated
    }

    public AdobeUploadCreateNewFolderDialogFragment() {
        this.isCreateOpeartionInProgress = false;
        this.isCreateOpeartionInProgress = false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._currentFolder = AdobeAssetViewUtils.getAssetFolderFromHref(getArguments().getString(AdobeUploadCreateNewFolderMgr.PARENT_COLLECTION_KEY), false);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    protected View inflateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.adobe_edit_text_dialog_view, viewGroup);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    protected void setDialogControls(View view) {
        this._title = (TextView) view.findViewById(R.id.adobe_cc_edit_text_dialog_box_title);
        this._editText = (EditText) view.findViewById(R.id.adobe_cc_edit_text_name);
        this._progressBar = (ProgressBar) view.findViewById(R.id.adobe_cc_edit_text_progressbar);
        this._errorController = (LinearLayout) view.findViewById(R.id.adobe_cc_edit_text_error_container);
        this._errorView = (TextView) view.findViewById(R.id.adobe_cc_edit_text_error_text);
        this._positiveButton = (TextView) view.findViewById(R.id.adobe_cc_edit_text_positive_button);
        this._negativeButton = (TextView) view.findViewById(R.id.adobe_cc_edit_text_negative_button);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    protected void setDialogText() {
        this._title.setText(getResources().getString(R.string.adobe_csdk_CREATE_NEW_FOLDER_DIALOG_TITLE));
        this._editText.setHint(R.string.adobe_csdk_CREATE_NEW_FOLDER_EDIT_TEXT_HINT);
        this._positiveButton.setText(R.string.adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this._dialogStopped = false;
        if (this._savedFolderCreationResult != null) {
            if (this._savedFolderCreationResult.newlyCreatedFolderObj != null) {
                handleNewFolderCreation(this._savedFolderCreationResult.newlyCreatedFolderObj);
                return;
            }
            if (this._savedFolderCreationResult.errorObj != null) {
                handleErrorFolderCreation(this._savedFolderCreationResult.errorObj);
            }
            this._savedFolderCreationResult = null;
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
    public void handleNewFolderCreation(AdobeAssetFolder adobeAssetFolder) {
        hideErrorDialog();
        this.isCreateOpeartionInProgress = false;
        AdobeAssetDataSourceMgr.getInstance().setFolderAsChanged(this._currentFolder);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_NEWFOLDER_CREATED, adobeAssetFolder);
        finishDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleErrorFolderCreation(AdobeCSDKException adobeCSDKException) {
        this.isCreateOpeartionInProgress = false;
        showError(adobeCSDKException);
        hideProgressSpinner();
        enableNegativeButton();
    }

    public void createNewFolder() {
        String enteredText = getEnteredText();
        this._dialogStopped = false;
        String strTrim = enteredText.trim();
        if (strTrim.length() != 0) {
            this.isCreateOpeartionInProgress = true;
            disableNegativeButton();
            disablePositiveButton();
            AdobeAssetFolder.create(strTrim, this._currentFolder, new IAdobeGenericCompletionCallback<AdobeAssetFolder>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderDialogFragment.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobeAssetFolder adobeAssetFolder) {
                    if (!AdobeUploadCreateNewFolderDialogFragment.this._dialogStopped) {
                        AdobeUploadCreateNewFolderDialogFragment.this.handleNewFolderCreation(adobeAssetFolder);
                        return;
                    }
                    AdobeUploadCreateNewFolderDialogFragment.this._savedFolderCreationResult = new FolderCreationSavedResult();
                    AdobeUploadCreateNewFolderDialogFragment.this._savedFolderCreationResult.newlyCreatedFolderObj = adobeAssetFolder;
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderDialogFragment.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (!AdobeUploadCreateNewFolderDialogFragment.this._dialogStopped) {
                        AdobeUploadCreateNewFolderDialogFragment.this.handleErrorFolderCreation(adobeCSDKException);
                        return;
                    }
                    AdobeUploadCreateNewFolderDialogFragment.this._savedFolderCreationResult = new FolderCreationSavedResult();
                    AdobeUploadCreateNewFolderDialogFragment.this._savedFolderCreationResult.errorObj = adobeCSDKException;
                }
            });
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    protected void handleTextChanged() {
        if (getEnteredText() != null && getEnteredText().trim().length() > 0 && !this.isCreateOpeartionInProgress) {
            enablePositiveButton();
        } else {
            disablePositiveButton();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    public void handlePositiveClick() {
        showUIProgressUpdate();
        createNewFolder();
        disablePositiveButton();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._dialogStopped = true;
    }
}
