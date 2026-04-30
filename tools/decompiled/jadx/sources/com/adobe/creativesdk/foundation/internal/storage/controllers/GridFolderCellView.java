package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class GridFolderCellView extends AssetListCellView {
    boolean _isSharedFolder = false;
    boolean _isReadOnlyFolder = false;
    private int _emptyFolderCellDefaultHeight = 0;
    private int _emptyFolderCellDefaultWidth = 0;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        this._titleView = (TextView) findViewById(R.id.adobe_csdk_assetview_assetgrid_foldercell_title);
        this._assetsCount = (TextView) findViewById(R.id.adobe_csdk_assetview_assetgrid_foldercell_count);
        this._imageViewAssetPicture = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetgrid_foldercell_image);
        this._imageViewSharedFolderIcon = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetgrid_shared_folder_image);
        this._container = (RelativeLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetgrid_foldercell_imageContainer);
        this._gridViewLayout = (LinearLayout) getRootView().findViewById(R.id.gridViewLinearLayout);
        Boolean boolValueOf = Boolean.valueOf(AdobeAssetViewUtils.shouldEnableLokiSpecificFeatures(getContext()));
        this._forward = (ImageView) findViewById(R.id.forwardIcon);
        this._folderMenuIcon = (RelativeLayout) findViewById(R.id.adobe_csdk_folder_menu_icon);
        if (!boolValueOf.booleanValue()) {
            this._forward.setImageResource(R.drawable.folder_forward_icon);
        } else {
            this._assetsCount.setTypeface(typeface);
            this._titleView.setTypeface(typeface);
        }
        this._emptyFolderCellDefaultHeight = (int) getRootView().getResources().getDimension(R.dimen.adobe_csdk_assetbrowser_grid_folderViewCell_empty_folder_layout_height);
        this._emptyFolderCellDefaultWidth = (int) getRootView().getResources().getDimension(R.dimen.adobe_csdk_assetbrowser_grid_folderViewCell_empty_folder_layout_width);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setContextMenuHandler(View.OnClickListener onClickListener) {
        this._folderMenuIcon.setOnClickListener(onClickListener);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void hidePopUpMenu() {
        this._folderMenuIcon.setVisibility(8);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public View getMenuIconView() {
        return this._forward;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setFolderMetrics(boolean z) {
        this._imageViewAssetPicture.requestLayout();
        if (z) {
            this._imageViewAssetPicture.setVisibility(0);
            this._imageViewAssetPicture.getLayoutParams().height = this._emptyFolderCellDefaultHeight;
            this._imageViewAssetPicture.getLayoutParams().width = this._emptyFolderCellDefaultWidth;
            this._imageViewAssetPicture.setImageResource(R.drawable.empty_folder);
            return;
        }
        this._imageViewAssetPicture.setVisibility(4);
        this._imageViewAssetPicture.getLayoutParams().height = -1;
        this._imageViewAssetPicture.getLayoutParams().width = -1;
    }

    public void setSharedFolder(boolean z, boolean z2) {
        if (this._imageViewAssetPicture != null) {
            this._isSharedFolder = z;
            this._isReadOnlyFolder = z2;
            setSharedFolderIcon();
        }
    }

    private void setSharedFolderIcon() {
        if (this._isSharedFolder || this._isReadOnlyFolder) {
            this._imageViewSharedFolderIcon.setVisibility(0);
            if (this._isReadOnlyFolder) {
                this._imageViewSharedFolderIcon.setImageResource(R.drawable.ic_vector_asset_folder_ro);
                return;
            } else {
                this._imageViewSharedFolderIcon.setImageResource(R.drawable.ic_vector_asset_folder_shared);
                return;
            }
        }
        this._imageViewSharedFolderIcon.setImageResource(R.drawable.ic_vector_asset_folder);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void prepareForReuse() {
        super.prepareForReuse();
        this._imageViewAssetPicture.setVisibility(0);
    }

    public void resetFolderView(boolean z, boolean z2, boolean z3, boolean z4) {
        RelativeLayout relativeLayout = (RelativeLayout) getRootView();
        View viewInflate = ((LayoutInflater) getRootView().getContext().getSystemService("layout_inflater")).inflate(R.layout.adobe_assetcell_disable, (ViewGroup) relativeLayout, false);
        viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (z3 && z4) {
            viewInflate.setVisibility(0);
            relativeLayout.addView(viewInflate, 1);
            ((RelativeLayout) viewInflate).requestDisallowInterceptTouchEvent(true);
        } else {
            getRootView().setEnabled(true);
            if (((RelativeLayout) relativeLayout.findViewById(R.id.adobe_assetcell_disable_view)) != null) {
                relativeLayout.removeViewAt(1);
            }
        }
        setFolderMetrics(z);
        setSharedFolder(z2, z3);
    }
}
