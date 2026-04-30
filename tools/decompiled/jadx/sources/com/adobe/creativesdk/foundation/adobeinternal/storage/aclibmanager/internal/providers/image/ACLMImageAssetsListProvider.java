package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.image;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMImageAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMImageAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType});
    }
}
