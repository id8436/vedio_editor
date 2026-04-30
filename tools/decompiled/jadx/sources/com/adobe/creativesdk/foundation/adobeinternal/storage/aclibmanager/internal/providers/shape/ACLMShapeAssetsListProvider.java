package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.shape;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;

/* JADX INFO: loaded from: classes.dex */
public class ACLMShapeAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMShapeAssetsListProvider() {
        setContentTypes(new String[]{AdobeAssetFileExtensions.kAdobeMimeTypeShape});
    }
}
