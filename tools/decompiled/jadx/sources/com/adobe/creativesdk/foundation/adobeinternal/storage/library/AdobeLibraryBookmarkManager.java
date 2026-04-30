package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.util.Log;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryBookmarkManager {
    public ArrayList<AdobeLibraryBookmark> bookmarks;
    ArrayList<AdobeLibraryBookmark> bookmarksBase;
    AdobeStorageResourceItem bookmarksResource;
    AdobeLibraryCollection collection;
    boolean syncModified;
    public static String BOOKMARK = AdobeLibraryCompositeConstantsInternal.AdobeLibraryBookmarkBookmarksKey;
    private static String AdobeLibraryBookmarksFileName = "bookmarks.json";
    private static String AdobeLibraryBookmarksStoragePath = "/sync/adobe-libraries/";
    private String AdobeLibraryBookmarkIkey = "id";
    private String AdobeLibraryBookmarkURLkey = "url";
    private String AdobeLibraryBookmarkBookmarksKey = AdobeLibraryCompositeConstantsInternal.AdobeLibraryBookmarkBookmarksKey;

    public AdobeLibraryBookmarkManager initWithCollection(AdobeLibraryCollection adobeLibraryCollection) {
        this.bookmarks = null;
        this.bookmarksBase = null;
        this.syncModified = false;
        this.collection = adobeLibraryCollection;
        this.bookmarksResource = AdobeStorageResourceItem.resourceFromHref(AdobeLibraryBookmarksStoragePath + AdobeLibraryBookmarksFileName);
        return this;
    }

    String getBookmarksFilePath() {
        return ((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).getRootLibraryCollectionsURL() + AdobeLibraryBookmarksFileName;
    }

    JSONObject bookmarksToDataArray(ArrayList<AdobeLibraryBookmark> arrayList) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (AdobeLibraryBookmark adobeLibraryBookmark : arrayList) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(this.AdobeLibraryBookmarkIkey, adobeLibraryBookmark.bookmaarkID);
            jSONObject2.put(this.AdobeLibraryBookmarkURLkey, adobeLibraryBookmark.url);
            jSONArray.put(jSONObject2);
        }
        jSONObject.put(this.AdobeLibraryBookmarkBookmarksKey, jSONArray);
        return jSONObject;
    }

    ArrayList<AdobeLibraryBookmark> dataArrayToBookmarks(JSONObject jSONObject) {
        JSONArray jSONArray = null;
        if (jSONObject == null) {
            return null;
        }
        ArrayList<AdobeLibraryBookmark> arrayList = new ArrayList<>();
        try {
            jSONArray = jSONObject.getJSONArray(AdobeLibraryCompositeConstantsInternal.AdobeLibraryBookmarkBookmarksKey);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add(AdobeLibraryBookmark.initWithId(jSONArray.getJSONObject(i).getString("id"), jSONArray.getJSONObject(i).getString("url")));
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        return arrayList;
    }

    AdobeLibraryBookmark bookmarkWithId(String str, ArrayList<AdobeLibraryBookmark> arrayList) {
        for (AdobeLibraryBookmark adobeLibraryBookmark : arrayList) {
            if (adobeLibraryBookmark.bookmaarkID.toLowerCase().equals(str.toLowerCase())) {
                return adobeLibraryBookmark;
            }
        }
        return null;
    }

    void saveBookmarks() {
        if (this.bookmarks != null && this.bookmarks != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("etag", this.bookmarksResource.etag);
                jSONObject.put(AdobeLibraryCompositeConstantsInternal.AdobeLibraryBookmarkBookmarksKey, bookmarksToDataArray(this.bookmarks).getJSONArray(AdobeLibraryCompositeConstantsInternal.AdobeLibraryBookmarkBookmarksKey));
                try {
                    FileWriter fileWriter = new FileWriter(getBookmarksFilePath());
                    fileWriter.write(jSONObject.toString());
                    fileWriter.flush();
                    fileWriter.close();
                } catch (IOException e2) {
                    Log.e("TAG", "Error in Writing: " + e2.getLocalizedMessage());
                }
            } catch (JSONException e3) {
            }
        }
    }

    void loadBookmarks() {
        try {
            JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(readFromFile(getBookmarksFilePath()));
            if (jSONObjectJSONObjectWithData != null) {
                this.bookmarks = dataArrayToBookmarks(jSONObjectJSONObjectWithData);
                this.bookmarksBase = dataArrayToBookmarks(jSONObjectJSONObjectWithData);
                try {
                    this.bookmarksResource.etag = jSONObjectJSONObjectWithData.getString("etag");
                    this.bookmarksResource.setData(jSONObjectJSONObjectWithData.toString().getBytes());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (IOException e3) {
            AdobeLogger.log(Level.DEBUG, "LoadBookmarks-Error", e3.getMessage());
        }
    }

    static String readFromFile(String str) throws IOException {
        new File(str);
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
        try {
            StringBuilder sb = new StringBuilder();
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                sb.append(line + '\n');
            }
            return sb.toString();
        } finally {
            bufferedReader.close();
        }
    }

    void deleteBookmarks() {
        File file = new File(getBookmarksFilePath());
        if (file.isDirectory()) {
            for (String str : file.list()) {
                new File(file, str).delete();
            }
        }
        this.bookmarksBase = null;
        this.bookmarks = null;
        this.bookmarksResource = AdobeStorageResourceItem.resourceFromHref(AdobeLibraryBookmarksStoragePath + AdobeLibraryBookmarksFileName);
    }

    void mergeBookmarks(ArrayList<AdobeLibraryBookmark> arrayList) {
        if (arrayList != null) {
            ArrayList<AdobeLibraryBookmark> arrayList2 = new ArrayList<>();
            Iterator<AdobeLibraryBookmark> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next());
            }
            if (this.bookmarksBase != null) {
                for (AdobeLibraryBookmark adobeLibraryBookmark : arrayList) {
                    AdobeLibraryBookmark adobeLibraryBookmarkBookmarkWithId = bookmarkWithId(adobeLibraryBookmark.bookmaarkID, this.bookmarks);
                    AdobeLibraryBookmark adobeLibraryBookmarkBookmarkWithId2 = bookmarkWithId(adobeLibraryBookmark.bookmaarkID, this.bookmarksBase);
                    if (adobeLibraryBookmarkBookmarkWithId == null && adobeLibraryBookmarkBookmarkWithId2 != null) {
                        arrayList2.remove(adobeLibraryBookmark);
                    }
                }
            }
            this.bookmarks = arrayList2;
        }
    }

    boolean isConflictError(AdobeAssetException adobeAssetException) {
        return adobeAssetException.getErrorCode().equals(AdobeAssetErrorCode.AdobeAssetErrorConflictingChanges) || adobeAssetException.getHttpStatusCode().intValue() == 409;
    }

    AdobeNetworkHttpRequest uploadBookmarksFile(final IAdobeGenericRequestCallback iAdobeGenericRequestCallback) {
        if (this.collection._syncManager == null) {
            return null;
        }
        return ((AdobeStorageSession) this.collection._syncManager.serviceSession()).updateFile(this.bookmarksResource, false, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                iAdobeGenericRequestCallback.onCompletion(null);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                synchronized (this) {
                    if (AdobeLibraryBookmarkManager.this.isConflictError(adobeAssetException)) {
                        AdobeLibraryBookmarkManager.this.downloadBookmarksFile(new IBookmarkFileDownloadCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.1.1
                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.IBookmarkFileDownloadCompletionHandler
                            public void onComplete(ArrayList<AdobeLibraryBookmark> arrayList) {
                                AdobeLibraryBookmarkManager.this.mergeBookmarks(arrayList);
                                AdobeLibraryBookmarkManager.this.uploadBookmarksFile(iAdobeGenericRequestCallback);
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(Object obj) {
                                iAdobeGenericRequestCallback.onError(obj);
                            }
                        });
                    } else {
                        iAdobeGenericRequestCallback.onError(adobeAssetException);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    void commit(Boolean bool) {
        synchronized (this) {
            saveBookmarks();
        }
        if (bool.booleanValue()) {
            sync(new IBookmarkSyncCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.2
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.IBookmarkSyncCompletionHandler
                public void onComplete(Boolean bool2) {
                    if (bool2.booleanValue()) {
                        ((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).bookmarksChanged();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(Object obj) {
                    ((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).reportSyncError(null, (AdobeCSDKException) obj);
                }
            });
        }
    }

    public boolean removeBookmark(AdobeLibraryBookmark adobeLibraryBookmark) {
        boolean z;
        synchronized (this) {
            AdobeLibraryBookmark adobeLibraryBookmarkBookmarkWithId = bookmarkWithId(adobeLibraryBookmark.bookmaarkID, this.bookmarks);
            if (adobeLibraryBookmarkBookmarkWithId != null) {
                createBase();
                this.bookmarks.remove(adobeLibraryBookmarkBookmarkWithId);
                commit(Boolean.valueOf(((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).shouldSyncOnCommit()));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    void unsuscribeBookmark(String str) {
        ((AdobeStorageSession) this.collection._syncManager.serviceSession()).unsuscribeBookmark(AdobeStorageResourceItem.resourceFromHref("/libraries/bookmarks/" + str), new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.3
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, null);
    }

    AdobeNetworkHttpRequest downloadBookmarksFile(final IBookmarkFileDownloadCompletionHandler iBookmarkFileDownloadCompletionHandler) {
        if (this.collection._syncManager == null) {
            return null;
        }
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) this.collection._syncManager.serviceSession();
        final byte[] data = this.bookmarksResource.getData();
        return adobeStorageSession.getFile(this.bookmarksResource, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.4
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                AdobeLogger.log(Level.INFO, "BOOKMARK", " downloadBookmarksFile onComplete");
                synchronized (this) {
                    AdobeLibraryBookmarkManager.this.bookmarksResource = adobeStorageResourceItem;
                    if (adobeStorageResourceItem != null && adobeStorageResourceItem.getData() != null && adobeStorageResourceItem.getData().length > 2 && !Arrays.equals(data, adobeStorageResourceItem.getData())) {
                        try {
                            JSONObject jSONObjectJSONObjectWithData = AdobeStorageUtils.JSONObjectWithData(new String(adobeStorageResourceItem.getData(), "UTF-8"));
                            AdobeLogger.log(Level.INFO, "BOOKMARK", jSONObjectJSONObjectWithData.toString());
                            AdobeLibraryBookmarkManager.this.syncModified = true;
                            AdobeLogger.log(Level.INFO, "BOOKMARK", " downloadBookmarksFile onComplete123");
                            iBookmarkFileDownloadCompletionHandler.onComplete(AdobeLibraryBookmarkManager.this.dataArrayToBookmarks(jSONObjectJSONObjectWithData));
                        } catch (UnsupportedEncodingException e2) {
                            iBookmarkFileDownloadCompletionHandler.onError(e2);
                        }
                    } else {
                        AdobeLogger.log(Level.INFO, "BOOKMARK", " downloadBookmarksFile onComplete12345");
                        iBookmarkFileDownloadCompletionHandler.onComplete(null);
                    }
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                AdobeLogger.log(Level.INFO, "BOOKMARK", " downloadBookmarksFile onError");
                iBookmarkFileDownloadCompletionHandler.onError(adobeAssetException);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        }, null, null);
    }

    void createBase() {
        if (this.bookmarksBase == null) {
            this.bookmarksBase = new ArrayList<>();
            Iterator<AdobeLibraryBookmark> it = this.bookmarks.iterator();
            while (it.hasNext()) {
                this.bookmarksBase.add(it.next());
            }
        }
    }

    AdobeNetworkHttpRequest sync(final IBookmarkSyncCompletionHandler iBookmarkSyncCompletionHandler) {
        AdobeNetworkHttpRequest adobeNetworkHttpRequestDownloadBookmarksFile;
        synchronized (this) {
            if (!AdobeLibraryManager.getSharedInstance().isSyncEnabled()) {
                adobeNetworkHttpRequestDownloadBookmarksFile = null;
            } else {
                this.syncModified = false;
                if (this.bookmarks != null) {
                    try {
                        this.bookmarksResource.setData(bookmarksToDataArray(this.bookmarks).toString().getBytes("utf-8"));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                if (this.bookmarksBase != null) {
                    adobeNetworkHttpRequestDownloadBookmarksFile = uploadBookmarksFile(new IAdobeGenericRequestCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.5
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Object obj) {
                            AdobeLibraryBookmarkManager.this.bookmarksBase = null;
                            AdobeLibraryBookmarkManager.this.commit(false);
                            iBookmarkSyncCompletionHandler.onComplete(Boolean.valueOf(AdobeLibraryBookmarkManager.this.syncModified));
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(Object obj) {
                            iBookmarkSyncCompletionHandler.onError(obj);
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    });
                } else {
                    adobeNetworkHttpRequestDownloadBookmarksFile = downloadBookmarksFile(new IBookmarkFileDownloadCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmarkManager.6
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.IBookmarkFileDownloadCompletionHandler
                        public void onComplete(ArrayList<AdobeLibraryBookmark> arrayList) {
                            if (arrayList != null) {
                                AdobeLibraryBookmarkManager.this.bookmarksBase = null;
                                AdobeLibraryBookmarkManager.this.bookmarks = arrayList;
                                AdobeLibraryBookmarkManager.this.commit(false);
                            }
                            iBookmarkSyncCompletionHandler.onComplete(Boolean.valueOf(AdobeLibraryBookmarkManager.this.syncModified));
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(Object obj) {
                            iBookmarkSyncCompletionHandler.onError(obj);
                        }
                    });
                }
            }
        }
        return adobeNetworkHttpRequestDownloadBookmarksFile;
    }

    void load() {
        synchronized (this) {
            loadBookmarks();
        }
    }
}
