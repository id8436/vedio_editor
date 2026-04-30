package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetOneUpRecyclerCellView extends AdobeAssetOneUpBaseCellView {
    protected int _cellPos;
    private IAdobeNoPreviewSizeHandler handler;
    private int height = -1;
    private int width = -1;

    public void setCellPos(int i) {
        this._cellPos = i;
    }

    protected void prepareForReuse() {
        this._imageView.setVisibility(0);
        this._noPreviewView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this._imageView.setLayoutParams(layoutParams);
        this._imageView.setAlpha(0.0f);
        this._spinner.setVisibility(0);
    }

    private void setNoPreviewSize(int i, int i2) {
        if (i < this._displayMetrics.widthPixels || i2 < this._displayMetrics.heightPixels) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(13);
            this._noPreviewView.setLayoutParams(layoutParams);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(13);
            this._noPreviewView.setLayoutParams(layoutParams2);
        }
    }

    public void displayThumbnail(Bitmap bitmap, int i) {
        if (this._cellPos == i) {
            super.displayThumbnail(bitmap);
            this._imageView.setAlpha(1.0f);
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView
    protected void handleNetworkOnline() {
        super.handleNetworkOnline();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView
    public void performInitialization(Context context) {
        super.performInitialization(context);
        this._noInternetConnView.setVisibility(8);
        this._noPreviewView.setVisibility(8);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView
    protected void handleOffline(boolean z) {
        if (!z) {
            this._imageView.setVisibility(8);
            if (this.width == -1 || this.height == -1) {
                this.width = this.handler.getWidth();
                this.height = this.handler.getHeight();
                setNoPreviewSize(this.width, this.height);
            }
            this._noPreviewView.setVisibility(0);
            this._spinner.setVisibility(8);
        }
        super.handleOffline(z);
    }

    public void displayThumbnail(BitmapDrawable bitmapDrawable, int i) {
        if (this.width == -1 || this.height == -1) {
            int intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
            int intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
            if (this.handler.getWidth() == -1 || this.handler.getHeight() == -1) {
                this.handler.setMeasurements(intrinsicWidth, intrinsicHeight);
            }
            setNoPreviewSize(intrinsicWidth, intrinsicHeight);
        }
        if (this._cellPos == i) {
            super.displayThumbnail(bitmapDrawable);
            this._imageView.setAlpha(1.0f);
        }
    }

    public void setNoPreviewHandler(IAdobeNoPreviewSizeHandler iAdobeNoPreviewSizeHandler) {
        this.handler = iAdobeNoPreviewSizeHandler;
    }
}
