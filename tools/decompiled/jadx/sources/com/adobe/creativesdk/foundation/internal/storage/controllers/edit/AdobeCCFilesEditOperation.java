package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;

/* JADX INFO: loaded from: classes2.dex */
public enum AdobeCCFilesEditOperation {
    ADOBE_CC_FILE_EDIT_OPERATION_LINK("link"),
    ADOBE_CC_FILE_EDIT_OPERATION_RENAME("rename"),
    ADOBE_CC_FILE_EDIT_OPERATION_DELETE("delete"),
    ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE(AdobeStorageSession.AdobeStorageSessionArchiveServiceTag),
    ADOBE_CC_FILE_EDIT_OPERATION_MOVE("move"),
    ADOBE_CC_FILE_EDIT_OPERATION_COPY(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyCopy),
    ADOBE_CC_EDIT_OPERATION_COLLABORATE("collaborate");

    private String value;

    public String getString() {
        return this.value;
    }

    AdobeCCFilesEditOperation(String str) {
        this.value = str;
    }
}
