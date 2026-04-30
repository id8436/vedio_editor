package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import java.util.ArrayList;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryPublicCollection extends AdobeLibraryCollection {
    boolean _isSyncing = false;

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public boolean initWithRootFolder(String str, AdobeCloud adobeCloud, AdobeCloudServiceType adobeCloudServiceType, String str2, String str3) throws AdobeLibraryException {
        return super.initWithRootFolder(str, adobeCloud, adobeCloudServiceType, str2, str3);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public boolean isPublic() {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public AdobeLibraryComposite getDefaultLibrary() {
        return null;
    }

    static AdobeLibraryComposite createlibraryWithName(String str) {
        return null;
    }

    boolean deleteLibrary() {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public boolean isSyncing() {
        return this._isSyncing;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public void syncCompleted() {
        synchronized (this) {
            this._isSyncing = false;
            ((AdobeLibraryManagerInternal) this._manager).syncCompletedForCollection(this);
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public boolean sync() {
        return sync(false);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    boolean sync(boolean z) {
        synchronized (this) {
            if (this._syncManager == null) {
                return false;
            }
            if (!this._isSyncing) {
                this._isSyncing = true;
                ArrayList<AdobeLibraryComposite> libraries = getLibraries();
                int size = libraries.size();
                ((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).syncStartedForCollection(this);
                if (size > 0) {
                    for (final AdobeLibraryComposite adobeLibraryComposite : libraries) {
                        this._syncManager.hasLibraryChangedOnServer(adobeLibraryComposite, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(Boolean bool) {
                                if (bool.booleanValue()) {
                                    AdobeLibraryPublicCollection.this._syncManager.queueLibraryForPull(adobeLibraryComposite.getLibraryId());
                                }
                                if (!AdobeLibraryPublicCollection.this._syncManager.isSyncing()) {
                                    AdobeLibraryPublicCollection.this._syncManager.doSync(true);
                                }
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException) {
                            }
                        }, null);
                    }
                } else {
                    this._syncManager.doSync(true);
                }
            }
            return true;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    public boolean canLoadLibraryWithURL(String str) {
        String string = ((AdobeCloudServiceSession) this._syncManager.serviceSession()).getServiceForSchemaId("libraries").getBaseURL().toString();
        if (!string.endsWith(URIUtil.SLASH)) {
            string = string + URIUtil.SLASH;
        }
        return str.startsWith(string);
    }

    public void addLibraryWithId(String str) {
        if (this._syncManager != null) {
            this._syncManager.queueLibraryForPull(str);
        }
    }

    protected void addLibrary(AdobeLibraryCompositeInternal adobeLibraryCompositeInternal) {
        adobeLibraryCompositeInternal.setCollaborationRole(AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER);
        try {
            adobeLibraryCompositeInternal.getDcxComposite().commitChanges();
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
        }
        super.addLibrary((AdobeLibraryComposite) adobeLibraryCompositeInternal);
    }

    boolean initalizeMonitor(boolean z) {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    void startMonitor() {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection
    void stopMonitor() {
    }
}
