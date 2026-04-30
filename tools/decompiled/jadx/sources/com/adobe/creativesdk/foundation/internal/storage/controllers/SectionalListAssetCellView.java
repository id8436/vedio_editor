package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class SectionalListAssetCellView extends AssetListCellView {
    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        this._titleView = (TextView) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_title);
        this._imageViewAssetPicture = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_imageView);
        this._selectBtn = (ImageButton) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_selectbtn);
        Boolean boolValueOf = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext()));
        this._listMenuIcon = (ImageView) findViewById(R.id.adobe_asset_assetview_assetlist_assetcell_icon);
        this._listMenuCellLayout = (RelativeLayout) findViewById(R.id.adobe_csdk_list_menulayout);
        if (!boolValueOf.booleanValue()) {
            this._listMenuIcon.setVisibility(4);
        }
        this._cellBottomSection = (LinearLayout) findViewById(R.id.adobe_asset_assetview_assetlist_assetcell_layout);
        this._listDivider = findViewById(R.id.adobe_csdk_list_divider);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setContextMenuHandler(View.OnClickListener onClickListener) {
        View viewFindViewById = findViewById(R.id.adobe_csdk_list_menulayout);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(onClickListener);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void hidePopUpMenu() {
        this._listMenuCellLayout.setVisibility(8);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public View getMenuIconView() {
        return this._listMenuIcon;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return true;
    }
}
