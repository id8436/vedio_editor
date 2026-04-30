package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewNavigateCommands {

    public abstract class NavBaseCommandData extends AdobeAssetViewCommandData {
    }

    private AdobeAssetViewNavigateCommands() {
    }

    public class NavToAssetFolderData extends NavBaseCommandData {
        private AdobeStorageResourceCollection collection;
        private AdobeAssetDataSourceType dataSourceType;
        private boolean isReadOnly;

        public AdobeStorageResourceCollection getCollection() {
            return this.collection;
        }

        public void setCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
            this.collection = adobeStorageResourceCollection;
        }

        public AdobeAssetDataSourceType getDataSourceType() {
            return this.dataSourceType;
        }

        public void setDataSourceType(AdobeAssetDataSourceType adobeAssetDataSourceType) {
            this.dataSourceType = adobeAssetDataSourceType;
        }

        public boolean isReadOnly() {
            return this.isReadOnly;
        }

        public void setReadOnly(boolean z) {
            this.isReadOnly = z;
        }
    }

    public class NavToPhotoCollectionData extends NavBaseCommandData {
        private String catalogGUID;
        private String catalogName;
        private String collectionGUID;
        private String collectionName;

        public String getCollectionGUID() {
            return this.collectionGUID;
        }

        public void setCollectionGUID(String str) {
            this.collectionGUID = str;
        }

        public String getCollectionName() {
            return this.collectionName;
        }

        public void setCollectionName(String str) {
            this.collectionName = str;
        }

        public String getCatalogGUID() {
            return this.catalogGUID;
        }

        public void setCatalogGUID(String str) {
            this.catalogGUID = str;
        }

        public String getCatalogName() {
            return this.catalogName;
        }

        public void setCatalogName(String str) {
            this.catalogName = str;
        }
    }

    public class NavToDesignLibraryCollectionData extends NavBaseCommandData {
        private String collectionGUID;
        private String collectionName;
        private AdobeLibraryComposite library;

        public String getCollectionGUID() {
            return this.collectionGUID;
        }

        public void setCollectionGUID(String str) {
            this.collectionGUID = str;
        }

        public String getCollectionName() {
            return this.collectionName;
        }

        public void setCollectionName(String str) {
            this.collectionName = str;
        }

        public AdobeLibraryComposite getLibrary() {
            return this.library;
        }

        public void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
            this.library = adobeLibraryComposite;
        }
    }

    public class NavToMobileCreationPackageCollectionData extends NavBaseCommandData {
        private AdobeAssetPackagePages assetPackagePages;
        private String collectionGUID;
        private String collectionHref;
        private String collectionName;
        private AdobeAssetDataSourceType dataSourceType;
        private String modified;
        private String parentHref;

        public String getCollectionGUID() {
            return this.collectionGUID;
        }

        public void setCollectionGUID(String str) {
            this.collectionGUID = str;
        }

        public String getCollectionName() {
            return this.collectionName;
        }

        public void setCollectionName(String str) {
            this.collectionName = str;
        }

        public String getCollectionHref() {
            return this.collectionHref;
        }

        public void setCollectionHref(String str) {
            this.collectionHref = str;
        }

        public String getParentHref() {
            return this.parentHref;
        }

        public void setParentHref(String str) {
            this.parentHref = str;
        }

        public AdobeAssetDataSourceType getDataSourceType() {
            return this.dataSourceType;
        }

        public void setDataSourceType(AdobeAssetDataSourceType adobeAssetDataSourceType) {
            this.dataSourceType = adobeAssetDataSourceType;
        }

        public AdobeAssetPackagePages getAssetPackagePages() {
            return this.assetPackagePages;
        }

        public void setAssetPackagePages(AdobeAssetPackagePages adobeAssetPackagePages) {
            this.assetPackagePages = adobeAssetPackagePages;
        }

        public String getModified() {
            return this.modified;
        }

        public void setModified(String str) {
            this.modified = str;
        }
    }
}
