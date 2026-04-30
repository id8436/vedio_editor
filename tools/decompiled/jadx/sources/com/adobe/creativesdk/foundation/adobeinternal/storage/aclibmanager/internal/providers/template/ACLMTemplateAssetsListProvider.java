package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.template;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMTemplateAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMTemplateAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType});
    }
}
