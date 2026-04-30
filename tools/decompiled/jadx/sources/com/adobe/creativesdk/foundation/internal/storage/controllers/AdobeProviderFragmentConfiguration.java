package com.adobe.creativesdk.foundation.internal.storage.controllers;

/* JADX INFO: loaded from: classes.dex */
public class AdobeProviderFragmentConfiguration {
    public static final String ADOBE_FILES_PROVIDER_KEY = "ADOBE_FILES_PROVIDER_KEY";
    public static final String ADOBE_PROVIDE_MULTIPLE_FILES = "ADOBE_MULTIPLE_FILES_PROVIDER_KEY";
    private boolean shouldEnableMultiSelect;
    private boolean shouldProvideFiles;

    AdobeProviderFragmentConfiguration(boolean z, boolean z2) {
        this.shouldProvideFiles = false;
        this.shouldEnableMultiSelect = false;
        this.shouldProvideFiles = z;
        this.shouldEnableMultiSelect = z2;
    }

    public boolean shouldProvideFiles() {
        return this.shouldProvideFiles;
    }

    public boolean isShouldEnableMultiSelect() {
        return this.shouldProvideFiles;
    }
}
