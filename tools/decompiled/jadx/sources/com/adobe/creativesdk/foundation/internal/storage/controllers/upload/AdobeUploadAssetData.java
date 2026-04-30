package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.graphics.Bitmap;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetData;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadAssetData extends AdobeAssetData {
    public URL _localAssetURL;
    private InputStream dataStream;
    public AdobeAssetImageDimensions dimensions;
    private String mimeType;
    public AdobeAssetFileRenditionType rendype;
    private AdobeFileUploadType type;
    public Bitmap rendition = null;
    public String _assetGUIDonSuccessFulUpload = null;
    private UploadStatus _uploadStatus = UploadStatus.YetToStart;
    private double _progress = 0.0d;

    public enum UploadStatus {
        YetToStart,
        Started,
        InProgress,
        Error,
        Cancelled,
        Completed,
        StorageFull
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public AdobeFileUploadType getType() {
        return this.type;
    }

    public void setType(AdobeFileUploadType adobeFileUploadType) {
        this.type = adobeFileUploadType;
    }

    public InputStream getDataStream() {
        return this.dataStream;
    }

    public void setDataStream(InputStream inputStream) {
        this.dataStream = inputStream;
    }

    public URL getLocalAssetURL() {
        return this._localAssetURL;
    }

    public AdobeUploadAssetData() {
        setType(AdobeFileUploadType.ADOBE_UPLOAD_DATA_TYPE_PATH);
    }

    public void setRendition(Bitmap bitmap) {
        this.rendition = bitmap;
    }

    public void setUploadProgress(double d2) {
        this._progress = d2;
    }

    public void setStatus(UploadStatus uploadStatus) {
        this._uploadStatus = uploadStatus;
    }

    public UploadStatus getStatus() {
        return this._uploadStatus;
    }

    public double getProgress() {
        return this._progress;
    }

    public boolean isUploadDone() {
        if (this._uploadStatus != UploadStatus.Cancelled && this._uploadStatus != UploadStatus.Completed && this._uploadStatus != UploadStatus.Error) {
            UploadStatus uploadStatus = this._uploadStatus;
            UploadStatus uploadStatus2 = UploadStatus.Cancelled;
            if (uploadStatus != UploadStatus.StorageFull) {
                return false;
            }
        }
        return true;
    }

    public boolean isUploadSuccess() {
        return this._uploadStatus == UploadStatus.Completed;
    }
}
