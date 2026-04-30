package com.adobe.premiereclip.downloadmanager;

import android.app.Activity;
import android.content.Intent;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser;
import com.adobe.premiereclip.media.MediaInfo;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CCDownloadSession implements CreativeCloudSource.ICreativeCloudAssetBrowserCallback {
    public static final int CANCEL_BY_USER = 0;
    public static final int CANCEL_LOW_SPACE = 1;
    private Activity activity;
    private CCDownloadDialog ccDownloadDialog = null;
    private HashMap<String, Double> downloadMap;
    private ArrayList<MediaInfo> downloadedMediaList;
    private int errorCount;
    private Listener listener;
    private int numAssetsToBeDownloaded;
    private String projectKey;
    private int rejectCount;
    private int successCount;

    public interface Listener {
        void onDownloadCancel(int i);

        void onDownloadComplete(ArrayList<MediaInfo> arrayList, int i, int i2);

        void onDownloadProgress(double d2);

        void onDownloadStart();
    }

    public CCDownloadSession(Activity activity, String str) {
        this.activity = activity;
        this.projectKey = str;
        init();
    }

    private void init() {
        this.downloadedMediaList = new ArrayList<>();
        this.downloadMap = new HashMap<>();
        this.successCount = 0;
        this.numAssetsToBeDownloaded = 0;
        this.rejectCount = 0;
        this.errorCount = 0;
    }

    public static ArrayList<AdobeSelection> getAssetListFromIntent(Intent intent) {
        return new AdobeUXAssetBrowser.ResultProvider(intent).getSelectionAssetArray();
    }

    public void startDownload(String str, int i, int i2, Intent intent, Listener listener) {
        this.listener = listener;
        if (intent != null) {
            init();
            ArrayList<AdobeSelection> assetListFromIntent = getAssetListFromIntent(intent);
            if (assetListFromIntent != null) {
                this.numAssetsToBeDownloaded = assetListFromIntent.size();
            }
            if (Utilities.canDownloadAssets(assetListFromIntent, this.activity)) {
                CreativeCloudSource.getInstance().handleCreativeCloudImagePickerResponse(str, i, i2, intent, this.activity, this);
            } else {
                listener.onDownloadCancel(1);
            }
        }
    }

    public void startDownloadFromLRApp(String str, int i, int i2, ArrayList<AdobePhotoAsset> arrayList, Listener listener) {
        this.listener = listener;
        init();
        if (arrayList != null) {
            this.numAssetsToBeDownloaded = arrayList.size();
        }
        if (Utilities.canDownloadLRAssets(arrayList, this.activity)) {
            CreativeCloudSource.getInstance().handleCreativeCloudLightroomResponse(str, i, i2, arrayList, this.activity, this);
        } else {
            listener.onDownloadCancel(1);
        }
    }

    @Override // com.adobe.premiereclip.source.CreativeCloudSource.ICreativeCloudAssetBrowserCallback
    public void onStartDownload() {
        synchronized (this) {
            if (this.ccDownloadDialog == null) {
                this.ccDownloadDialog = new CCDownloadDialog(this.activity, new PrepareVideoDialog.Listener() { // from class: com.adobe.premiereclip.downloadmanager.CCDownloadSession.1
                    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                    public void onPreparingCancelled() {
                        CreativeCloudSource.getInstance().cancelCCDownloads(CCDownloadSession.this.projectKey);
                        CCDownloadSession.this.cleanup();
                        CCDownloadSession.this.listener.onDownloadCancel(0);
                    }

                    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                    public void onSavingCancelled() {
                    }

                    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                    public void onPublished() {
                    }

                    @Override // com.adobe.premiereclip.sharing.PrepareVideoDialog.Listener
                    public void onDismissed() {
                    }
                });
                this.ccDownloadDialog.show();
            }
        }
    }

    @Override // com.adobe.premiereclip.source.CreativeCloudSource.ICreativeCloudAssetBrowserCallback
    public void onUpdateDownloadProgress(double d2, String str) {
        synchronized (this) {
            this.downloadMap.put(str, Double.valueOf(d2));
            if (this.ccDownloadDialog != null) {
                this.ccDownloadDialog.setPrepareProgress((int) getTotalProgress());
            }
        }
    }

    @Override // com.adobe.premiereclip.source.CreativeCloudSource.ICreativeCloudAssetBrowserCallback
    public void onDownloadAsset(String str, String str2, String str3, AdobeCSDKException adobeCSDKException) {
        synchronized (this) {
            if (adobeCSDKException != null) {
                this.errorCount++;
            } else {
                this.successCount++;
                MediaInfo mediaInfo = new MediaInfo();
                mediaInfo.setAssetUrl(str2);
                mediaInfo.setLocalPath(str);
                mediaInfo.setAssetDate(str3);
                this.downloadedMediaList.add(mediaInfo);
                this.downloadMap.put(str, Double.valueOf(100.0d));
            }
            checkIfDownloadDone();
        }
    }

    @Override // com.adobe.premiereclip.source.CreativeCloudSource.ICreativeCloudAssetBrowserCallback
    public void onRejectDownload() {
        synchronized (this) {
            this.rejectCount++;
            checkIfDownloadDone();
        }
    }

    private synchronized double getTotalProgress() {
        double dDoubleValue;
        Iterator<Map.Entry<String, Double>> it = this.downloadMap.entrySet().iterator();
        dDoubleValue = 0.0d;
        while (it.hasNext()) {
            dDoubleValue = it.next().getValue().doubleValue() + dDoubleValue;
        }
        return dDoubleValue / ((double) this.numAssetsToBeDownloaded);
    }

    private void checkIfDownloadDone() {
        if (this.successCount + this.errorCount + this.rejectCount == this.numAssetsToBeDownloaded) {
            CreativeCloudSource.getInstance().cancelCCDownloads(this.projectKey);
            this.listener.onDownloadComplete(this.downloadedMediaList, this.numAssetsToBeDownloaded, this.rejectCount);
            cleanup();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanup() {
        this.downloadMap.clear();
        this.downloadedMediaList.clear();
        if (this.ccDownloadDialog != null) {
            this.ccDownloadDialog.dismiss();
            this.ccDownloadDialog = null;
        }
    }
}
