package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.utils.DynamicHeightImageView;

/* JADX INFO: loaded from: classes2.dex */
public class GenericStaggeredCellView extends StaggeredGridCellView {
    protected boolean hasTitleView() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        this._titleView = (TextView) findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_title);
        this._imageViewAssetPicture = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_imageView);
        this._videoLayout = (LinearLayout) findViewById(R.id.adobe_csdk_assetvire_bottom_video_layout);
        this._bottomInfoLayout = (LinearLayout) findViewById(R.id.adobe_csdk_assetview_bottom_info_layout);
        this._videoDuration = (TextView) findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_video_duration);
        this._videoIndicator = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_video_indicator);
        ((DynamicHeightImageView) this._imageViewAssetPicture).setHeightRatio(this._aspectRatioHint);
        this._selectBtn = (ImageButton) findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_selectbtn);
        this._cellBottomSection = (LinearLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section_vertical);
        this._menuIcon = (RelativeLayout) findViewById(R.id.adobe_csdk_files_menu_icon);
        this._menuIconView = (ImageView) findViewById(R.id.adobe_csdk_asset_browser_cell_menu_icon);
        this._extText = (TextView) findViewById(R.id.adobe_csdk_assetview_file_extension);
        this._sizeView = (TextView) getRootView().findViewById(R.id.adobe_csdk_assetview_file_size);
        this._photoCountView = (TextView) getRootView().findViewById(R.id.adobe_csdk_assetview_photo_count);
        this._photoIcon = (ImageView) getRootView().findViewById(R.id.adobe_csdk_assetview_file_icon);
        this._modifiedDate = (TextView) getRootView().findViewById(R.id.adobe_csdk_assetview_file_modified_date);
        if (!Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext())).booleanValue()) {
            this._menuIcon.setVisibility(8);
        } else {
            this._titleView.setTypeface(typeface);
            this._modifiedDate.setTypeface(typeface);
            this._sizeView.setTypeface(typeface);
        }
        this._titleView.setVisibility(hasTitleView() ? 0 : 8);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setContextMenuHandler(View.OnClickListener onClickListener) {
        View viewFindViewById = findViewById(R.id.adobe_csdk_files_menu_icon);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(onClickListener);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void hidePopUpMenu() {
        if (this._menuIcon != null) {
            this._menuIcon.setVisibility(8);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public View getMenuIconView() {
        return this._menuIconView;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return true;
    }
}
