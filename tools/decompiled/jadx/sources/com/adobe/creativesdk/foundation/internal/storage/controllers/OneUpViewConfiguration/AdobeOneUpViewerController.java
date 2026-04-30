package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerController {
    public static final String ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY = "ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION";
    public static final String ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION_KEY = "ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION";
    public static final String ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION_KEY = "ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION";
    public static final String ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION_KEY = "ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION";
    protected HashMap<String, AdobeOneUpViewerBaseConfiguration> configurations = new HashMap<>();
    private String fileProviderAuthority;

    public AdobeOneUpViewerBaseConfiguration getConfiguration(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return this.configurations.get(str);
    }

    public void setFilesViewerConfiguration(AdobeOneUpViewerFilesConfiguration adobeOneUpViewerFilesConfiguration) {
        this.configurations.put(ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY, adobeOneUpViewerFilesConfiguration);
    }

    public void setPhotoViewerConfiguration(AdobeOneUpViewerPhotosConfiguration adobeOneUpViewerPhotosConfiguration) {
        this.configurations.put(ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION_KEY, adobeOneUpViewerPhotosConfiguration);
    }

    public void setLibraryViewerConfiguration(AdobeOneUpViewerLibraryConfiguration adobeOneUpViewerLibraryConfiguration) {
        this.configurations.put(ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION_KEY, adobeOneUpViewerLibraryConfiguration);
    }

    public void setMobileCreationViewerConfiguration(AdobeOneUpViewerMobileCreationConfiguration adobeOneUpViewerMobileCreationConfiguration) {
        this.configurations.put(ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION_KEY, adobeOneUpViewerMobileCreationConfiguration);
    }

    public String getFileProviderAuthority() {
        return this.fileProviderAuthority;
    }

    public void setFileProviderAuthority(String str) {
        this.fileProviderAuthority = str;
    }
}
