package com.behance.sdk;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageSelectorOptions {
    public static int UNLIMITED_NUM_OF_IMAGES = -1;
    private ArrayList<String> allowedFileExtensions;
    private String imageValidatorType;
    private BehanceSDKImageDimensions maxImageDimensions;
    private int maxNumberOfImages;
    private BehanceSDKImageDimensions minImageDimensions;
    private ArrayList<String> prohibitedFileExtensions;
    private boolean showImageSelectionSources = true;
    private long minImageSizeInBytes = -1;
    private long maxImageSizeInBytes = -1;
    private boolean ccAssetBrowserDisabled = false;

    public String getImageValidatorType() {
        return this.imageValidatorType;
    }

    public void setImageValidatorType(String str) {
        this.imageValidatorType = str;
    }

    public static BehanceSDKImageSelectorOptions getSingleImageSelectionOptions() {
        return getSingleImageSelectionOptions(null, null);
    }

    public static BehanceSDKImageSelectorOptions getSingleImageSelectionOptions(BehanceSDKImageDimensions behanceSDKImageDimensions, BehanceSDKImageDimensions behanceSDKImageDimensions2) {
        BehanceSDKImageSelectorOptions behanceSDKImageSelectorOptions = new BehanceSDKImageSelectorOptions();
        behanceSDKImageSelectorOptions.setMaxNumberOfImages(1);
        behanceSDKImageSelectorOptions.setMinImageDimensions(behanceSDKImageDimensions);
        behanceSDKImageSelectorOptions.setMaxImageDimensions(behanceSDKImageDimensions2);
        return behanceSDKImageSelectorOptions;
    }

    public static BehanceSDKImageSelectorOptions getUnlimitedImageSelectionOptions() {
        return getUnlimitedImageSelectionOptions(null, null);
    }

    public static BehanceSDKImageSelectorOptions getUnlimitedImageSelectionOptionsNoImageSource() {
        BehanceSDKImageSelectorOptions unlimitedImageSelectionOptions = getUnlimitedImageSelectionOptions(null, null);
        unlimitedImageSelectionOptions.hideImageSelectionSources();
        return unlimitedImageSelectionOptions;
    }

    public static BehanceSDKImageSelectorOptions getUnlimitedImageSelectionOptions(BehanceSDKImageDimensions behanceSDKImageDimensions, BehanceSDKImageDimensions behanceSDKImageDimensions2) {
        BehanceSDKImageSelectorOptions behanceSDKImageSelectorOptions = new BehanceSDKImageSelectorOptions();
        behanceSDKImageSelectorOptions.setMaxNumberOfImages(UNLIMITED_NUM_OF_IMAGES);
        behanceSDKImageSelectorOptions.setMinImageDimensions(behanceSDKImageDimensions);
        behanceSDKImageSelectorOptions.setMaxImageDimensions(behanceSDKImageDimensions2);
        return behanceSDKImageSelectorOptions;
    }

    public int getMaxNumberOfImages() {
        return this.maxNumberOfImages;
    }

    public void setMaxNumberOfImages(int i) {
        if (i == 0) {
            i = UNLIMITED_NUM_OF_IMAGES;
        }
        this.maxNumberOfImages = i;
    }

    public BehanceSDKImageDimensions getMinImageDimensions() {
        return this.minImageDimensions;
    }

    public void setMinImageDimensions(BehanceSDKImageDimensions behanceSDKImageDimensions) {
        this.minImageDimensions = behanceSDKImageDimensions;
    }

    public BehanceSDKImageDimensions getMaxImageDimensions() {
        return this.maxImageDimensions;
    }

    public void setMaxImageDimensions(BehanceSDKImageDimensions behanceSDKImageDimensions) {
        this.maxImageDimensions = behanceSDKImageDimensions;
    }

    public boolean isShowImageImageSelectionSources() {
        return this.showImageSelectionSources;
    }

    public void hideImageSelectionSources() {
        this.showImageSelectionSources = false;
    }

    public long getMinImageSizeInBytes() {
        return this.minImageSizeInBytes;
    }

    public void setMinImageSizeInBytes(long j) {
        this.minImageSizeInBytes = j;
    }

    public long getMaxImageSizeInBytes() {
        return this.maxImageSizeInBytes;
    }

    public void setMaxImageSizeInBytes(long j) {
        this.maxImageSizeInBytes = j;
    }

    public ArrayList<String> getAllowedFileExtensions() {
        return this.allowedFileExtensions;
    }

    public void setAllowedFileExtensions(ArrayList<String> arrayList) {
        this.allowedFileExtensions = arrayList;
    }

    public void addAllowedFileExtension(String str) {
        if (str != null && str.length() > 0) {
            if (this.allowedFileExtensions == null) {
                this.allowedFileExtensions = new ArrayList<>();
            }
            this.allowedFileExtensions.add(str);
        }
    }

    public ArrayList<String> getProhibitedFileExtensions() {
        return this.prohibitedFileExtensions;
    }

    public void setProhibitedFileExtensions(ArrayList<String> arrayList) {
        this.prohibitedFileExtensions = arrayList;
    }

    public void addProhibitedFileExtension(String str) {
        if (str != null && str.length() > 0) {
            if (this.prohibitedFileExtensions == null) {
                this.prohibitedFileExtensions = new ArrayList<>();
            }
            this.prohibitedFileExtensions.add(str);
        }
    }

    public void setCCAssetBrowserDisabled(boolean z) {
        this.ccAssetBrowserDisabled = z;
    }

    public boolean isCCAssetBrowserDisabled() {
        return this.ccAssetBrowserDisabled;
    }
}
