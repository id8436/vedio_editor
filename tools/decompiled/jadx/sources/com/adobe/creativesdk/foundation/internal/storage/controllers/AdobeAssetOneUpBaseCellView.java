package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.utils.BitMapUtil;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoView;
import com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetOneUpBaseCellView {
    private PhotoViewAttacher _attacher;
    protected ICellViewTapHandling _cellViewTabHandling;
    protected DisplayMetrics _displayMetrics;
    protected View _imageView;
    protected View _mainRootView;
    protected View _noInternetConnView;
    protected View _noPreviewView;
    protected Context _oneUpViewContext;
    protected ProgressBar _spinner;
    protected VisibilityHandler _visibilityHandler;
    protected IAdobeOneUpCellViewController cellViewController;

    public interface ICellViewTapHandling {
        boolean isTapHandled(float f2, float f3);
    }

    public void setCellViewTabHandling(ICellViewTapHandling iCellViewTapHandling) {
        this._cellViewTabHandling = iCellViewTapHandling;
    }

    public void setOneUpCellViewController(IAdobeOneUpCellViewController iAdobeOneUpCellViewController) {
        this.cellViewController = iAdobeOneUpCellViewController;
    }

    public View findViewById(int i) {
        return this._mainRootView.findViewById(i);
    }

    public void setMainRootView(View view) {
        this._mainRootView = view;
    }

    public View getRootView() {
        return this._mainRootView;
    }

    public PhotoViewAttacher getAttacher() {
        return this._attacher;
    }

    public void setDisplayMetrics(DisplayMetrics displayMetrics) {
        this._displayMetrics = displayMetrics;
    }

    public void setContext(Context context) {
        this._oneUpViewContext = context;
    }

    public void createPhotoTapListenenr() {
        if (((PhotoView) this._imageView).getAttacher() != null) {
            this._attacher = ((PhotoView) this._imageView).getAttacher();
        } else {
            this._attacher = new PhotoViewAttacher((ImageView) this._imageView);
        }
        this._attacher.setOnPhotoTapListener(new PhotoViewAttacher.OnPhotoTapListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpBaseCellView.1PhotoTapListener
            @Override // com.adobe.creativesdk.foundation.internal.utils.photoview.PhotoViewAttacher.OnPhotoTapListener
            public void onPhotoTap(View view, float f2, float f3) {
                if (AdobeAssetOneUpBaseCellView.this._cellViewTabHandling != null && !AdobeAssetOneUpBaseCellView.this._cellViewTabHandling.isTapHandled(f2, f3) && AdobeAssetOneUpBaseCellView.this.cellViewController.getController().getCurrentAssetViewerActivity() != null) {
                    AdobeAssetOneUpBaseCellView.this.cellViewController.getController().getCurrentAssetViewerActivity().hideOrShowActionsBar();
                }
            }
        });
    }

    public void performInitialization(Context context) {
        this._imageView = findViewById(R.id.adobe_csdk_asset_image_view);
        this._noInternetConnView = findViewById(R.id.adobe_csdk_asset_viewer_no_internet_connection);
        this._noPreviewView = findViewById(R.id.adobe_csdk_asset_viewer_no_preview);
        this._spinner = (ProgressBar) findViewById(R.id.adobe_csdk_asset_image_progressbar_new);
        this._spinner.setVisibility(0);
        this._oneUpViewContext = context;
        this._visibilityHandler = new VisibilityHandler();
    }

    public void displayThumbnail(BitmapDrawable bitmapDrawable) {
        RelativeLayout.LayoutParams layoutParams;
        int intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
        int intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (intrinsicWidth < this._displayMetrics.widthPixels || intrinsicHeight < this._displayMetrics.heightPixels) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.addRule(13);
        this._imageView.setLayoutParams(layoutParams);
        ((ImageView) this._imageView).setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmap, this._displayMetrics.widthPixels, this._displayMetrics.heightPixels));
        this._spinner.setVisibility(8);
    }

    public void displayThumbnail(Bitmap bitmap) {
        if (bitmap.getWidth() < this._displayMetrics.widthPixels || bitmap.getHeight() < this._displayMetrics.heightPixels) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this._imageView.setLayoutParams(layoutParams);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(13);
            this._imageView.setLayoutParams(layoutParams2);
        }
        ((ImageView) this._imageView).setImageBitmap(BitMapUtil.getFinalBitMapWithWhiteBackground(bitmap, this._displayMetrics.widthPixels, this._displayMetrics.heightPixels));
        this._spinner.setVisibility(8);
    }

    protected void handleNoPreviewWithMsg(int i) {
        handleNoPreview();
        ((TextView) this._noPreviewView.findViewById(R.id.adobe_csdk_common_view_error_message)).setText(i);
    }

    protected void handleNetworkOnline() {
        this._imageView.setVisibility(0);
        this._noInternetConnView.setVisibility(8);
        this._noPreviewView.setVisibility(8);
    }

    protected void handleOffline(boolean z) {
        this._imageView.setVisibility(8);
        if (z) {
            this._noInternetConnView.setVisibility(0);
            this._noPreviewView.setVisibility(8);
        } else {
            this._noInternetConnView.setVisibility(8);
            this._noPreviewView.setVisibility(0);
        }
        this._spinner.setVisibility(8);
    }

    class VisibilityHandler {
        VisibilityHandler() {
        }

        void isOnLine() {
            AdobeAssetOneUpBaseCellView.this.handleNetworkOnline();
        }

        void isOffLineOrError(boolean z) {
            AdobeAssetOneUpBaseCellView.this.handleOffline(z);
        }
    }

    public void handleNoPreview() {
        this._visibilityHandler.isOffLineOrError(false);
    }

    public void handleNoNetwork() {
        this._visibilityHandler.isOffLineOrError(true);
    }

    public void isOnline() {
        this._visibilityHandler.isOnLine();
    }
}
