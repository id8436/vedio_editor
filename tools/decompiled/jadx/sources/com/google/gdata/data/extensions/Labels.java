package com.google.gdata.data.extensions;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.DocumentQuery;
import com.google.gdata.data.Category;
import com.google.gdata.data.docs.ViewedCategory;
import com.google.gdata.data.gtt.HiddenCategory;
import com.google.gdata.data.photos.GphotoAccess;

/* JADX INFO: loaded from: classes3.dex */
public final class Labels {
    private static final String gLabels = "http://schemas.google.com/g/2005/labels";
    public static final Category STARRED = newLabel(DocumentQuery.STARRED_SORT);
    public static final Category TRASHED = newLabel("trashed");
    public static final Category PUBLISHED = newLabel(BehanceSDKPublishConstants.KEY_PUBLISHED);
    public static final Category PRIVATE = newLabel(GphotoAccess.Value.PRIVATE);
    public static final Category MINE = newLabel("mine");
    public static final Category SHARED_WITH_DOMAIN = newLabel("shared-with-domain");
    public static final Category HIDDEN = newLabel(HiddenCategory.Label.HIDDEN);
    public static final Category VIEWED = newLabel(ViewedCategory.Label.VIEWED);
    public static final Category RESTRICTED_DOWNLOAD = newLabel("restricted-download");

    private Labels() {
    }

    private static Category newLabel(String str) {
        return new Category(gLabels, "http://schemas.google.com/g/2005/labels#" + str, str);
    }
}
