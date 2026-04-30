package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePhotoCollectionsDataSourceDelegate {
    void loadCatalogFailed(AdobeCSDKException adobeCSDKException);

    void loadCatalogSucceeded(AdobePhotoCatalog adobePhotoCatalog);

    void loadFirstPageFailed(AdobeCSDKException adobeCSDKException);

    void loadFirstPageSucceeded();

    void loadNextPageOfDataFailed(AdobeCSDKException adobeCSDKException);

    void loadNextPageOfDataSucceeded();

    void willLoadCatalog();

    void willLoadFirstPage();

    void willLoadNextPage();
}
