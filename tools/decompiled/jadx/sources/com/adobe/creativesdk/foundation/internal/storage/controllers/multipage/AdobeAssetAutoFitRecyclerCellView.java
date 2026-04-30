package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.assetux.R;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetAutoFitRecyclerCellView {
    protected int _cellPos;
    protected DisplayMetrics _displayMetrics;
    protected View _imageView;
    protected View _mainRootView;
    protected Context _oneUpViewContext;

    public void setCellPos(int i) {
        this._cellPos = i;
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

    public void setDisplayMetrics(DisplayMetrics displayMetrics) {
        this._displayMetrics = displayMetrics;
    }

    public void setContext(Context context) {
        this._oneUpViewContext = context;
    }

    public void performInitialization(Context context) {
        this._imageView = findViewById(R.id.adobe_csdk_asset_image_view);
        if (Build.VERSION.SDK_INT >= 18) {
            ((ImageView) this._imageView).setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            ((ImageView) this._imageView).setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        this._oneUpViewContext = context;
    }

    protected void prepareForReuse() {
        this._imageView.setAlpha(0.0f);
    }

    public void displayThumbnail(BitmapDrawable bitmapDrawable, int i) {
        RelativeLayout.LayoutParams layoutParams;
        if (this._cellPos == i) {
            int intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
            int intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
            if (intrinsicWidth < this._displayMetrics.widthPixels || intrinsicHeight < this._displayMetrics.heightPixels) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            }
            layoutParams.addRule(13);
            this._imageView.setLayoutParams(layoutParams);
            ((ImageView) this._imageView).setImageDrawable(bitmapDrawable);
            this._imageView.setAlpha(1.0f);
        }
    }

    public void displayThumbnail(Bitmap bitmap, int i) {
        if (this._cellPos == i) {
            if (bitmap.getWidth() < this._displayMetrics.widthPixels || bitmap.getHeight() < this._displayMetrics.heightPixels) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                this._imageView.setLayoutParams(layoutParams);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(13);
                this._imageView.setLayoutParams(layoutParams2);
            }
            ((ImageView) this._imageView).setImageBitmap(bitmap);
            this._imageView.setAlpha(1.0f);
        }
    }
}
