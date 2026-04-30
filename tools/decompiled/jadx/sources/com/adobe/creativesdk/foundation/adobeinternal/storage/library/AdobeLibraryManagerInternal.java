package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDownloadPolicyType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryManagerInternal extends AdobeLibraryManager {
    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void bookmarksChanged() {
        super.bookmarksChanged();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void reportSyncError(AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
        super.reportSyncError(adobeLibraryComposite, adobeCSDKException);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public boolean shouldSyncOnCommit() {
        return super.shouldSyncOnCommit();
    }

    public String getRootLibraryCollectionsURL() {
        return this.mRootLibraryCollectionsURL;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void syncStartedForCollection(AdobeLibraryCollection adobeLibraryCollection) {
        super.syncStartedForCollection(adobeLibraryCollection);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite) {
        super.sendDelegateMessage(str, adobeLibraryComposite);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void sendDelegateMessage(String str, String str2) {
        super.sendDelegateMessage(str, str2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void bookmarksFileSynced(boolean z) {
        super.bookmarksFileSynced(z);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void handleDeleteLibraryWithId(String str, AdobeLibraryCollection adobeLibraryCollection) {
        super.handleDeleteLibraryWithId(str, adobeLibraryCollection);
    }

    public boolean shouldincludeBookmarkedLibraries() {
        return this.includeBookmarkedLibraries;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public boolean canSync() {
        return super.canSync();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void onNetworkStatus(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        super.onNetworkStatus(adobeNetworkStatusCode);
    }

    public long getAutoSyncInterval() {
        return this.mAutoSyncInterval;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite, String str2, String str3) {
        super.sendDelegateMessage(str, adobeLibraryComposite, str2, str3);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
        super.sendDelegateMessage(str, adobeLibraryComposite, adobeCSDKException);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void handleLibraryReadOnlyConversion(AdobeLibraryComposite adobeLibraryComposite) {
        super.handleLibraryReadOnlyConversion(adobeLibraryComposite);
    }

    public HashMap<String, ArrayList<Integer>> getRenditionSizes() {
        return this.mRenditionSizes;
    }

    public AdobeLibraryDownloadPolicyType getAutoDownloadPolicy() {
        return this.mAutoDownloadPolicy;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public boolean shouldAutoDownloadType(String str) {
        return super.shouldAutoDownloadType(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public boolean canSyncWithError(ArrayList<AdobeLibraryException> arrayList) {
        return super.canSyncWithError(arrayList);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public boolean shouldAutoSyncDownloadAssets() {
        return super.shouldAutoSyncDownloadAssets();
    }

    public boolean getUnInitialized() {
        return this.mUnInitialized;
    }

    public void setSyncSuspendedDueToAuthenticationError(boolean z) {
        this.mSyncSuspendedDueToAuthenticationError = z;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public String getBookmarlURL(String str) {
        return super.getBookmarlURL(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager
    public void syncCompletedForCollection(AdobeLibraryCollection adobeLibraryCollection) {
        super.syncCompletedForCollection(adobeLibraryCollection);
    }
}
