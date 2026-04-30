package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetsViewContainerConfiguration {
    public static final String ADOBE_CLOUD_KEY = "ADOBE_CLOUD";
    public static final String DATA_SOURCE_TYPE_KEY = "ASSET_CONTAINER_DATA_SOURCE_TYPE";
    public static final String MIME_FILTERS_KEY = "ASSET_CONTAINER_MIME_FILTERS";
    public static final String MIME_FILTER_TYPE_KEY = "ASSET_CONTAINER_MIME_TYPES_FILTER";
    public static final String MOBILECREATION_FILTERES_TYPES = "MOBILE_CREATION_FILTERED_TYPES";
    public static final String TARGET_COLLECTION = "ASSET_CONTAINER_TARGET_COLLECTION";
    public static final String TARGET_COLLECTION_IS_READ_ONLY = "ASSET_CONTAINER_IS_READ_ONLY";
    private AdobeCloud _cloud;
    private boolean _isReadOnly;
    private AdobeAssetDataSourceType dataSourceType;
    private boolean isMimeTypeFilterInclusive;
    private EnumSet<AdobeAssetMimeTypes> mimeTypesFilter;
    private EnumSet<AdobeAssetDataSourceType> mobileCreationFilteredTypes;
    private AdobeStorageResourceCollection targetCollection;
    private AdobeAssetFolder targetFolder;

    public AdobeAssetDataSourceType getDataSourceType() {
        return this.dataSourceType;
    }

    public String getTargetCollectionHref() {
        if (this.targetCollection == null || this.targetCollection.href == null) {
            return null;
        }
        return this.targetCollection.href.toString();
    }

    public AdobeStorageResourceCollection getTargetCollection() {
        return this.targetCollection;
    }

    public boolean isStartAtRootCollection() {
        return this.targetCollection == null;
    }

    public EnumSet<AdobeAssetMimeTypes> getMimeTypesFilter() {
        return this.mimeTypesFilter;
    }

    public boolean getIsMimeTypeFilterInclusive() {
        return this.isMimeTypeFilterInclusive;
    }

    public void createFromBundle(Bundle bundle) {
        this.dataSourceType = (AdobeAssetDataSourceType) bundle.getSerializable(DATA_SOURCE_TYPE_KEY);
        this.targetCollection = (AdobeStorageResourceCollection) bundle.getParcelable(TARGET_COLLECTION);
        this.mimeTypesFilter = (EnumSet) bundle.getSerializable(MIME_FILTERS_KEY);
        this.isMimeTypeFilterInclusive = bundle.getBoolean(MIME_FILTER_TYPE_KEY);
        this._isReadOnly = bundle.getBoolean(TARGET_COLLECTION_IS_READ_ONLY);
        AdobeCloud adobeCloud = (AdobeCloud) bundle.getSerializable("ADOBE_CLOUD");
        if (adobeCloud != null) {
            this._cloud = AdobeCloudManager.getSharedCloudManager().getMatchingCloud(adobeCloud);
        }
        this.mobileCreationFilteredTypes = (EnumSet) bundle.getSerializable(MOBILECREATION_FILTERES_TYPES);
    }

    public AdobeCloud getCloud() {
        return this._cloud;
    }

    public boolean isReadOnly() {
        return this._isReadOnly;
    }

    public EnumSet<AdobeAssetDataSourceType> getMobileCreationFilteredTypes() {
        return this.mobileCreationFilteredTypes;
    }
}
