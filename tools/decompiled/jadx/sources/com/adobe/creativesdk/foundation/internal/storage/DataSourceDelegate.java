package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes.dex */
class DataSourceDelegate implements IAdobeAssetDataSourceDelegate {
    private AdobeAssetDataSourceType type;

    DataSourceDelegate(AdobeAssetDataSourceType adobeAssetDataSourceType) {
        this.type = adobeAssetDataSourceType;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
    public void willLoadDataFromScratch() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
    public void willLoadNextPageForExistingPackage() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
    public void didLoadMoreDataWithCount(int i) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
    public void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException) {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.IAdobeAssetDataSourceDelegate
    public void didFinishLoading() {
        if (MobileCreationsDataSourceFactory.getInstance() != null) {
            MobileCreationsDataSourceFactory.getInstance().notifyDataSourceIsReady(this.type);
        }
    }
}
