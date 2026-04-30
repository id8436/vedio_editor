package com.adobe.creativesdk.foundation.internal.collaboration.delegates;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeCollaborationGetInvitesCallBack extends IAdobeCollaborationErrorCallback {
    void onComplete(List<AdobeCollaborationInvite> list);
}
