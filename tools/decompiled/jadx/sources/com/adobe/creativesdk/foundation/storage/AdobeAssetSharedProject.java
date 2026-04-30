package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSharedPage;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetSharedProject extends AdobeAssetPackagePages {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AdobeAssetSharedProject.class.desiredAssertionStatus();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackage
    @Deprecated
    public void loadMetadata(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        super.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetSharedProject.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                AdobeDCXComponent adobeDCXComponent;
                AdobeDCXComponent adobeDCXComponent2;
                AdobeDCXManifest manifest = this.getManifest();
                List<AdobeDCXComponent> components = manifest != null ? manifest.getComponents() : new ArrayList();
                List<AdobeDCXManifestNode> children = manifest != null ? manifest.getChildren() : new ArrayList();
                ArrayList<AdobeAssetFile> arrayList = new ArrayList<>();
                for (AdobeDCXComponent adobeDCXComponent3 : components) {
                    if (adobeDCXComponent3.getRelationship() != null && ((adobeDCXComponent3.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && AdobeAssetSharedProject.this.getRasterTypes().contains(adobeDCXComponent3.getType())) || (adobeDCXComponent3.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && adobeDCXComponent3.getName().equals("preview")))) {
                        adobeDCXComponent = adobeDCXComponent3;
                        break;
                    }
                }
                adobeDCXComponent = null;
                if (adobeDCXComponent != null) {
                    arrayList.add(new AdobeAssetSharedPage(manifest.getName() != null ? manifest.getName() : "Creation", 0, adobeDCXComponent, this));
                }
                Collections.sort(children, new Comparator<AdobeDCXManifestNode>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetSharedProject.1.1
                    @Override // java.util.Comparator
                    public int compare(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2) {
                        return Long.valueOf(adobeDCXManifestNode.getAbsoluteIndex()).compareTo(Long.valueOf(adobeDCXManifestNode2.getAbsoluteIndex()));
                    }
                });
                for (AdobeDCXManifestNode adobeDCXManifestNode : children) {
                    for (AdobeDCXComponent adobeDCXComponent4 : manifest.getComponentsOfChild(adobeDCXManifestNode)) {
                        if (adobeDCXComponent4.getRelationship() != null && ((adobeDCXComponent4.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && AdobeAssetSharedProject.this.getRasterTypes().contains(adobeDCXComponent4.getType())) || adobeDCXComponent4.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition))) {
                            adobeDCXComponent2 = adobeDCXComponent4;
                            break;
                        }
                    }
                    adobeDCXComponent2 = null;
                    if (adobeDCXComponent2 != null) {
                        arrayList.add(new AdobeAssetSharedPage(adobeDCXManifestNode.getPath() != null ? adobeDCXManifestNode.getPath() : "Creation", ((int) adobeDCXManifestNode.getAbsoluteIndex()) + 1, adobeDCXComponent2, this));
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
        if (obj instanceof AdobeAssetSharedProject) {
            return super.equals(obj);
        }
        return false;
    }

    protected AdobeAssetSharedProject(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        super(adobeStorageResourceCollection, adobeStorageResourceCollection2);
    }

    protected AdobeAssetSharedProject() {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages, com.adobe.creativesdk.foundation.storage.AdobeAssetPackage, com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
