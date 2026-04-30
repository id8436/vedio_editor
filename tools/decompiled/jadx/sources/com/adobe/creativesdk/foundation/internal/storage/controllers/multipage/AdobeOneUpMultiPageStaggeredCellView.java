package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.graphics.Bitmap;
import android.view.View;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.utils.DynamicHeightImageView;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpMultiPageStaggeredCellView {
    protected float aspectRatioHint;
    protected DynamicHeightImageView imageView;
    protected View mainRootView;
    protected int position;

    public void initiallizeLayoutComponents(View view) {
        this.mainRootView = view;
        this.imageView = (DynamicHeightImageView) this.mainRootView.findViewById(R.id.adobe_csdk_multipage_assetgrid_assetcell_imageView);
    }

    public View getRootView() {
        return this.mainRootView;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void displayThumbnail(Bitmap bitmap, int i) {
        if (this.position == i) {
            this.imageView.setHeightRatio(this.aspectRatioHint);
            this.imageView.setImageBitmap(bitmap);
        }
    }

    public void setAssetImageAspectRatioHint(float f2) {
        this.aspectRatioHint = f2;
    }
}
