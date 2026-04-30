package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.behance.sdk.R;
import com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog;
import java.io.File;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCCLauncherActivity extends FragmentActivity implements View.OnClickListener, BehanceSDKCCBrowserHeadlessFragment.ICreativeCloudAssetDownloadListener {
    public static final String ACTIVITY_RESULT_CC_DOWNLOAD_FAILED_FILES = "ACTIVITY_CC_DOWNLOAD_FAILED_FILES";
    public static final String ACTIVITY_RESULT_CC_INVALID_FILES = "ACTIVITY_CC_INVALID_FILES";
    public static final String ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES = "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES";
    public static final String ARGS_ALLOWED_LIBRARY_TYPES = "ARGS_ALLOWED_LIBRARY_TYPES";
    public static final String ARGS_ALLOWED_MIME_TYPES = "ARGS_ALLOWED_MIME_TYPES";
    public static final String ARGS_ASSET_BROWSER_OPTIONS = "ARGS_ASSET_BROWSER_OPTIONS";
    public static final String ARGS_IMAGE_VALIDATOR_TYPE = "ARGS_IMAGE_VALIDATOR_TYPE";
    private static final String HEADLESS_FRAGMENT_TAG_CC_BROWSER = "HEADLESS_FRAGMENT_TAG_CC_BROWSER";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKCCLauncherActivity.class);
    private final int BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE = 9786;
    private BehanceSDKGenericAlertDialog cancelDownloadAlertDialog;
    private BehanceSDKCCBrowserHeadlessFragment headlessFragment;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_cc_asset_browser_launcher);
        this.headlessFragment = (BehanceSDKCCBrowserHeadlessFragment) getSupportFragmentManager().findFragmentByTag(HEADLESS_FRAGMENT_TAG_CC_BROWSER);
        if (this.headlessFragment == null) {
            this.headlessFragment = new BehanceSDKCCBrowserHeadlessFragment();
            getSupportFragmentManager().beginTransaction().add(this.headlessFragment, HEADLESS_FRAGMENT_TAG_CC_BROWSER).commit();
        }
        this.headlessFragment.setDownloadListener(this);
        if (bundle == null) {
            try {
                this.headlessFragment.launchCCAssetBrowser(this, getIntent());
            } catch (AdobeCSDKException e2) {
                logger.error(e2, "Problem launching Creative Cloud Asset Browser", new Object[0]);
            }
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 9786 && i2 == -1 && intent != null) {
            this.headlessFragment.downloadSelectedFiles(intent);
        } else {
            setResult(0);
            closeActivity();
        }
    }

    private void closeActivity() {
        this.headlessFragment.removeDownloadListener();
        finish();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.headlessFragment != null && this.headlessFragment.isDownloadInProgress()) {
            this.cancelDownloadAlertDialog = BehanceSDKGenericAlertDialog.getInstance(this, R.string.bsdk_cc_asset_browser_cancel_download_alert_dialog_title, R.string.bsdk_cc_asset_browser_cancel_download_alert_dialog_text, R.string.bsdk_generic_alert_dialog_ok_btn_label, R.string.bsdk_generic_alert_dialog_cancel_btn_label);
            this.cancelDownloadAlertDialog.setOnOKBtnClickListener(this);
            this.cancelDownloadAlertDialog.setOnNotOKBtnClickListener(this);
            this.cancelDownloadAlertDialog.show();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bsdkGenericAlertDialogOKBtn) {
            cancelDownload();
        } else if (id == R.id.bsdkGenericAlertDialogNotOKBtn) {
            closeAlertDialog();
        }
    }

    private void cancelDownload() {
        this.headlessFragment.cancelDownload();
        setResult(0);
        closeAlertDialog();
        closeActivity();
    }

    private void closeAlertDialog() {
        if (this.cancelDownloadAlertDialog != null) {
            this.cancelDownloadAlertDialog.dismiss();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.ICreativeCloudAssetDownloadListener
    public void onDownloadComplete(List<File> list, List<File> list2, List<File> list3) {
        Intent intent = new Intent();
        intent.putExtra(ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES, (Serializable) list);
        intent.putExtra(ACTIVITY_RESULT_CC_DOWNLOAD_FAILED_FILES, (Serializable) list2);
        intent.putExtra(ACTIVITY_RESULT_CC_INVALID_FILES, (Serializable) list3);
        setResult(-1, intent);
        closeActivity();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.ICreativeCloudAssetDownloadListener
    public void onDownloadError(AdobeAssetException adobeAssetException) {
        cancelDownload();
    }
}
