package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class AdobeMobilePackageCollectionConfiguration extends AdobeAssetsViewContainerConfiguration {
    public static final String TARGET_COLLECTION_HREF_KEY = "mobilePackageCollectionHref";
    public static final String TARGET_COLLECTION_MODIFIED_DATE = "mobilePackageCollectionModifiedDate";
    public static final String TARGET_COLLECTION_PARENT_HREF_KEY = "mobilePackageCollectionParentHref";
    private String modifiedDate;
    private String targetCollectionHref;
    private String targetParentCollectionHref;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetsViewContainerConfiguration
    public String getTargetCollectionHref() {
        return this.targetCollectionHref;
    }

    public String getTargetParentCollectionHref() {
        return this.targetParentCollectionHref;
    }

    public String getTargetModifedDate() {
        return this.modifiedDate;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetsViewContainerConfiguration
    public void createFromBundle(Bundle bundle) {
        super.createFromBundle(bundle);
        this.targetCollectionHref = (String) bundle.get(TARGET_COLLECTION_HREF_KEY);
        this.targetParentCollectionHref = (String) bundle.get(TARGET_COLLECTION_PARENT_HREF_KEY);
        this.modifiedDate = (String) bundle.get(TARGET_COLLECTION_MODIFIED_DATE);
    }
}
