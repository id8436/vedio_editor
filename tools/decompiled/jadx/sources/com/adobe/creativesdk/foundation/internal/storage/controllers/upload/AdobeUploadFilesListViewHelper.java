package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.graphics.Bitmap;
import android.support.v4.internal.view.SupportMenu;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadFilesListViewHelper {

    public class UploadSimulator {
        private static UploadSimulator _sInstance;
        private int _count;
        private int _failCount;
        private int _failedSofar = 0;
        private ArrayList<AdobeUploadFileInfo> _localAssetsList;
        private AdobeAssetFolder _targetFolder;

        public static UploadSimulator getInstance() {
            if (_sInstance == null) {
                _sInstance = new UploadSimulator();
            }
            return _sInstance;
        }

        public void setUploadDetials(AdobeAssetFolder adobeAssetFolder, int i, int i2) {
            this._targetFolder = adobeAssetFolder;
            this._count = i;
            this._failCount = i2;
            createLocalAssetsList();
            this._failedSofar = 0;
        }

        private void createLocalAssetsList() {
            this._localAssetsList = new ArrayList<>();
            for (int i = 0; i < this._count; i++) {
                AdobeUploadFileInfo adobeUploadFileInfo = new AdobeUploadFileInfo();
                try {
                    adobeUploadFileInfo.setFileURL(new URL("file:///upload_test/Test_" + Integer.toString(i + 1)));
                } catch (MalformedURLException e2) {
                }
                this._localAssetsList.add(adobeUploadFileInfo);
            }
        }

        public ArrayList<AdobeUploadFileInfo> get_localAssetsList() {
            return this._localAssetsList;
        }

        private boolean shouldAssetFail(URL url) {
            if (this._failedSofar < this._failCount) {
                z = this._localAssetsList.indexOf(url) == (this._failedSofar * 2) + 1;
                if (z) {
                    this._failedSofar++;
                }
            }
            return z;
        }

        public void startUpload() {
            ArrayList<AdobeUploadFileInfo> arrayList = get_localAssetsList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList2.add(new AdobeCCFilesUploader());
            }
            AdobeUploadManager.getInstance(AdobeAssetFolder.class).createAndStartUploadSession(arrayList, this._targetFolder, arrayList2);
        }

        public Bitmap getBitmap(URL url) {
            int iIndexOf = this._localAssetsList.indexOf(url);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(500, 500, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(iIndexOf % 2 == 0 ? -16711936 : SupportMenu.CATEGORY_MASK);
            return bitmapCreateBitmap;
        }

        public void uploadAsset(URL url, final IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException> iAdobeGenericRequestCallback) {
            final AssetUploadState assetUploadState = new AssetUploadState();
            assetUploadState.progress = 0;
            final boolean zShouldAssetFail = shouldAssetFail(url);
            final Timer timer = new Timer();
            final Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadFilesListViewHelper.UploadSimulator.1
                @Override // java.lang.Runnable
                public void run() {
                    assetUploadState.progress += 5;
                    if (assetUploadState.progress > 50 && zShouldAssetFail) {
                        iAdobeGenericRequestCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse));
                        timer.cancel();
                    } else {
                        if (assetUploadState.progress >= 100) {
                            iAdobeGenericRequestCallback.onProgress(assetUploadState.progress);
                            iAdobeGenericRequestCallback.onCompletion(null);
                            timer.cancel();
                            return;
                        }
                        iAdobeGenericRequestCallback.onProgress(assetUploadState.progress);
                    }
                }
            };
            timer.schedule(new TimerTask() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadFilesListViewHelper.UploadSimulator.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    AdobeUxUtilMainUIThreadHandler.getHandler().post(runnable);
                }
            }, 100L, 200L);
        }
    }
}
