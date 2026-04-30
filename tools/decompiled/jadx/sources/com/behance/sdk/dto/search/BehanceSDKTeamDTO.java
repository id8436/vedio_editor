package com.behance.sdk.dto.search;

import com.behance.sdk.util.BehanceSDKSerializableSparseArray;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTeamDTO implements Serializable {
    public static final int ALL_COMPANIES_ID = -1;
    public static final int PROFILE_IMAGE_SIZE_100 = 100;
    public static final int PROFILE_IMAGE_SIZE_115 = 115;
    public static final int PROFILE_IMAGE_SIZE_138 = 138;
    public static final int PROFILE_IMAGE_SIZE_230 = 230;
    public static final int PROFILE_IMAGE_SIZE_276 = 276;
    public static final int PROFILE_IMAGE_SIZE_50 = 50;
    private String displayName;
    private int id;
    private String name;
    private BehanceSDKSerializableSparseArray<BehanceSDKImageDTO> profileImagesArray;
    private String slug;
    private String url;

    private BehanceSDKSerializableSparseArray<BehanceSDKImageDTO> getProfileImages() {
        if (this.profileImagesArray == null) {
            this.profileImagesArray = new BehanceSDKSerializableSparseArray<>();
        }
        return this.profileImagesArray;
    }

    public void addProfileImage(int i, String str) {
        getProfileImages().put(i, BehanceSDKImageDTO.getNewInstance(str));
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getSlug() {
        return this.slug;
    }

    public void setSlug(String str) {
        this.slug = str;
    }

    public BehanceSDKImageDTO findProfileImageInIncreasingSizeOrder(int i) {
        BehanceSDKImageDTO behanceSDKImageDTO = getProfileImages().get(i);
        if (behanceSDKImageDTO == null && i <= 50) {
            behanceSDKImageDTO = getProfileImages().get(50);
        }
        if (behanceSDKImageDTO == null && i <= 100) {
            behanceSDKImageDTO = getProfileImages().get(100);
        }
        if (behanceSDKImageDTO == null && i <= 115) {
            behanceSDKImageDTO = getProfileImages().get(115);
        }
        if (behanceSDKImageDTO == null && i <= 138) {
            behanceSDKImageDTO = getProfileImages().get(138);
        }
        if (behanceSDKImageDTO == null && i <= 230) {
            behanceSDKImageDTO = getProfileImages().get(230);
        }
        if (behanceSDKImageDTO == null) {
            return getProfileImages().get(276);
        }
        return behanceSDKImageDTO;
    }
}
