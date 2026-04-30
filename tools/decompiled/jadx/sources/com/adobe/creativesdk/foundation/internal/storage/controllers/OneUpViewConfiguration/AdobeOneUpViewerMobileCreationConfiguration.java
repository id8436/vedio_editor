package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerMobileCreationConfiguration extends AdobeOneUpViewerBaseConfiguration {
    private AdobeAssetPackagePages _assetPackagePages;
    private ArrayList<AdobeAssetFile> _itemsList;
    private int _startIndex;

    public AdobeAssetPackagePages getAssetPackagePages() {
        return this._assetPackagePages;
    }

    public void setAssetPackagePages(AdobeAssetPackagePages adobeAssetPackagePages) {
        this._assetPackagePages = adobeAssetPackagePages;
    }

    public int getStartIndex() {
        return this._startIndex;
    }

    public void setStartIndex(int i) {
        this._startIndex = i;
    }

    public ArrayList<AdobeAssetFile> getItemsList() {
        return this._itemsList;
    }

    public void setItemsList(ArrayList<AdobeAssetFile> arrayList) {
        this._itemsList = arrayList;
    }
}
