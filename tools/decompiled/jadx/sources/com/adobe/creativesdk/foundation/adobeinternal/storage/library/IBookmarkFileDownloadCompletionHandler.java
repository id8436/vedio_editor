package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IBookmarkFileDownloadCompletionHandler extends IAdobeGenericErrorCallback {
    void onComplete(ArrayList<AdobeLibraryBookmark> arrayList);
}
