package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.graphics.Bitmap;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.utils.DynamicHeightImageView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StaggeredGridCellView extends AssetListCellView {
    private float _forcedAspectRatio = 0.0f;

    public void forceAspectRatio(float f2) {
        this._forcedAspectRatio = f2;
        setAssetImageAspectRatioHint(this._forcedAspectRatio);
    }

    public void forceHideBottomTitleBar() {
        findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section).setVisibility(8);
    }

    public void forceHideBottomInfo() {
        TextView textView = (TextView) findViewById(R.id.adobe_csdk_assetview_file_size);
        findViewById(R.id.adobe_csdk_files_thin_line).setVisibility(8);
        textView.setVisibility(8);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void changeSelectionOverlay() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void setThumbnailOnAssetCell(Bitmap bitmap) {
        if (bitmap != null && this._forcedAspectRatio == 0.0f) {
            float height = bitmap.getHeight() / bitmap.getWidth();
            if (Math.abs(((DynamicHeightImageView) this._imageViewAssetPicture).getHeightRatio() - ((double) height)) > 0.01d) {
                ((DynamicHeightImageView) this._imageViewAssetPicture).setHeightRatio(height);
            }
        } else {
            ((DynamicHeightImageView) this._imageViewAssetPicture).setHeightRatio(1.0d);
        }
        super.setThumbnailOnAssetCell(bitmap);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    public void setAssetImageAspectRatioHint(float f2) {
        if (f2 != this._aspectRatioHint) {
            if (this._forcedAspectRatio != 0.0f) {
                f2 = this._forcedAspectRatio;
            }
            super.setAssetImageAspectRatioHint(f2);
            ((DynamicHeightImageView) this._imageViewAssetPicture).setHeightRatio(this._aspectRatioHint);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handlePostInflate() {
        if (this._imageViewAssetPicture != null) {
            ((DynamicHeightImageView) this._imageViewAssetPicture).setHeightRatio(this._aspectRatioHint);
        }
        super.handlePostInflate();
    }
}
