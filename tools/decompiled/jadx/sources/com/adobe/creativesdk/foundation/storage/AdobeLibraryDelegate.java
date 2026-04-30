package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdobeLibraryDelegate {
    public Handler delegateHandler = null;
    public boolean syncOnCommit = false;
    public boolean autoSyncDownloadedAssets = true;
    public ArrayList<String> assetDownloadLibraryFilter = null;

    protected abstract void elementWasAdded(AdobeLibraryComposite adobeLibraryComposite, String str);

    protected abstract void elementWasRemoved(AdobeLibraryComposite adobeLibraryComposite, String str);

    protected abstract void elementWasUpdated(AdobeLibraryComposite adobeLibraryComposite, String str);

    protected abstract boolean libraryPreDelete(String str);

    protected abstract String libraryPreReadabilityChange(String str);

    protected abstract void libraryWasAdded(AdobeLibraryComposite adobeLibraryComposite);

    protected abstract void libraryWasDeleted(String str);

    protected abstract void libraryWasUnshared(String str);

    protected abstract void libraryWasUpdated(AdobeLibraryComposite adobeLibraryComposite);

    protected abstract void onSyncError(AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException);

    protected abstract void onSyncProgress(AdobeLibraryComposite adobeLibraryComposite, long j);

    protected abstract void syncAvailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode);

    protected abstract void syncFinished();

    protected abstract void syncStarted();

    protected abstract void syncUnavailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode);
}
