package com.adobe.creativesdk.foundation.internal.collaboration;

import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationGetCollaborationCallback;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetFolderCollaboration {
    private String folderHref;

    public AdobeAssetFolderCollaboration(String str) {
        this.folderHref = str;
    }

    public void getCollaboration(IAdobeCollaborationGetCollaborationCallback iAdobeCollaborationGetCollaborationCallback) {
        if (this.folderHref != null) {
            AdobeCollaborationSession.getSharedSession().getCollaboration(this.folderHref, iAdobeCollaborationGetCollaborationCallback);
        }
    }

    public AdobeAssetFolder getCollaboratedFolder() {
        return getFolderFromHref();
    }

    private AdobeAssetFolder getFolderFromHref() {
        URI uri;
        if (this.folderHref == null || this.folderHref.length() <= 0) {
            return null;
        }
        try {
            uri = new URI(hrefByRemovingPathExtension());
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            uri = null;
        }
        return AdobeAssetFolder.getFolderFromHref(uri);
    }

    private String hrefByRemovingPathExtension() {
        return this.folderHref.startsWith("/files") ? this.folderHref.substring(6) : this.folderHref;
    }
}
