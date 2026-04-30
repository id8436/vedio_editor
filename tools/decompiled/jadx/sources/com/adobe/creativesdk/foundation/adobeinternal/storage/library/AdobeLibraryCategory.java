package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryCategory {
    private AdobeDCXManifestNode mNode;

    public AdobeLibraryCategory(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.mNode = adobeDCXManifestNode;
    }

    public AdobeLibraryMutableCategory getMutableCopy() {
        return new AdobeLibraryMutableCategory(this.mNode.getMutableCopy());
    }

    public String getName() {
        return this.mNode.getName();
    }

    public String getCategoryId() {
        return this.mNode.getNodeId();
    }

    public AdobeDCXManifestNode getNode() {
        return this.mNode;
    }
}
