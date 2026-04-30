package com.adobe.creativesdk.foundation.internal.storage;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.net.URI;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetFolderInternal extends AdobeAssetFolder {
    public AdobeAssetFolderInternal() {
    }

    public AdobeAssetFolderInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    public AdobeAssetFolderInternal(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageOrderByProperty adobeStorageOrderByProperty, AdobeStorageOrderRelation adobeStorageOrderRelation, URI uri) {
        super(adobeStorageResourceCollection, adobeStorageOrderByProperty, adobeStorageOrderRelation, uri);
    }

    public AdobeStorageResourceCollection getResourceCollection() {
        return super.resourceCollection();
    }
}
