package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadCreateNewFolderMgr {
    public static final String PARENT_COLLECTION_KEY = "parent";

    public static DialogFragment getCreateNewFolderDialogFragment(AdobeAssetFolder adobeAssetFolder) {
        AdobeUploadCreateNewFolderDialogFragment adobeUploadCreateNewFolderDialogFragment = new AdobeUploadCreateNewFolderDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(PARENT_COLLECTION_KEY, adobeAssetFolder.getHref().toString());
        adobeUploadCreateNewFolderDialogFragment.setArguments(bundle);
        return adobeUploadCreateNewFolderDialogFragment;
    }
}
