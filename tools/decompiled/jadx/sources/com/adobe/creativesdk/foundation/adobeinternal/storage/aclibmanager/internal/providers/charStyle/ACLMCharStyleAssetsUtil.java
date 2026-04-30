package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.charStyle;

import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ACLMCharStyleAssetsUtil {
    public static ArrayList<String> getElementFilterTypes() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType);
        return arrayList;
    }
}
