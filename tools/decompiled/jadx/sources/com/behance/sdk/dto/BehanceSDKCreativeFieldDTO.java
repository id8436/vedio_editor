package com.behance.sdk.dto;

import com.behance.sdk.enums.BehanceSDKCreativeFieldCategory;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKCreativeFieldDTO implements Serializable {
    public static final String ALL_CREATIVE_FIELDS_ID = "ALL_CREATIVE_FIELDS_ID";
    public static final String ALL_CREATIVE_FIELDS_NAME = "All Creative Fields";
    private static final long serialVersionUID = 5332689791475823644L;
    private String name;
    private String id = "";
    private BehanceSDKCreativeFieldCategory category = BehanceSDKCreativeFieldCategory.NONE;

    public void setId(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public void setCategory(BehanceSDKCreativeFieldCategory behanceSDKCreativeFieldCategory) {
        this.category = behanceSDKCreativeFieldCategory;
    }

    public BehanceSDKCreativeFieldCategory getCategory() {
        return this.category;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = (BehanceSDKCreativeFieldDTO) obj;
        if (this.id != null) {
            if (!this.id.equals(behanceSDKCreativeFieldDTO.id)) {
                return false;
            }
        } else if (behanceSDKCreativeFieldDTO.id != null) {
            return false;
        }
        if (this.name != null) {
            if (!this.name.equals(behanceSDKCreativeFieldDTO.name)) {
                return false;
            }
        } else if (behanceSDKCreativeFieldDTO.name != null) {
            return false;
        }
        return this.category == behanceSDKCreativeFieldDTO.category;
    }
}
