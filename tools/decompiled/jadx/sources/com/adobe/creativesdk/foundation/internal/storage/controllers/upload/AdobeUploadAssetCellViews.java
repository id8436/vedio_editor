package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Build;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.utils.DynamicHeightImageView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadAssetCellViews {

    public class UploadAssetGridCellView extends UploadAssetCellView {
        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView
        protected RelativeLayout getProgressBarContainer() {
            return (RelativeLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetgrid_assetcell_imageContainer);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView
        protected void addProgressBarChildRule(RelativeLayout.LayoutParams layoutParams) {
            if (Build.VERSION.SDK_INT > 17) {
                super.addProgressBarChildRule(layoutParams);
            } else {
                layoutParams.addRule(8, R.id.adobe_csdk_assetview_assetgrid_assetcell_selectbtn);
            }
        }
    }

    public class UploadAssetListCellView extends UploadAssetCellView {
        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView
        protected RelativeLayout getProgressBarContainer() {
            return (RelativeLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_root);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadAssetCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
        protected void handleOnFinishInflate() {
            this._titleView = (TextView) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_title);
            this._imageViewAssetPicture = (ImageView) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_imageView);
            this._selectBtn = (ImageButton) findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_selectbtn);
            LinearLayout linearLayout = (LinearLayout) getRootView().findViewById(R.id.adobe_csdk_assetview_assetlist_assetcell_container);
            linearLayout.removeView(this._imageViewAssetPicture);
            DynamicHeightImageView dynamicHeightImageView = new DynamicHeightImageView(getRootView().getContext());
            dynamicHeightImageView.setScaleType(ImageView.ScaleType.CENTER);
            int iConvertDpToPx = AdobeAssetViewUtils.convertDpToPx(44);
            dynamicHeightImageView.setLayoutParams(new LinearLayout.LayoutParams(iConvertDpToPx, iConvertDpToPx));
            linearLayout.addView(dynamicHeightImageView, 1);
            this._imageViewAssetPicture = dynamicHeightImageView;
            forceAspectRatio(1.0f);
            createAttachProgressBarToView();
        }
    }
}
