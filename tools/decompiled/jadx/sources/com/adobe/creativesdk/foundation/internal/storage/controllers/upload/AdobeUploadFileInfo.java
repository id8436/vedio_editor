package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadFileInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadFileInfo.1
        @Override // android.os.Parcelable.Creator
        public AdobeUploadFileInfo createFromParcel(Parcel parcel) {
            return new AdobeUploadFileInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AdobeUploadFileInfo[] newArray(int i) {
            return new AdobeUploadFileInfo[i];
        }
    };
    private String assetID;
    private InputStream dataStream;
    private String filePath;
    private URL fileURL;
    private int height;
    private String mimeType;
    private String savedDataName;
    private AdobeFileUploadType type;
    private int width;

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public URL getFileURL() {
        return this.fileURL;
    }

    public void setFileURL(URL url) {
        this.fileURL = url;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public String getAssetID() {
        return this.assetID;
    }

    public void setAssetID(String str) {
        this.assetID = str;
    }

    public AdobeUploadFileInfo() {
        this.width = 0;
        this.height = 0;
        setType(AdobeFileUploadType.ADOBE_UPLOAD_DATA_TYPE_PATH);
    }

    public AdobeUploadFileInfo(Parcel parcel) {
        this.width = 0;
        this.height = 0;
        this.filePath = parcel.readString();
        this.mimeType = parcel.readString();
        this.assetID = parcel.readString();
        this.fileURL = (URL) parcel.readSerializable();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.filePath);
        parcel.writeString(this.mimeType);
        parcel.writeString(this.assetID);
        parcel.writeSerializable(this.fileURL);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }

    public InputStream getDataStream() {
        return this.dataStream;
    }

    public void setDataStream(InputStream inputStream) {
        this.dataStream = inputStream;
    }

    public AdobeFileUploadType getType() {
        return this.type;
    }

    public void setType(AdobeFileUploadType adobeFileUploadType) {
        this.type = adobeFileUploadType;
    }

    public String getSavedDataName() {
        return this.savedDataName;
    }

    public void setSavedDataName(String str) {
        this.savedDataName = str;
    }
}
