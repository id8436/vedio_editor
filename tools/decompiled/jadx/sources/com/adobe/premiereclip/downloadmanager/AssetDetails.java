package com.adobe.premiereclip.downloadmanager;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPhotoAsset;
import com.adobe.premiereclip.dcx.DCXUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
class AssetDetails {
    private String mAssetUrl;
    private long mFileSize;
    private String mLastModifiedDate;

    public AssetDetails(String str, String str2, long j) {
        this.mAssetUrl = str;
        this.mLastModifiedDate = str2;
        this.mFileSize = j;
    }

    public long getFileSize() {
        return this.mFileSize;
    }

    public String getAssetUrl() {
        return this.mAssetUrl;
    }

    public String getLastModifiedDate() {
        return this.mLastModifiedDate;
    }

    public static AssetDetails getAssetDetailsFromAdobeSelectionAssetFile(AdobeSelectionAssetFile adobeSelectionAssetFile) {
        AdobeAssetFile selectedItem = adobeSelectionAssetFile.getSelectedItem();
        return new AssetDetails(selectedItem.getHref().getPath(), DCXUtils.getFormattedDate(selectedItem.getModificationDate()), selectedItem.getFileSize());
    }

    public static AssetDetails getAssetDetailsFromAdobeSelectionPhotoAsset(AdobeSelectionPhotoAsset adobeSelectionPhotoAsset) {
        AdobePhotoAsset selectedItem = adobeSelectionPhotoAsset.getSelectedItem();
        return new AssetDetails(selectedItem.getHref() + URIUtil.SLASH + selectedItem.getName(), DCXUtils.getFormattedDate(selectedItem.getModificationDate()), selectedItem.getSize());
    }
}
