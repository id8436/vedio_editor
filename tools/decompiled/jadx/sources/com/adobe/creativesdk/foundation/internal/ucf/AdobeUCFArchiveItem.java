package com.adobe.creativesdk.foundation.internal.ucf;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUCFArchiveItem {
    private String _archivePath;
    private boolean _compressInArchive;
    private byte[] _srcData;
    private String _srcPath;
    private AdobeUCFArchiveItemType _type;

    public AdobeUCFArchiveItemType getType() {
        return this._type;
    }

    public void setType(AdobeUCFArchiveItemType adobeUCFArchiveItemType) {
        this._type = adobeUCFArchiveItemType;
    }

    public byte[] getSrcData() {
        if (this._srcData != null) {
            return (byte[]) this._srcData.clone();
        }
        return null;
    }

    public void setSrcData(byte[] bArr) {
        if (bArr != null) {
            this._srcData = (byte[]) bArr.clone();
        } else {
            this._srcData = null;
        }
    }

    public String getSrcPath() {
        return this._srcPath;
    }

    public void setSrcPath(String str) {
        this._srcPath = str;
    }

    public String getArchivePath() {
        return this._archivePath;
    }

    public void setArchivePath(String str) {
        this._archivePath = str;
    }

    public boolean isCompressInArchive() {
        return this._compressInArchive;
    }

    public void setCompressInArchive(boolean z) {
        this._compressInArchive = z;
    }

    public AdobeUCFArchiveItem(String str, String str2, boolean z) {
        this._type = AdobeUCFArchiveItemType.AdobeUCFArchiveItemFile;
        this._srcPath = str;
        this._archivePath = str2;
        this._compressInArchive = z;
    }

    public AdobeUCFArchiveItem(byte[] bArr, String str, boolean z) {
        this._type = AdobeUCFArchiveItemType.AdobeUCFArchiveItemData;
        this._srcData = (byte[]) bArr.clone();
        this._archivePath = str;
        this._compressInArchive = z;
    }
}
