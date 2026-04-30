package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes.dex */
public class AdobeRemoveMyselfDialogFragment extends DialogFragment {
    private TextView _messageView;
    private View _negativeButton;
    private View _positiveButton;
    private IAdobeAlertDialogFragmentCallback dialogFragmentCallback;
    private boolean isRemove = false;
    private boolean isRevoke = false;
    private boolean isLibrary = false;

    public void setFragmentCallback(IAdobeAlertDialogFragmentCallback iAdobeAlertDialogFragmentCallback) {
        this.dialogFragmentCallback = iAdobeAlertDialogFragmentCallback;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_alert_dialog_view, viewGroup);
        this._messageView = (TextView) viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_title_text);
        this._positiveButton = viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_positive_button);
        this._negativeButton = viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_negative_button);
        ((TextView) this._negativeButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_delete_dialog_negative_button));
        this._negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeRemoveMyselfDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdobeRemoveMyselfDialogFragment.this.dialogFragmentCallback != null) {
                    AdobeRemoveMyselfDialogFragment.this.dialogFragmentCallback.handleNegativeButtonClick();
                }
                AdobeRemoveMyselfDialogFragment.this.dismiss();
            }
        });
        this._positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeRemoveMyselfDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdobeRemoveMyselfDialogFragment.this.dialogFragmentCallback != null) {
                    AdobeRemoveMyselfDialogFragment.this.dialogFragmentCallback.handlePositiveButtonClick();
                }
                AdobeRemoveMyselfDialogFragment.this.dismiss();
            }
        });
        return viewInflate;
    }

    private void setMessage() {
        if (this.isRemove) {
            ((TextView) this._positiveButton).setText(getResources().getString(R.string.adobe_csdk_remove_confirm_dialog_positive_button));
            this._messageView.setText(getResources().getString(R.string.adobe_csdk_remove_confirm_dialog_message));
        } else {
            if (this.isRevoke) {
                ((TextView) this._positiveButton).setText(getResources().getString(R.string.adobe_csdk_revoke_confirm_dialog_positive_button));
                this._messageView.setText(getResources().getString(R.string.adobe_csdk_revoke_confirm_dialog_message));
                return;
            }
            ((TextView) this._positiveButton).setText(getResources().getString(R.string.adobe_csdk_leave_library_confirm_dialog_positive_button));
            if (this.isLibrary) {
                this._messageView.setText(getResources().getString(R.string.adobe_csdk_leave_library_confirm_dialog_message));
            } else {
                this._messageView.setText(getResources().getString(R.string.adobe_csdk_leave_folder_confirm_dialog_message));
            }
        }
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        return dialogOnCreateDialog;
    }

    public void setRemove(boolean z) {
        this.isRemove = z;
    }

    public void setRevoke(boolean z) {
        this.isRevoke = z;
    }

    public void setLibrary(boolean z) {
        this.isLibrary = z;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("REMOVE_ALERT_IS_REMOVE", this.isRemove);
        bundle.putBoolean("REMOVE_ALERT_IS_REVOKE", this.isRevoke);
        bundle.putBoolean("REMOVE_ALERT_IS_LIBRARY", this.isLibrary);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        setMessage();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle != null) {
            this.isLibrary = bundle.getBoolean("REMOVE_ALERT_IS_LIBRARY");
            this.isRemove = bundle.getBoolean("REMOVE_ALERT_IS_REMOVE");
            this.isRevoke = bundle.getBoolean("REMOVE_ALERT_IS_REVOKE");
        }
    }
}
