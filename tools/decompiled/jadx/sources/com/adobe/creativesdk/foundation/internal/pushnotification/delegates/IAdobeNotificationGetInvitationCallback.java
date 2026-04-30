package com.adobe.creativesdk.foundation.internal.pushnotification.delegates;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInvite;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNotificationGetInvitationCallback {
    void onError();

    void onSuccess(ArrayList<AdobeCollaborationInvite> arrayList);
}
