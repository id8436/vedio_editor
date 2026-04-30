package com.behance.sdk.asynctask.params;

import com.behance.sdk.enums.BehanceSDKCuratedGalleryType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private static final int DEFAULT_PAGE_SIZE = 24;
    private int curatedGalleryId;
    private BehanceSDKCuratedGalleryType galleryType;
    private int pageNumber;
    private int pageSize;

    public int getPageNumber() {
        return this.pageNumber;
    }

    public void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public int getPageSize() {
        if (this.pageSize > 0) {
            return this.pageSize;
        }
        return 24;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }

    public int getCuratedGalleryId() {
        return this.curatedGalleryId;
    }

    public void setCuratedGalleryId(int i) {
        this.curatedGalleryId = i;
    }

    public BehanceSDKCuratedGalleryType getGalleryType() {
        return this.galleryType;
    }

    public void setGalleryType(BehanceSDKCuratedGalleryType behanceSDKCuratedGalleryType) {
        this.galleryType = behanceSDKCuratedGalleryType;
    }
}
