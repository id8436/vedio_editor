package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetViewUtils;
import com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadAssetData;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UploadAssetCellView extends GenericStaggeredCellView {
    private static final float kImageDisabledAlpha = 0.5f;
    private double _progress;
    private Runnable _progress100Runnable;
    protected ProgressBar _uploadProgressBar;
    private AdobeUploadAssetData.UploadStatus _uploadStatus = AdobeUploadAssetData.UploadStatus.YetToStart;

    protected abstract RelativeLayout getProgressBarContainer();

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected boolean providesSelection() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void setImageAssetAlpha(float f2) {
        if (this._uploadStatus == AdobeUploadAssetData.UploadStatus.YetToStart || this._uploadStatus == AdobeUploadAssetData.UploadStatus.InProgress) {
            f2 = kImageDisabledAlpha;
        }
        super.setImageAssetAlpha(f2);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleDisableChange() {
    }

    private void setImageCellProgressState(boolean z) {
        setImageAssetAlpha(z ? kImageDisabledAlpha : 1.0f);
    }

    public void markUploadComplete() {
        this._uploadProgressBar.setVisibility(8);
        setImageCellProgressState(false);
    }

    public void markUploadQueued() {
        markUploadAsInProgress();
        setImageCellProgressState(true);
    }

    private void setProgressColor(int i) {
        this._uploadProgressBar.getProgressDrawable().setColorFilter(i, PorterDuff.Mode.SRC);
    }

    public void markUpload100Percent() {
    }

    public void markUploadAsInProgress() {
        this._uploadProgressBar.setVisibility(0);
        setProgressColor(Color.rgb(32, 152, 245));
        setImageCellProgressState(true);
    }

    public void markUploadError() {
    }

    public void setUploadStatus(AdobeUploadAssetData.UploadStatus uploadStatus) {
        this._uploadStatus = uploadStatus;
        if (this._uploadStatus == AdobeUploadAssetData.UploadStatus.YetToStart) {
            markUploadQueued();
            return;
        }
        if (this._uploadStatus == AdobeUploadAssetData.UploadStatus.Completed) {
            markUploadComplete();
            return;
        }
        if (this._uploadStatus == AdobeUploadAssetData.UploadStatus.Error) {
            markUploadError();
        } else if (this._uploadStatus == AdobeUploadAssetData.UploadStatus.Started || this._uploadStatus == AdobeUploadAssetData.UploadStatus.InProgress) {
            markUploadAsInProgress();
        }
    }

    public void setUploadProgres(double d2) {
        if (d2 >= 100.0d) {
            markUpload100Percent();
        }
        this._uploadProgressBar.setProgress((int) d2);
    }

    protected void addProgressBarChildRule(RelativeLayout.LayoutParams layoutParams) {
        layoutParams.addRule(12);
    }

    protected void createProgressBar(Context context) {
        this._uploadProgressBar = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this._uploadProgressBar.setProgressDrawable(context.getResources().getDrawable(com.adobe.creativesdk.foundation.assetux.R.drawable.asset_upload_progress_bar));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AdobeAssetViewUtils.convertDpToPx(2));
        addProgressBarChildRule(layoutParams);
        this._uploadProgressBar.setLayoutParams(layoutParams);
        this._uploadProgressBar.setVisibility(0);
        this._uploadProgressBar.setIndeterminate(false);
        this._uploadProgressBar.setMax(100);
        this._uploadProgressBar.setProgress(0);
    }

    protected void createAttachProgressBarToView() {
        createProgressBar(getRootView().getContext());
        getProgressBarContainer().addView(this._uploadProgressBar);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.GenericStaggeredCellView, com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView
    protected void handleOnFinishInflate() {
        super.handleOnFinishInflate();
        createAttachProgressBarToView();
    }
}
