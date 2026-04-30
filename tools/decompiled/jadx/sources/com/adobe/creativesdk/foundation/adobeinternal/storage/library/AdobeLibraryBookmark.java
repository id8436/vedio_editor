package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryBookmark {
    public String bookmaarkID;
    public String url;

    public static AdobeLibraryBookmark initWithId(String str, String str2) {
        AdobeLibraryBookmark adobeLibraryBookmark = new AdobeLibraryBookmark();
        adobeLibraryBookmark.bookmaarkID = str;
        adobeLibraryBookmark.url = str2;
        return adobeLibraryBookmark;
    }
}
