package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.shape;

import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMShapeAssetUtil {
    public static ArrayList<String> getElementFilterTypes() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType);
        return arrayList;
    }
}
