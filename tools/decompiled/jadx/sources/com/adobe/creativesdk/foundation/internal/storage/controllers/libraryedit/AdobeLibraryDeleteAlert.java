package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryDeleteAlert extends DialogFragment {
    private AdobeLibraryComposite composite;
    private boolean isPublic;
    private TextView messageView;
    private View negativeButton;
    private View positiveButton;

    public void setLibraryComposite(AdobeLibraryComposite adobeLibraryComposite) {
        this.composite = adobeLibraryComposite;
        this.isPublic = this.composite.isPublic();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_alert_dialog_view, viewGroup);
        this.messageView = (TextView) viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_title_text);
        this.positiveButton = viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_positive_button);
        this.negativeButton = viewInflate.findViewById(R.id.adobe_csdk_alert_dialog_box_negative_button);
        this.negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeLibraryDeleteAlert.this.dismiss();
            }
        });
        if (this.isPublic) {
            this.messageView.setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_unsuscribe_dialog_message));
            ((TextView) this.negativeButton).setText(getResources().getString(R.string.adobe_csdk_unsuscribe_confirm_dialog_negative_button));
            ((TextView) this.positiveButton).setText(getResources().getString(R.string.adobe_csdk_unsuscribe_confirm_dialog_positive_button));
            this.positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws AdobeDCXException {
                    AdobeDesignLibraryEditManager.setEditInProgress(true);
                    AdobeDesignLibraryEditManager.setEditStarted(true);
                    AdobeDesignLibraryEditSession adobeDesignLibraryEditSessionCreateSession = AdobeDesignLibraryEditManager.createSession(AdobeLibraryDeleteAlert.this.composite.getLibraryId(), AdobeLibraryDeleteAlert.this.getFragmentManager(), AdobeDesignLibraryEditOperation.ADOBE_PUBLIC_LIBRARY_COMP_EDIT_OPERATION_DELETE, new IAdobeEditLibraryCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert.2.1
                        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeEditLibraryCallback
                        public void onComplete() {
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("LIBRARY_COMP_ID", AdobeLibraryDeleteAlert.this.composite.getLibraryId());
                            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED, bundle2);
                        }
                    });
                    adobeDesignLibraryEditSessionCreateSession.startEditSession();
                    adobeDesignLibraryEditSessionCreateSession.startEditSession();
                    AdobeLibraryDeleteAlert.this.dismiss();
                }
            });
        } else {
            ((TextView) this.negativeButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_delete_dialog_negative_button));
            AdobeCollaborationType collaboration = this.composite.getCollaboration();
            if (this.composite.isReadOnly() || collaboration.equals(AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER)) {
                ((TextView) this.positiveButton).setText(getResources().getString(R.string.adobe_csdk_leave_library_confirm_dialog_positive_button));
                this.messageView.setText(getResources().getString(R.string.adobe_csdk_leave_library_confirm_dialog_message));
            } else {
                ((TextView) this.positiveButton).setText(getResources().getString(R.string.adobe_csdk_asset_view_edit_delete_dialog_positive_button));
                this.messageView.setText(getResources().getString(R.string.adobe_csdk_asset_view_library_composite_edit_delete_dialog_message));
            }
            this.positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws AdobeDCXException {
                    AdobeDesignLibraryEditManager.setEditInProgress(true);
                    AdobeDesignLibraryEditManager.setEditStarted(true);
                    AdobeDesignLibraryEditManager.createSession(AdobeLibraryDeleteAlert.this.composite.getLibraryId(), AdobeLibraryDeleteAlert.this.getFragmentManager(), AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE, new IAdobeEditLibraryCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeLibraryDeleteAlert.3.1
                        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.IAdobeEditLibraryCallback
                        public void onComplete() {
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("LIBRARY_COMP_ID", AdobeLibraryDeleteAlert.this.composite.getLibraryId());
                            AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_COMPLTED, bundle2);
                        }
                    }).startEditSession();
                    AdobeLibraryDeleteAlert.this.dismiss();
                }
            });
        }
        return viewInflate;
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        return dialogOnCreateDialog;
    }
}
