package com.behance.sdk.dto.project;

import android.util.SparseArray;
import com.behance.sdk.dto.search.BehanceSDKImageDTO;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectCoversDTO implements Serializable {
    private static final int NUMBER_OF_COVERIMAGES = 4;
    public static final String ORIGINAL = "original";
    public static final int SIZE_115 = 115;
    public static final int SIZE_202 = 202;
    public static final int SIZE_230 = 230;
    public static final int SIZE_404 = 404;
    private static final long serialVersionUID = -7479303355724199312L;
    private SparseArray<BehanceSDKImageDTO> coverImages = new SparseArray<>(4);
    private String originalUrl;

    public void addCoverImages(int i, String str) {
        if (str != null && str.length() > 0) {
            this.coverImages.put(i, BehanceSDKImageDTO.getNewInstance(str));
        }
    }

    public void setOriginalCoverImage(String str) {
        this.originalUrl = str;
    }

    public String getOriginalCoverImage() {
        return this.originalUrl;
    }

    private BehanceSDKImageDTO findCoverImageInIncreasingSizeOrder(int i) {
        BehanceSDKImageDTO behanceSDKImageDTO = this.coverImages.get(i);
        if (behanceSDKImageDTO == null && i <= 115) {
            return this.coverImages.get(115);
        }
        if (behanceSDKImageDTO == null && i <= 202) {
            return this.coverImages.get(202);
        }
        if (behanceSDKImageDTO == null && i <= 230) {
            return this.coverImages.get(230);
        }
        if (behanceSDKImageDTO == null) {
            return this.coverImages.get(404);
        }
        return behanceSDKImageDTO;
    }

    private BehanceSDKImageDTO findCoverImageInDecreasingSizeOrder(int i) {
        BehanceSDKImageDTO behanceSDKImageDTO = this.coverImages.get(i);
        if (behanceSDKImageDTO == null && i > 230) {
            behanceSDKImageDTO = this.coverImages.get(404);
        }
        if (behanceSDKImageDTO == null && i > 202) {
            behanceSDKImageDTO = this.coverImages.get(230);
        }
        if (behanceSDKImageDTO == null && i > 115) {
            behanceSDKImageDTO = this.coverImages.get(202);
        }
        if (behanceSDKImageDTO == null) {
            return this.coverImages.get(115);
        }
        return behanceSDKImageDTO;
    }

    public BehanceSDKImageDTO findCoverImageInIncreasingSizeOrderAndFallback(int i) {
        BehanceSDKImageDTO behanceSDKImageDTOFindCoverImageInIncreasingSizeOrder = findCoverImageInIncreasingSizeOrder(i);
        if (behanceSDKImageDTOFindCoverImageInIncreasingSizeOrder == null) {
            return findCoverImageInDecreasingSizeOrder(i);
        }
        return behanceSDKImageDTOFindCoverImageInIncreasingSizeOrder;
    }
}
