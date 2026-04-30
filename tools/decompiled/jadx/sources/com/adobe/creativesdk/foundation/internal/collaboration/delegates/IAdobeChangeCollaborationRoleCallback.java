package com.adobe.creativesdk.foundation.internal.collaboration.delegates;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRoleChangeResult;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeChangeCollaborationRoleCallback extends IAdobeCollaborationErrorCallback {
    void onComplete(AdobeCollaborationRoleChangeResult adobeCollaborationRoleChangeResult);
}
