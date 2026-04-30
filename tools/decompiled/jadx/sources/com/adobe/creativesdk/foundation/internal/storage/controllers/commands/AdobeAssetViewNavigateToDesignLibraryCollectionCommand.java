package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewNavigateToDesignLibraryCollectionCommand extends AdobeAssetViewCommandData {
    private String collectionGUID;
    private String collectionHref;
    private String collectionName;
    private AdobeLibraryComposite library;
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

    public AdobeLibraryComposite getLibrary() {
        return this.library;
    }

    public void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        this.library = adobeLibraryComposite;
    }

    public String getParentHref() {
        return this.parentHref;
    }

    public void setParentHref(String str) {
        this.parentHref = str;
    }
}
