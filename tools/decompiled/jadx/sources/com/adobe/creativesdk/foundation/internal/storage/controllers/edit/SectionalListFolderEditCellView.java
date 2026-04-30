package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.SectionalListFolderCellView;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class SectionalListFolderEditCellView extends SectionalListFolderCellView {
    private static final String T = SectionalListFolderEditCellView.class.getSimpleName();
    private View _checkbox;
    private IAdobeCCFilesEditDelegate _editDelegate;
    private boolean isSelected = false;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.SectionalListFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void prepareForReuse() {
        this.isSelected = false;
        super.prepareForReuse();
    }

    public void setEditDelegate(IAdobeCCFilesEditDelegate iAdobeCCFilesEditDelegate) {
        this._editDelegate = iAdobeCCFilesEditDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAssetSelectionToggle() {
        if (this._editDelegate.getControllerState()) {
            this.isSelected = !this.isSelected;
            if (this._checkbox != null) {
                ((CheckBox) this._checkbox).setChecked(this.isSelected);
            }
            this._editDelegate.handleAssetSelectionToggle(getPosition());
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void performOnFinishInflate() {
        getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.SectionalListFolderEditCellView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SectionalListFolderEditCellView.this.handleAssetSelectionToggle();
            }
        });
        super.performOnFinishInflate();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setClickListener(View.OnClickListener onClickListener) {
        AdobeLogger.log(Level.WARN, T, "click listener ignored");
    }

    public void handleSelection(boolean z) {
        this.isSelected = z;
        ((CheckBox) this._checkbox).setChecked(this.isSelected);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.SectionalListFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        super.handleOnFinishInflate();
        ((ImageView) getRootView().findViewById(R.id.adobe_csdk_assetlist_forwardicon)).setVisibility(8);
        this._checkbox = findViewById(R.id.item_selection_folder_checkbox);
        this._checkbox.setVisibility(0);
        ((CheckBox) this._checkbox).setChecked(this.isSelected);
    }
}
