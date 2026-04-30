package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobePublicationRecordProtocol {
    JSONObject getDataForCreation() throws AdobeCommunityException;

    JSONObject getDataForUpdate() throws AdobeCommunityException;

    boolean stageResourcesAt(String str) throws AdobeCommunityException;
}
