package com.google.gdata.data.calendar;

import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class ListType extends ValueConstruct {
    public static final ListType FAVORITE = new ListType(AdobePhotoAsset.AdobePhotoAssetRenditionImageFavorite);
    public static final ListType ACCESSED = new ListType("accessed");
    public static final ListType OWNED = new ListType("owned");

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(ListType.class, Namespaces.gCalNs, "listtype");
    }

    public ListType() {
        this(null);
    }

    public ListType(String str) {
        super(Namespaces.gCalNs, "listttype", "value", str);
    }
}
