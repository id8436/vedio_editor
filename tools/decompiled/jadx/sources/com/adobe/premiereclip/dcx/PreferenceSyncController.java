package com.adobe.premiereclip.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.sync.SyncController;
import com.adobe.sync.database.PreferenceCompositeLoader;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PreferenceSyncController extends SyncController {
    public PreferenceSyncController(String str, SyncController.ISyncControllerInterface iSyncControllerInterface, String str2, String str3, String str4, boolean z, Handler handler) {
        super(str, iSyncControllerInterface, str2, str3, str4, z, handler);
    }

    @Override // com.adobe.sync.SyncController
    protected void populateCompositeLocalPathMap(String str) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            ArrayList<AdobeDCXComposite> arrayList = new ArrayList<>();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    try {
                        String fileNameFromPath = getFileNameFromPath(file2.getPath());
                        AdobeDCXComposite adobeDCXCompositeLoadComposite = fileNameFromPath.equals("preferences") ? PreferenceCompositeLoader.getInstance().loadComposite(fileNameFromPath, file2.getPath(), null) : null;
                        if (adobeDCXCompositeLoadComposite != null) {
                            arrayList.add(adobeDCXCompositeLoadComposite);
                            this.mCompositeIdMap.put(adobeDCXCompositeLoadComposite.getCompositeId(), file2.getPath());
                        }
                    } catch (Exception e2) {
                        logMessage(e2.getMessage());
                    }
                }
            }
            logMessage("SyncController scanLocalCompositesInPath " + (this.mDCXSyncController.scanLocalComposites(arrayList) ? "passed" : "failed"));
        }
    }

    @Override // com.adobe.sync.SyncController
    protected void initializeCompositeLoader() {
        PreferenceCompositeLoader.getInstance().initialize(this.mRootDirectory, this.mPulledProjectDirectory, this.mDeletedProjectDirectory, this.mSyncGroupName, this.mDCXSyncController);
    }

    @Override // com.adobe.sync.SyncController
    public AdobeDCXComposite loadComposite(String str, String str2, String str3) throws AdobeDCXException {
        return PreferenceCompositeLoader.getInstance().loadComposite(str, str2, str3);
    }
}
