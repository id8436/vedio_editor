package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.view.View;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class ListDocProviderFolderCellView extends SectionalListFolderCellView {
    private View _checkbox;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.SectionalListFolderCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        super.handleOnFinishInflate();
        this._checkbox = findViewById(R.id.item_selection_folder_checkbox);
        this._checkbox.setVisibility(4);
        if (this._forward != null) {
            this._forward.setVisibility(8);
        }
    }
}
