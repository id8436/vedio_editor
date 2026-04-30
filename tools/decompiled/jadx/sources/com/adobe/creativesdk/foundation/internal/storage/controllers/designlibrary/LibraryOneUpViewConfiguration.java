package com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class LibraryOneUpViewConfiguration {
    public static final String LIBRARY_COLLECTION_HREF_KEY = "collectionhref";
    public static final String LIBRARY_COLLECTION_PARENT_HREF_KEY = "collectionParentHref";
    public static final String START_INDEX_KEY = "startIndex";
    private String collectionHref;
    private String collectionParentHref;

    public void initializeFromBundle(Bundle bundle) {
        this.collectionHref = (String) bundle.get(LIBRARY_COLLECTION_HREF_KEY);
        this.collectionParentHref = (String) bundle.get(LIBRARY_COLLECTION_PARENT_HREF_KEY);
    }
}
