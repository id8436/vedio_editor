package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.brush;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMBrushAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMBrushAssetsListProvider() {
        setContentTypes(ACLMBrushAssetsUtil.getContentType());
        setFilterType(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType);
    }
}
