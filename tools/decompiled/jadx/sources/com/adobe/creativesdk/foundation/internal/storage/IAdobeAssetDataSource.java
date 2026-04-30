package com.adobe.creativesdk.foundation.internal.storage;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAssetDataSource {
    int getCount();

    boolean loadItemsFromScratch();

    void loadNextPageOfData();

    void resetDelegate();
}
