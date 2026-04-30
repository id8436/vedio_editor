package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.color;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMColorAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMColorAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType});
    }
}
