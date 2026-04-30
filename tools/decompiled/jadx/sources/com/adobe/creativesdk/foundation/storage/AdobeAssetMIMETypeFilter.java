package com.adobe.creativesdk.foundation.storage;

import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetMIMETypeFilter {
    private AdobeAssetMIMETypeFilterType filterType;
    private EnumSet<AdobeAssetMimeTypes> mimeTypes;

    public boolean isInclusive() {
        return this.filterType == AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION;
    }

    public EnumSet<AdobeAssetMimeTypes> getMimeTypes() {
        return this.mimeTypes;
    }

    public AdobeAssetMIMETypeFilterType getFilterType() {
        return this.filterType;
    }

    public static AdobeAssetMIMETypeFilter createFromMimeTypes(EnumSet<AdobeAssetMimeTypes> enumSet, AdobeAssetMIMETypeFilterType adobeAssetMIMETypeFilterType) {
        AdobeAssetMIMETypeFilter adobeAssetMIMETypeFilter = new AdobeAssetMIMETypeFilter();
        adobeAssetMIMETypeFilter.filterType = adobeAssetMIMETypeFilterType;
        adobeAssetMIMETypeFilter.mimeTypes = enumSet;
        return adobeAssetMIMETypeFilter;
    }
}
