package com.adobe.creativesdk.foundation.internal.storage.controllers;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetMainBrowserExtraConfiguration {
    public static final String SHOULD_SHOW_ONLY_ASSETS_KEY = "SHOULD_SHOW_ONLY_ASSETS";
    public static final String SHOW_LIBRARY_ITEM_KEY = "SHOW_LIBRARY_ITEM";
    public static final String START_WITH_COLLECTION_KEY = "START_WITH_COLLECTION_KEY";
    private boolean shouldShowOnlyAssets;
    private boolean showLibraryItem;
    private String startWithCollection;

    AdobeAssetMainBrowserExtraConfiguration(String str, boolean z, boolean z2) {
        this.shouldShowOnlyAssets = false;
        this.showLibraryItem = false;
        this.startWithCollection = str;
        this.shouldShowOnlyAssets = z;
        this.showLibraryItem = z2;
    }

    public String startWithCollection() {
        return this.startWithCollection;
    }

    public boolean shouldShowOnlyAssets() {
        return this.shouldShowOnlyAssets;
    }

    public boolean showLibraryItem() {
        return this.showLibraryItem;
    }
}
