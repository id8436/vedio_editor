package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.layerStyle;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMLayerStyleAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMLayerStyleAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType});
    }
}
