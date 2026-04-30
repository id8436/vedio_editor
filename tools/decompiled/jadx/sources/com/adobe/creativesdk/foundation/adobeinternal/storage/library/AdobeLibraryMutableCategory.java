package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryMutableCategory extends AdobeLibraryCategory {
    AdobeDCXMutableManifestNode mMutableNode;

    public AdobeLibraryMutableCategory(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        super(adobeDCXMutableManifestNode);
        this.mMutableNode = adobeDCXMutableManifestNode;
    }

    private static AdobeDCXMutableManifestNode createManifestNodeWithName(String str) {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(str);
        adobeDCXMutableManifestNodeCreateNodeWithName.setNodeId(UUID.randomUUID().toString());
        return adobeDCXMutableManifestNodeCreateNodeWithName;
    }

    public static AdobeLibraryMutableCategory categoryWithName(String str) {
        return new AdobeLibraryMutableCategory(createManifestNodeWithName(str));
    }

    public void setName(String str) {
        this.mMutableNode.setName(str);
    }
}
