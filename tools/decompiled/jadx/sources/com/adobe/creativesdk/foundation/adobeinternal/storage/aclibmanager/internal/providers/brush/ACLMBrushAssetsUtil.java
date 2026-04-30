package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.brush;

import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMBrushAssetsUtil {
    public static ArrayList<String> getElementFilterTypes() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryBrushElementType);
        return arrayList;
    }

    public static String[] getContentType() {
        return new String[]{"application/vnd.adobe.brush+zip", "application/vnd.adobe.ribbon.brush+zip", "application/vnd.adobe.scatter.brush+zip", "application/vnd.adobe.vector.brush+zip"};
    }
}
