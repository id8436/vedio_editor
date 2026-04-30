package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.storage.AdobeAssetException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAssetDataSourceDelegate {
    void didFailToLoadMoreDataWithError(AdobeAssetException adobeAssetException);

    void didFinishLoading();

    void didLoadMoreDataWithCount(int i);

    void willLoadDataFromScratch();

    void willLoadNextPageForExistingPackage();
}
