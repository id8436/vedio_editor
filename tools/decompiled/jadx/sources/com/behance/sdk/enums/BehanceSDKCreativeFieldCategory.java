package com.behance.sdk.enums;

import android.content.Context;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKCreativeFieldCategory {
    POPULAR,
    NONE;

    public static BehanceSDKCreativeFieldCategory fromName(String str) {
        if (str != null) {
            for (BehanceSDKCreativeFieldCategory behanceSDKCreativeFieldCategory : values()) {
                if (behanceSDKCreativeFieldCategory.name().equalsIgnoreCase(str)) {
                    return behanceSDKCreativeFieldCategory;
                }
            }
        }
        return null;
    }

    public String getString(Context context) {
        switch (this) {
            case POPULAR:
                return context.getString(R.string.bsdk_addproject_creative_fields_popular_category);
            default:
                return NONE.toString();
        }
    }
}
