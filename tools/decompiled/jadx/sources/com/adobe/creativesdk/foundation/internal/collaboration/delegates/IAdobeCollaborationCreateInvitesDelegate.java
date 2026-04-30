package com.adobe.creativesdk.foundation.internal.collaboration.delegates;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationInviteResponse;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeCollaborationCreateInvitesDelegate extends IAdobeCollaborationErrorCallback {
    void onComplete(ArrayList<AdobeCollaborationInviteResponse> arrayList);
}
