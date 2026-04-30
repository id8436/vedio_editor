package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.charStyle;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.ACLMDefaultAssetsListProvider;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;

/* JADX INFO: loaded from: classes.dex */
public class ACLMCharStyleAssetsListProvider extends ACLMDefaultAssetsListProvider {
    public ACLMCharStyleAssetsListProvider() {
        setElementMediaTypes(new String[]{AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType});
    }
}
