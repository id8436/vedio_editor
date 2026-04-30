package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesRenameDialogDismissController;
import com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import java.util.Observer;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryElementRenameDialogFragment extends AdobeDialogFragment {
    private boolean attached;
    private IAdobeCCFilesRenameDialogDismissController controller;
    private Observer observer;
    private AdobeLibraryComposite targetComposite;
    private AdobeLibraryElement targetElement;

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        setDialogTitle(getResourceString(R.string.adobe_csdk_asset_view_edit_rename_dialog_title));
        setEditTextHint(getResourceString(R.string.adobe_csdk_asset_view_edit_rename_dialog_hint_text));
        setNegativeButtonTitle(getResourceString(R.string.adobe_csdk_asset_view_edit_rename_dialog_negative_button));
        setPositiveButtonTitle(getResourceString(R.string.adobe_csdk_asset_view_edit_rename_dialog_positive_button));
        if (this.targetElement != null) {
            setEditText(this.targetElement.getName());
        } else if (this.targetComposite != null) {
            setEditText(this.targetComposite.getName());
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void setDismissController(IAdobeCCFilesRenameDialogDismissController iAdobeCCFilesRenameDialogDismissController) {
        this.controller = iAdobeCCFilesRenameDialogDismissController;
    }

    private String getResourceString(int i) {
        return getResources().getString(i);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.attached = true;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.attached = false;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.controller.dialogClosed();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleTextChanged() {
        if (getEnteredText() != null && getEnteredText().trim().length() > 0) {
            enablePositiveButton();
        } else {
            disablePositiveButton();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleAfterTextChanged(Editable editable) {
        for (int length = editable.length(); length > 0; length--) {
            if (IOUtils.LINE_SEPARATOR_UNIX.equals(editable.subSequence(length - 1, length).toString())) {
                editable.replace(length - 1, length, "");
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handlePositiveClick() {
        renameAsset();
    }

    @Override // com.adobe.creativesdk.foundation.internal.utils.AdobeDialogFragment
    public void handleNegativeClick() {
        handleCancelOperation();
    }

    private void finishDialog() {
        dismissKeyBoard();
        dismissAllowingStateLoss();
    }

    private void renameAsset() {
        String enteredText = getEnteredText();
        disablePositiveButton();
        disableNegativeButton();
        notifiyEditStarted();
        if (this.targetElement != null) {
            this.targetElement.setName(enteredText);
            handleAssetRename();
        } else {
            try {
                ((AdobeLibraryCompositeInternal) this.targetComposite).setName(enteredText);
                handleAssetRename();
            } catch (AdobeLibraryException e2) {
                handleRenameError();
            }
        }
    }

    private void notifiyEditStarted() {
        AdobeDesignLibraryEditManager.setEditInProgress(true);
        AdobeDesignLibraryEditManager.setEditStarted(true);
        if (this.targetElement != null) {
            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_STARTED);
        } else {
            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED);
        }
    }

    private void handleAssetRename() {
        this.observer.update(null, true);
        finishDialog();
    }

    private void handleRenameError() {
        enableNegativeButton();
        if (this.attached) {
            showErrorDialog(getResourceString(R.string.adobe_csdk_asset_view_edit_rename_dialog_error_message));
        }
        this.observer.update(null, false);
    }

    private void handleCancelOperation() {
        finishDialog();
    }

    public void setParameters(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite, Observer observer) {
        this.targetElement = adobeLibraryElement;
        this.targetComposite = adobeLibraryComposite;
        this.observer = observer;
    }
}
