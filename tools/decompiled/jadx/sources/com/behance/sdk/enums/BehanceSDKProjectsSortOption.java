package com.behance.sdk.enums;

import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKProjectsSortOption {
    FEATURED_DATE("featured_date", R.string.bsdk_sort_option_featured, 0),
    APPRECIATIONS("appreciations", R.string.bsdk_sort_option_most_appreciated, 1),
    VIEWS("views", R.string.bsdk_sort_option_most_viewed, 2),
    COMMENTS("comments", R.string.bsdk_sort_option_most_discussed, 3),
    PUBLISHED_DATE("published_date", R.string.bsdk_sort_option_most_recent, 4),
    RELEVANCE("relevance", R.string.bsdk_sort_option_most_relevant, 5);

    String actualValue;
    private int displayresource;
    int index;

    BehanceSDKProjectsSortOption(String str, int i, int i2) {
        this.actualValue = str;
        this.displayresource = i;
        this.index = i2;
    }

    public static BehanceSDKProjectsSortOption fromName(String str) {
        for (BehanceSDKProjectsSortOption behanceSDKProjectsSortOption : values()) {
            if (behanceSDKProjectsSortOption.name().equalsIgnoreCase(str)) {
                return behanceSDKProjectsSortOption;
            }
        }
        return null;
    }

    public static BehanceSDKProjectsSortOption fromName(String str, BehanceSDKProjectsSortOption behanceSDKProjectsSortOption) {
        BehanceSDKProjectsSortOption behanceSDKProjectsSortOptionFromName = fromName(str);
        return behanceSDKProjectsSortOptionFromName != null ? behanceSDKProjectsSortOptionFromName : behanceSDKProjectsSortOption;
    }

    public static BehanceSDKProjectsSortOption fromIndex(int i) {
        for (BehanceSDKProjectsSortOption behanceSDKProjectsSortOption : values()) {
            if (behanceSDKProjectsSortOption.getIndex() == i) {
                return behanceSDKProjectsSortOption;
            }
        }
        return FEATURED_DATE;
    }

    public int getDisplayresource() {
        return this.displayresource;
    }

    public int getIndex() {
        return this.index;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.actualValue;
    }
}
