package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewEditRenameDialogFragment extends AdobeCCDialogFragment {
    private Observer _observer;
    private AdobeAsset _targetAsset;
    private String assetNewName;
    private IAdobeCCFilesRenameDialogDismissController controller;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int iLastIndexOf;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this._targetAsset != null && this._targetAsset.getName() != null) {
            String name = (!(this._targetAsset instanceof AdobeAssetFile) || (iLastIndexOf = this._targetAsset.getName().lastIndexOf(".")) == -1) ? this._targetAsset.getName() : this._targetAsset.getName().substring(0, iLastIndexOf);
            setEditText(name);
            this._editText.setSelection(name.length());
        }
        return this.view;
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
    public void setDialogText() {
        this._title.setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_rename_dialog_title));
        this._editText.setHint(R.string.adobe_csdk_asset_view_edit_rename_dialog_hint_text);
        this._positiveButton.setText(R.string.adobe_csdk_asset_view_edit_rename_dialog_positive_button);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCDialogFragment
    public void handlePositiveClick() {
        disablePositiveButton();
        notifiyEditStarted();
        finishDialog();
    }

    public void setEditText(String str) {
        if (this._editText != null) {
            this._editText.setText(str);
        }
    }

    public void setDismissController(IAdobeCCFilesRenameDialogDismissController iAdobeCCFilesRenameDialogDismissController) {
        this.controller = iAdobeCCFilesRenameDialogDismissController;
    }

    public String getAssetNewName() {
        this.assetNewName = getEnteredText() != null ? getEnteredText().trim() : getEnteredText();
        return this.assetNewName;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.controller != null) {
            this.controller.dialogClosed();
        }
    }

    private void notifiyEditStarted() {
        this._observer.update(null, AdobeCCFilesEditRenameOperationStatus.ADOBE_CC_FILES_EDIT_RENAME_OPERATION_STATUS_STARTED);
    }

    public void setParameters(AdobeAsset adobeAsset, Observer observer) {
        this._targetAsset = adobeAsset;
        this._observer = observer;
    }
}
