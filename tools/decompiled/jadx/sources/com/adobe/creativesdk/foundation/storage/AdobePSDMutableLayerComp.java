package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDMutableLayerComp extends AdobePSDLayerComp {
    private final AdobeDCXMutableManifestNode mutableNode;

    AdobePSDMutableLayerComp(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        super(adobeDCXMutableManifestNode);
        this.mutableNode = adobeDCXMutableManifestNode;
    }

    public AdobePSDMutableLayerComp(String str) {
        this(AdobeDCXMutableManifestNode.createNodeWithName(str));
    }

    public void setName(String str) {
        this.mutableNode.setName(str);
    }
}
