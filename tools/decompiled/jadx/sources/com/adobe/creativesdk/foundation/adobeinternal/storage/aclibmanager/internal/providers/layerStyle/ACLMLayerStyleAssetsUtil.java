package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.layerStyle;

import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMLayerStyleAssetsUtil {
    public static ArrayList<String> getElementFilterTypes() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryLayerStyleElementType);
        return arrayList;
    }
}
