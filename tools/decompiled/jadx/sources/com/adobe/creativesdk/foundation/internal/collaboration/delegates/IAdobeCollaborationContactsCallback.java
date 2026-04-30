package com.adobe.creativesdk.foundation.internal.collaboration.delegates;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaboratorContact;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeCollaborationContactsCallback extends IAdobeCollaborationErrorCallback {
    void onComplete(List<AdobeCollaboratorContact> list);
}
