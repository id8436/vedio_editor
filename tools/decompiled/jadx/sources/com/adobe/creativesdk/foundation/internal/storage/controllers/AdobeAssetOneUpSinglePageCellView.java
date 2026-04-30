package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.ImageButton;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetOneUpSinglePageCellView extends AdobeAssetOneUpBaseCellView {
    private int _currentAssetPos;
    private ImageButton mVidPlayBtn;
    private int oneUpControllerCode;

    public void setCurrentAssetPos(int i) {
        this._currentAssetPos = i;
    }

    public void initiallizeVideoButton() {
        this.mVidPlayBtn = (ImageButton) findViewById(R.id.adobe_csdk_asset_video_playBtn);
    }

    public void handleVideoFiles() {
        this.mVidPlayBtn.setVisibility(0);
        this.mVidPlayBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpSinglePageCellView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdobeAssetOneUpSinglePageCellView.this._oneUpViewContext != null) {
                    AdobeAssetFileInternal adobeAssetFileInternal = (AdobeAssetFileInternal) AdobeAssetOneUpSinglePageCellView.this.cellViewController.getController().getAssetAtPos(AdobeAssetOneUpSinglePageCellView.this._currentAssetPos);
                    if (adobeAssetFileInternal.canStreamVideo()) {
                        Intent intent = new Intent();
                        intent.setClass(AdobeAssetOneUpSinglePageCellView.this._oneUpViewContext, AdobeUXAssetVideoActivity.class);
                        intent.putExtra("current_asset_name", adobeAssetFileInternal.getName());
                        intent.putExtra("current_asset_guid", adobeAssetFileInternal.getGUID());
                        intent.putExtra("current_asset_position", AdobeAssetOneUpSinglePageCellView.this._currentAssetPos);
                        intent.putExtra("one_up_controller_code", AdobeAssetOneUpSinglePageCellView.this.getOneUpControllerCode());
                        AdobeAssetOneUpSinglePageCellView.this._oneUpViewContext.startActivity(intent);
                        return;
                    }
                    if (!AdobeEntitlementServices.getSharedServices().isEntitledToService("ccv", adobeAssetFileInternal.getCloud())) {
                        AdobeAssetOneUpSinglePageCellView.this.handleNoPreviewWithMsg(R.string.adobe_csdk_error_not_entitled_to_video);
                    } else {
                        new AlertDialog.Builder(AdobeAssetOneUpSinglePageCellView.this._oneUpViewContext).setTitle("").setMessage(AdobeAssetOneUpSinglePageCellView.this.getString(R.string.adobe_csdk_asset_one_up_view_video_alert_message)).setCancelable(false).setPositiveButton(AdobeAssetOneUpSinglePageCellView.this.getString(R.string.adobe_csdk_asset_one_up_view_video_alert_button), new DialogInterface.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetOneUpSinglePageCellView.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                            }
                        }).create().show();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getString(int i) {
        return (this._oneUpViewContext == null || this._oneUpViewContext.getResources() == null) ? "" : this._oneUpViewContext.getResources().getString(i);
    }

    public int getOneUpControllerCode() {
        return this.oneUpControllerCode;
    }

    public void setOneUpControllerCode(int i) {
        this.oneUpControllerCode = i;
    }
}
