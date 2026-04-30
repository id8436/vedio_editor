package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetMainBrowserConfiguration {
    public static final String ADOBE_CLOUD_KEY = "ADOBE_CLOUD";
    public static final String DATA_SOURCE_FILTER_ARRAY_KEY = "DATA_SOURCE_FILTER_ARRAY";
    public static final String DATA_SOURCE_FILTER_TYPE_KEY = "DATA_SOURCE_FILTER_TYPE";
    public static final String DESIGNLIBRARYITEMS_FILTER_ARRAY_KEY = "DESIGNLIBRARYITEMS_FILTER_ARRAY";
    public static final String DESIGNLIBRARYITEMS_FILTER_TYPE_KEY = "DESIGNLIBRARYITEMS_FILTER_TYPE";
    public static final String MIME_TYPE_FILTER_ARRAY_KEY = "MIME_TYPES_FILTER_ARRAY";
    public static final String MIME_TYPE_FILTER_TYPE_KEY = "MIME_TYPES_FILTER_TYPE";
    private AdobeCloud _cloud;
    private EnumSet<AdobeAssetDataSourceType> dataSourcesFilter;
    private boolean isDataSourceFilterInclusive;
    private boolean isMimeTypeFilterInclusive;
    private EnumSet<AdobeAssetMimeTypes> mimeTypesFilter;

    AdobeAssetMainBrowserConfiguration(EnumSet<AdobeAssetDataSourceType> enumSet, boolean z, EnumSet<AdobeAssetMimeTypes> enumSet2, boolean z2, AdobeCloud adobeCloud) {
        this.dataSourcesFilter = enumSet;
        this.isDataSourceFilterInclusive = z;
        this.mimeTypesFilter = enumSet2;
        this.isMimeTypeFilterInclusive = z2;
        if (adobeCloud != null) {
            this._cloud = AdobeCloudManager.getSharedCloudManager().getMatchingCloud(adobeCloud);
        }
    }

    public EnumSet<AdobeAssetDataSourceType> getDataSourcesFilter() {
        return this.dataSourcesFilter;
    }

    public EnumSet<AdobeAssetMimeTypes> getMimeTypesFilter() {
        return this.mimeTypesFilter;
    }

    boolean getIsDataSourceFilterInclusive() {
        return this.isDataSourceFilterInclusive;
    }

    boolean getIsMimeTypeFilterInclusive() {
        return this.isMimeTypeFilterInclusive;
    }

    AdobeCloud getCloud() {
        return this._cloud;
    }
}
