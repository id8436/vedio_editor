package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.pattern;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMPatternAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMPatternAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType});
    }
}
