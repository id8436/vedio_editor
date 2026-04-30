package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSketchbookPage;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetSketchbook extends AdobeAssetPackagePages {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AdobeAssetSketchbook.class.desiredAssertionStatus();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage
    @Deprecated
    public void loadMetadata(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        super.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                AdobeDCXComponent next;
                final Map<String, AdobeDCXManifestNode> allChildren = this.getManifest() != null ? this.getManifest().getAllChildren() : null;
                ArrayList<AdobeAssetFile> arrayList = new ArrayList<>();
                if (allChildren != null) {
                    AdobeDCXMutableManifestNode rootNode = this.getManifest().getRootNode();
                    ArrayList arrayList2 = new ArrayList(allChildren.keySet());
                    Collections.sort(arrayList2, new Comparator<String>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook.1.1
                        @Override // java.util.Comparator
                        public int compare(String str, String str2) {
                            return Long.valueOf(((AdobeDCXManifestNode) allChildren.get(str)).getAbsoluteIndex()).compareTo(Long.valueOf(((AdobeDCXManifestNode) allChildren.get(str2)).getAbsoluteIndex()));
                        }
                    });
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        AdobeDCXManifestNode adobeDCXManifestNode = allChildren.get((String) it.next());
                        if (!adobeDCXManifestNode.getNodeId().equals(rootNode.getNodeId())) {
                            Iterator<AdobeDCXComponent> it2 = this.getManifest().getComponentsOfChild(adobeDCXManifestNode).iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it2.next();
                                if (next.getRelationship() != null && ((next.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && AdobeAssetSketchbook.this.getRasterTypes().contains(next.getType())) || next.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition))) {
                                    break;
                                }
                            }
                            if (next != null) {
                                arrayList.add(new AdobeAssetSketchbookPage(adobeDCXManifestNode.getName(), ((int) adobeDCXManifestNode.getAbsoluteIndex()) + 1, next, this));
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.pages = arrayList;
                }
                if (iAdobeRequestCompletionCallback != null) {
                    iAdobeRequestCompletionCallback.onCompletion();
                }
            }
        }, iAdobeGenericErrorCallback);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages, com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetSketchbook) {
            return super.equals(obj);
        }
        return false;
    }

    protected AdobeAssetSketchbook(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    protected AdobeAssetSketchbook() {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages, com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
