package com.adobe.creativesdk.foundation.storage;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetDataSourceFilter {
    private EnumSet<AdobeAssetDataSourceType> dataSources;
    private AdobeAssetDataSourceFilterType filterType;

    public boolean isInclusive() {
        return this.filterType == AdobeAssetDataSourceFilterType.ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION;
    }

    public EnumSet<AdobeAssetDataSourceType> getInclusiveDataSources() {
        if (isInclusive()) {
            return this.dataSources;
        }
        EnumSet<AdobeAssetDataSourceType> enumSetAllSupportedDataSources = allSupportedDataSources();
        if (this.dataSources == null || this.dataSources.size() == 0) {
            return enumSetAllSupportedDataSources;
        }
        Iterator it = this.dataSources.iterator();
        while (it.hasNext()) {
            enumSetAllSupportedDataSources.remove((AdobeAssetDataSourceType) it.next());
        }
        return enumSetAllSupportedDataSources;
    }

    public EnumSet<AdobeAssetDataSourceType> getDataSources() {
        return this.dataSources;
    }

    public AdobeAssetDataSourceFilterType getFilterType() {
        return this.filterType;
    }

    public static AdobeAssetDataSourceFilter createFromDataSources(EnumSet<AdobeAssetDataSourceType> enumSet, AdobeAssetDataSourceFilterType adobeAssetDataSourceFilterType) {
        AdobeAssetDataSourceFilter adobeAssetDataSourceFilter = new AdobeAssetDataSourceFilter();
        adobeAssetDataSourceFilter.filterType = adobeAssetDataSourceFilterType;
        adobeAssetDataSourceFilter.dataSources = enumSet;
        return adobeAssetDataSourceFilter;
    }

    public static EnumSet<AdobeAssetDataSourceType> allSupportedDataSources() {
        return EnumSet.allOf(AdobeAssetDataSourceType.class);
    }
}
