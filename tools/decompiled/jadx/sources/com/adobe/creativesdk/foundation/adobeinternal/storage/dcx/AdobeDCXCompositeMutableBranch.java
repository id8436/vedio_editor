package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.annotation.SuppressLint;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXCompositeMutableBranch extends AdobeDCXCompositeBranch {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AdobeDCXCompositeMutableBranch.class.desiredAssertionStatus();
    }

    public boolean isDirty() {
        return getManifest() != null && getManifest().isDirty;
    }

    public void setName(String str) {
        getBranchCore().setName(str);
    }

    public void setType(String str) {
        getBranchCore().setType(str);
    }

    public void setLinks(JSONObject jSONObject) {
        getBranchCore().setLinks(jSONObject);
    }

    public void setCompositeState(String str) {
        if (AdobeDCXUtils.areStringsEqual(str, AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXCompositeMutableBranch.setCompositeState", "Marking composite for deletion " + Arrays.toString(Thread.currentThread().getStackTrace()), getManifest() != null ? getManifest().getCompositeId() : null);
        }
        getBranchCore().setCompositeState(str);
    }

    public void setCompositeArchivalState(String str) {
        if (AdobeDCXUtils.areStringsEqual(str, AdobeDCXConstants.AdobeDCXCompositeArchivalStatePending)) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXCompositeMutableBranch.setCompositeArchivalState", "Marking composite for archival " + Arrays.toString(Thread.currentThread().getStackTrace()), getManifest() != null ? getManifest().getCompositeId() : null);
        }
        getBranchCore().setCompositeArchivalState(str);
    }

    public void setEtag(String str) {
        getBranchCore().setEtag(str);
    }

    public void setValue(Object obj, String str) {
        getBranchCore().setValue(obj, str);
    }

    public void remove(String str) {
        getBranchCore().remove(str);
    }

    public void markCompositeForDeletion() {
        if (!$assertionsDisabled && getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) {
            throw new AssertionError("Composite has already been deleted from server.");
        }
        setCompositeState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
    }

    public void markCompositeForArchival() {
        if (!$assertionsDisabled && getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) {
            throw new AssertionError("Composite has already been deleted from server.");
        }
        if (!$assertionsDisabled && getCompositeState() == AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) {
            throw new AssertionError("Composite has been set for deletion from server.");
        }
        if (!$assertionsDisabled && getCompositeArchivalState() == AdobeDCXConstants.AdobeDCXCompositeArchivalStateArchived) {
            throw new AssertionError("Composite has already been archived.");
        }
        setCompositeArchivalState(AdobeDCXConstants.AdobeDCXCompositeArchivalStatePending);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, boolean z, String str7) throws AdobeDCXException {
        return getBranchCore().addComponent(str, str2, str3, str4, str5, adobeDCXManifestNode, str6, z, str7);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, boolean z, String str7) throws AdobeDCXException {
        return getBranchCore().addComponent(str, str2, str3, str4, str5, adobeDCXNode, str6, z, str7);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, String str7) throws AdobeDCXException {
        return getBranchCore().addComponent(str, str2, str3, str4, str5, adobeDCXManifestNode, str6, str7);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, String str7) throws AdobeDCXException {
        return getBranchCore().addComponent(str, str2, str3, str4, str5, adobeDCXNode, str6, str7);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z, String str2) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXManifestNode, str, z, str2);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, String str2) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXNode, str, z, str2);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, String str2) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXManifestNode, str, str2);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, String str2) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXNode, str, str2);
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str, boolean z) throws AdobeDCXException {
        return getBranchCore().updateComponent(adobeDCXComponent, str, z);
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str) throws AdobeDCXException {
        return getBranchCore().updateComponent(adobeDCXComponent, str);
    }

    @Deprecated
    public AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        return getBranchCore().moveComponent(adobeDCXComponent, adobeDCXManifestNode);
    }

    public AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return getBranchCore().moveComponent(adobeDCXComponent, adobeDCXNode);
    }

    @Deprecated
    public AdobeDCXComponent copyComponentFromBranch(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode, String str) throws AdobeDCXException {
        return getBranchCore().copyComponent(adobeDCXComponent, adobeDCXCompositeBranch, adobeDCXManifestNode, str);
    }

    public AdobeDCXComponent copyComponentFromBranchOrElement(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode, String str) throws AdobeDCXException {
        return getBranchCore().copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode, str);
    }

    @Deprecated
    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        return getBranchCore().copyComponent(adobeDCXComponent, adobeDCXCompositeBranch, adobeDCXManifestNode);
    }

    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return getBranchCore().copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode);
    }

    @Deprecated
    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeDCXException {
        return getBranchCore().replaceComponent(adobeDCXComponent, adobeDCXCompositeBranch);
    }

    public AdobeDCXComponent replaceComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) throws AdobeDCXException {
        return getBranchCore().replaceComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol);
    }

    public AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent) {
        return getBranchCore().removeComponent(adobeDCXComponent);
    }

    @Deprecated
    public AdobeDCXManifestNode updateChild(AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        return getBranchCore().updateChild(adobeDCXManifestNode);
    }

    @Deprecated
    public AdobeDCXManifestNode addChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2) throws AdobeDCXException {
        return getBranchCore().addChild(adobeDCXManifestNode, adobeDCXManifestNode2);
    }

    public AdobeDCXNode appendNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return getBranchCore().appendNode(str, str2, str3, str4, adobeDCXNode);
    }

    @Deprecated
    public AdobeDCXManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        return getBranchCore().insertChild(adobeDCXManifestNode, adobeDCXManifestNode2, j);
    }

    public AdobeDCXNode insertNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode, long j) throws AdobeDCXException {
        return getBranchCore().insertNode(str, str2, str3, str4, adobeDCXNode, j);
    }

    @Deprecated
    public AdobeDCXManifestNode copyChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        return getBranchCore().copyChild(adobeDCXManifestNode, adobeDCXCompositeBranch, adobeDCXManifestNode2, j);
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j) throws AdobeDCXException {
        return getBranchCore().copyNode(adobeDCXNode, adobeDCXNode2, j);
    }

    @Deprecated
    public AdobeDCXManifestNode copyChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode2, long j, String str) throws AdobeDCXException {
        return getBranchCore().copyChild(adobeDCXManifestNode, adobeDCXCompositeBranch, adobeDCXManifestNode2, j, str, null);
    }

    @Deprecated
    public AdobeDCXManifestNode copyChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode2, long j, String str, String str2) throws AdobeDCXException {
        return getBranchCore().copyChild(adobeDCXManifestNode, adobeDCXCompositeBranch, adobeDCXManifestNode2, j, str, str2);
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j, String str, String str2) throws AdobeDCXException {
        return getBranchCore().copyNode(adobeDCXNode, adobeDCXNode2, j, str, str2);
    }

    @Deprecated
    public AdobeDCXManifestNode updateChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeDCXException {
        return getBranchCore().updateChild(adobeDCXManifestNode, adobeDCXCompositeBranch);
    }

    public AdobeDCXNode replaceNode(AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return getBranchCore().replaceNode(adobeDCXNode, null, null);
    }

    @Deprecated
    public AdobeDCXManifestNode moveChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        return getBranchCore().moveChild(adobeDCXManifestNode, adobeDCXManifestNode2, j);
    }

    public AdobeDCXNode moveNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j) throws AdobeDCXException {
        return getBranchCore().moveNode(adobeDCXNode, adobeDCXNode2, j);
    }

    @Deprecated
    public AdobeDCXManifestNode removeChild(AdobeDCXManifestNode adobeDCXManifestNode) {
        return getBranchCore().removeChild(adobeDCXManifestNode);
    }

    public AdobeDCXNode removeNode(AdobeDCXNode adobeDCXNode) {
        return getBranchCore().removeNode(adobeDCXNode);
    }

    public boolean writeManifestTo(String str) throws AdobeDCXException {
        File file = new File(new File(str).getParent());
        boolean zMkdirs = !file.exists() ? file.mkdirs() : true;
        getManifest().writeToFile(str, true);
        if (zMkdirs) {
            AdobeDCXComposite weakComposite = getWeakComposite();
            if (!$assertionsDisabled && weakComposite == null) {
                throw new AssertionError("Using branch after the composite has been released");
            }
            weakComposite.requestDeletionOfUnsusedLocalFiles();
        }
        return zMkdirs;
    }

    public AdobeDCXMutableMetadata getMutableMetadata() {
        if (getMetadata() == null) {
            return null;
        }
        if (!(getMetadata() instanceof AdobeDCXMutableMetadata)) {
            setMetadata(getMetadata().getMutableCopy());
        }
        return (AdobeDCXMutableMetadata) getMetadata();
    }

    @Deprecated
    public AdobeDCXMutableMetadata getOrCreateMetadataForElement(AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        AdobeDCXMetadata metadataForElement = getMetadataForElement(adobeDCXManifestNode);
        if (metadataForElement == null) {
            metadataForElement = new AdobeDCXMetadata(adobeDCXManifestNode);
            metadataForElement.saveAsComponentOf(adobeDCXManifestNode, this, "META-INF/metadata.xml");
        }
        return metadataForElement.getMutableCopy();
    }

    public AdobeDCXMutableMetadata getOrCreateMetadataForElementNode(AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        AdobeDCXMetadata metadataForElementNode = getMetadataForElementNode(adobeDCXNode);
        if (metadataForElementNode == null) {
            metadataForElementNode = new AdobeDCXMetadata(adobeDCXNode);
            metadataForElementNode.saveAsComponentOfNode(adobeDCXNode, this, "META-INF/metadata.xml");
        }
        return metadataForElementNode.getMutableCopy();
    }

    public boolean copyMetadataFrom(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch2) throws AdobeDCXException {
        AdobeDCXComponent adobeDCXComponent;
        String pathForComponent;
        AdobeDCXComposite weakComposite = getWeakComposite();
        if (weakComposite == null) {
            return false;
        }
        AdobeDCXComponent metadataComponentInBranch = AdobeDCXMetadata.getMetadataComponentInBranch(adobeDCXCompositeBranch2);
        if (!$assertionsDisabled && metadataComponentInBranch == null) {
            throw new AssertionError("Should only be called when there is flavored metadata to merge.");
        }
        if (metadataComponentInBranch == null) {
            return false;
        }
        AdobeDCXComponent metadataComponentInBranch2 = AdobeDCXMetadata.getMetadataComponentInBranch(weakComposite.getPulled());
        if (!$assertionsDisabled && weakComposite.getPulled() == null) {
            throw new AssertionError("Should only be called when merging a pulled composite.");
        }
        if (!$assertionsDisabled && metadataComponentInBranch2 == null) {
            throw new AssertionError("Should only be called when there is pulled metadata to merge");
        }
        if (metadataComponentInBranch2 == null) {
            return false;
        }
        AdobeDCXComponent metadataComponentInBranch3 = AdobeDCXMetadata.getMetadataComponentInBranch(adobeDCXCompositeBranch);
        AdobeDCXComponent mutableCopy = AdobeDCXMetadata.getMetadataComponentInBranch(this).getMutableCopy();
        AdobeDCXMetadata loadedMetadata = adobeDCXCompositeBranch.getLoadedMetadata();
        if (loadedMetadata != null) {
            if (loadedMetadata.saveInCompositeBranch(this) == null) {
                return false;
            }
            AdobeDCXMutableComponent mutableCopy2 = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(this).getMutableCopy();
            if (mutableCopy2.getComponentId().equals(metadataComponentInBranch2.getComponentId())) {
                mutableCopy2.setEtag(metadataComponentInBranch2.getEtag());
            }
            if (updateComponent(mutableCopy2, null, false) == null) {
                return false;
            }
        } else {
            if (mutableCopy == null || metadataComponentInBranch3 == null || mutableCopy.getComponentId().equals(metadataComponentInBranch3.getComponentId()) || mutableCopy.getComponentId().equals(metadataComponentInBranch2.getComponentId())) {
                adobeDCXComponent = mutableCopy;
            } else {
                removeComponent(mutableCopy);
                adobeDCXComponent = null;
            }
            if (adobeDCXComponent == null || adobeDCXCompositeBranch.getEtag().equals(adobeDCXCompositeBranch2.getEtag())) {
                if (adobeDCXComponent != null) {
                    if (replaceComponent(metadataComponentInBranch3, adobeDCXCompositeBranch) == null) {
                        return false;
                    }
                } else if (copyComponent(metadataComponentInBranch3, adobeDCXCompositeBranch, (AdobeDCXManifestNode) null) == null) {
                    return false;
                }
            } else {
                try {
                    pathForComponent = adobeDCXCompositeBranch.getPathForComponent(metadataComponentInBranch3);
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXCompositeMutableBranch.class.getSimpleName(), null, e2);
                    pathForComponent = null;
                }
                if (pathForComponent == null) {
                    return false;
                }
                if (updateComponent(adobeDCXComponent, pathForComponent, true) == null) {
                    return false;
                }
            }
        }
        setMetadata(null);
        return true;
    }

    public boolean updateMetadata(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return getBranchCore().updateMetadata(adobeDCXMetadata, adobeDCXComponent);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXManifestNode, str, z, adobeDCXMetadata);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        return getBranchCore().addComponent(adobeDCXComponent, adobeDCXNode, str, z, adobeDCXMetadata);
    }

    private AdobeDCXElement getElementWithNode(AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (adobeDCXNode.isElement()) {
            AdobeDCXComposite weakComposite = getWeakComposite();
            AdobeDCXElement adobeDCXElement = new AdobeDCXElement(adobeDCXNode, weakComposite);
            addElementToPendingElements(adobeDCXElement);
            weakComposite.addManifestToActiveSnapshots(adobeDCXElement.getManifest());
            return adobeDCXElement;
        }
        new AdobeStorageErrorUtils();
        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorNodeIsNotElement, String.format("Node with ID %s is not an element (i.e. is missing the 'name' or 'type' properties)", adobeDCXNode.getNodeId()));
    }

    public AdobeDCXElement getElementWithAbsolutePath(String str) throws AdobeDCXException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        AdobeDCXNode nodeWithAbsolutePath = getNodeWithAbsolutePath(str);
        if (nodeWithAbsolutePath != null) {
            return getElementWithNode(nodeWithAbsolutePath);
        }
        AdobeLogger.log(Level.ERROR, "AdobeDCXCompositeMutableBranch#getElementWithAbsolutePath", String.format("An element with absolute path %s cannot be located.", str));
        return null;
    }

    public AdobeDCXElement getElementWithId(String str) throws AdobeDCXException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        AdobeDCXNode nodeWithId = getNodeWithId(str);
        if (nodeWithId != null) {
            return getElementWithNode(nodeWithId);
        }
        AdobeLogger.log(Level.ERROR, "AdobeDCXCompositeMutableBranch#getElementWithId", String.format("An element with ID %s cannot be located.", str));
        return null;
    }

    public AdobeDCXElement appendElement(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        List<AdobeDCXNode> childrenOfNode;
        if (adobeDCXNode != null) {
            childrenOfNode = getChildrenOfNode(adobeDCXNode);
        } else {
            childrenOfNode = getChildrenOfNode(getRoot());
        }
        return insertElement(str, str2, str3, str4, adobeDCXNode, childrenOfNode.size());
    }

    public AdobeDCXElement insertElement(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode, long j) throws AdobeDCXException {
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str3 == null) {
            throw new AssertionError();
        }
        AdobeDCXNode adobeDCXNodeInsertNode = insertNode(str, str2, str3, str4, adobeDCXNode, j);
        if (adobeDCXNodeInsertNode == null) {
            return null;
        }
        return getElementWithNode(adobeDCXNodeInsertNode);
    }

    public AdobeDCXNode replaceElement(AdobeDCXElement adobeDCXElement) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXElement == null) {
            throw new AssertionError();
        }
        AdobeDCXNode nodeWithId = getNodeWithId(adobeDCXElement.getRoot().getNodeId());
        if (nodeWithId == null) {
            new AdobeStorageErrorUtils();
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorUnknownId, String.format("Node corresponding to element %s cannot be found.", adobeDCXElement.getRoot().getNodeId()));
        }
        AdobeDCXNode adobeDCXNodeReplaceNode = getBranchCore().replaceNode(adobeDCXElement.getRoot(), nodeWithId.getPath(), adobeDCXElement.getRoot().getNodeId());
        if (adobeDCXNodeReplaceNode != null) {
            adobeDCXElement.getManifest().isDirty = false;
        }
        return adobeDCXNodeReplaceNode;
    }

    public AdobeDCXNode copyElement(AdobeDCXElement adobeDCXElement, AdobeDCXNode adobeDCXNode, long j, String str, String str2) throws AdobeDCXException {
        if ($assertionsDisabled || adobeDCXElement != null) {
            return getBranchCore().copyNode(adobeDCXElement.getRoot(), adobeDCXNode, j, str, str2);
        }
        throw new AssertionError();
    }

    public boolean abandonElement(AdobeDCXElement adobeDCXElement) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXElement == null) {
            throw new AssertionError();
        }
        if (!getPendingElements().contains(adobeDCXElement)) {
            new AdobeStorageErrorUtils();
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorElementNotPendingOnBranch, String.format("Element %s is not a currently pending element on this branch.", adobeDCXElement.getRoot().getNodeId()));
        }
        if (getNodeWithId(adobeDCXElement.getRoot().getNodeId()) == null) {
            new AdobeStorageErrorUtils();
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorUnknownId, String.format("Node corresponding to element %s cannot be found.", adobeDCXElement.getRoot().getNodeId()));
        }
        AdobeDCXComposite weakComposite = adobeDCXElement.getBranchCore().getWeakComposite();
        disconnectElement(adobeDCXElement);
        weakComposite.requestDeletionOfUnsusedLocalFiles();
        return true;
    }

    private void disconnectElement(AdobeDCXElement adobeDCXElement) {
        AdobeDCXComposite weakComposite = adobeDCXElement.getBranchCore().getWeakComposite();
        removeElementFromPendingElements(adobeDCXElement);
        weakComposite.removeManifestFromActiveSnapshots(adobeDCXElement.getManifest());
        adobeDCXElement.disconnectFromBranch();
    }

    @Deprecated
    AdobeDCXCompositeMutableBranch(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest) {
        super(adobeDCXComposite, adobeDCXManifest);
    }

    @Deprecated
    static AdobeDCXCompositeMutableBranch createCompositeBranchWithComposite(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest) {
        return new AdobeDCXCompositeMutableBranch(adobeDCXComposite, adobeDCXManifest);
    }

    @Deprecated
    void updateMetadataForCopyWithCompositeId(String str) {
        if (getMetadata() != null) {
            setMetadata(new AdobeDCXMutableMetadata(getMutableMetadata(), "copied", str));
        }
    }

    @Deprecated
    public AdobeDCXComponent markComponentForDeletion(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return getManifest().markComponentForDeletion(adobeDCXComponent);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, boolean z) throws AdobeDCXException {
        if (!$assertionsDisabled && str5 == null) {
            throw new AssertionError("Param 'path' must not be null.");
        }
        AdobeDCXMutableComponent adobeDCXMutableComponent = new AdobeDCXMutableComponent(str2 == null ? AdobeStorageUtils.generateUuid() : str2, str5, str, str3, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
        adobeDCXMutableComponent.setRelationship(str4);
        return internalAddComponent(adobeDCXMutableComponent, adobeDCXManifestNode, str6, null, null, z);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXManifestNode, str, z, (String) null);
    }

    @SuppressLint({"Assert"})
    @Deprecated
    private AdobeDCXComponent internalAddComponent(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, String str2, String str3, boolean z) throws AdobeDCXException {
        String newPathOfComponent;
        AdobeDCXComponent adobeDCXComponentAddComponent = null;
        if (!$assertionsDisabled && getManifest() == null) {
            throw new AssertionError("Manifest not loaded");
        }
        if (!$assertionsDisabled && str != null && str3 != null) {
            throw new AssertionError("Param 'sourceFile' and UCID both cannot be non-null.");
        }
        if (str3 == null && !$assertionsDisabled && str == null && str2 == null) {
            throw new AssertionError("sourceFile and sourceHref must not both be null");
        }
        AdobeDCXComposite weakComposite = getWeakComposite();
        if (!$assertionsDisabled && weakComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if (str != null) {
            newPathOfComponent = weakComposite.getLocalStorage().getNewPathOfComponent(adobeDCXMutableComponent, getManifest(), weakComposite);
            if (newPathOfComponent != null) {
                File file = new File(new File(newPathOfComponent).getParent());
                if (!file.exists()) {
                    file.mkdirs();
                }
                String strNormalizeNoEndSeparator = FilenameUtils.normalizeNoEndSeparator(str);
                String strNormalizeNoEndSeparator2 = FilenameUtils.normalizeNoEndSeparator(newPathOfComponent);
                File file2 = new File(strNormalizeNoEndSeparator);
                File file3 = new File(strNormalizeNoEndSeparator2);
                if (!strNormalizeNoEndSeparator.equals(strNormalizeNoEndSeparator2)) {
                    try {
                        if (z) {
                            FileUtils.copyFile(file2, file3);
                        } else {
                            FileUtils.moveFile(file2, file3);
                            if (!$assertionsDisabled && file2.exists()) {
                                throw new AssertionError();
                            }
                        }
                    } catch (IOException e2) {
                        throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalStoragePath, null, e2);
                    }
                }
                if (weakComposite.getLocalStorage().updateComponent(adobeDCXMutableComponent, getManifest(), weakComposite, newPathOfComponent)) {
                }
            }
            return adobeDCXComponentAddComponent;
        }
        newPathOfComponent = null;
        if (getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
            setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateModified);
        }
        if (adobeDCXManifestNode == null) {
            adobeDCXComponentAddComponent = getManifest().addComponent(adobeDCXMutableComponent, null, null);
        } else {
            adobeDCXComponentAddComponent = getManifest().addComponent(adobeDCXMutableComponent, (AdobeDCXManifest) null, adobeDCXManifestNode, (String) null);
        }
        if (adobeDCXComponentAddComponent != null) {
            getManifest().setSourceHref(str2, adobeDCXMutableComponent);
            getManifest().setUCIDForComponent(str3, adobeDCXMutableComponent);
        } else if (newPathOfComponent != null && weakComposite.localComponentAssetsAreImmutable()) {
            File file4 = new File(newPathOfComponent);
            if (z) {
                file4.delete();
            }
            weakComposite.getLocalStorage().didRemoveComponent(adobeDCXMutableComponent, getManifest());
        }
        return adobeDCXComponentAddComponent;
    }
}
