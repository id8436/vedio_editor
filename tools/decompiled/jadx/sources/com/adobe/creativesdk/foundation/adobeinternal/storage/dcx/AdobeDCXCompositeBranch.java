package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.util.Log;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXCompositeBranch implements AdobeDCXBranchCoreProtocol {
    static final /* synthetic */ boolean $assertionsDisabled;
    private AdobeDCXBranchCore _core;
    private HashSet<AdobeDCXElement> _pendingElements = new HashSet<>();

    static {
        $assertionsDisabled = !AdobeDCXCompositeBranch.class.desiredAssertionStatus();
    }

    AdobeDCXCompositeBranch(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest) {
        this._core = new AdobeDCXBranchCore(adobeDCXComposite, adobeDCXManifest, null, this);
    }

    public AdobeDCXManifest getManifest() {
        return this._core.getManifest();
    }

    void setManifest(AdobeDCXManifest adobeDCXManifest) {
        synchronized (this) {
            this._core.setManifest(adobeDCXManifest);
            this._core.setMetadata(null);
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXBranchCoreProtocol
    public AdobeDCXBranchCore getBranchCore() {
        return this._core;
    }

    AdobeDCXComposite getWeakComposite() {
        return this._core.getWeakComposite();
    }

    void setWeakComposite(AdobeDCXComposite adobeDCXComposite) {
        this._core.setWeakComposite(adobeDCXComposite);
    }

    static AdobeDCXCompositeBranch getCompositeBranchWithComposite(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest) {
        return new AdobeDCXCompositeBranch(adobeDCXComposite, adobeDCXManifest);
    }

    public AdobeDCXCompositeMutableBranch getMutableCopy() {
        AdobeDCXManifest adobeDCXManifest;
        AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch = null;
        try {
            adobeDCXManifest = new AdobeDCXManifest(this._core.getManifest().getLocalData());
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXCompositeBranch.class.getSimpleName(), null, e2);
            adobeDCXManifest = null;
        }
        if (adobeDCXManifest != null) {
            adobeDCXCompositeMutableBranch = new AdobeDCXCompositeMutableBranch(getWeakComposite(), adobeDCXManifest);
            if (this._core.getMetadata() != null) {
                AdobeDCXMutableMetadata mutableCopy = this._core.getMetadata().getMutableCopy();
                mutableCopy.setManifest(adobeDCXManifest);
                adobeDCXCompositeMutableBranch.setMetadata(mutableCopy);
            }
        }
        return adobeDCXCompositeMutableBranch;
    }

    public AdobeDCXMetadata getMetadata() {
        AdobeDCXComponent metadataComponentInBranchOrElement;
        if (this._core.getMetadata() == null && (metadataComponentInBranchOrElement = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(this)) != null) {
            try {
                this._core.setMetadata(new AdobeDCXMutableMetadata(this, metadataComponentInBranchOrElement));
            } catch (Exception e2) {
                String absolutePath = metadataComponentInBranchOrElement.getAbsolutePath();
                AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeBranch.getMetadata", "componentPath =" + absolutePath);
                AdobeLogger.log(Level.ERROR, "AdobeDCXCompositeBranch.getMetadata", e2.getMessage(), e2);
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "compositeBranch-getMetadata", "metadata object creation fail " + Log.getStackTraceString(e2), absolutePath);
            }
        }
        return this._core.getMetadata();
    }

    AdobeDCXMetadata getLoadedMetadata() {
        return this._core.getMetadata();
    }

    boolean isMetadataModified() {
        if (this._core.getMetadata() != null && this._core.getMetadata().isDirty()) {
            return true;
        }
        return AdobeDCXMetadata.getMetadataComponentInBranchOrElement(this).getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified);
    }

    void setMetadata(AdobeDCXMetadata adobeDCXMetadata) {
        this._core.setMetadata(adobeDCXMetadata);
        if (adobeDCXMetadata != null) {
            adobeDCXMetadata.markAsCompositeMetadata();
        }
    }

    @Deprecated
    public AdobeDCXMetadata getMetadataForElement(AdobeDCXManifestNode adobeDCXManifestNode) {
        return this._core.getMetadataForElement(adobeDCXManifestNode);
    }

    public AdobeDCXMetadata getMetadataForElementNode(AdobeDCXNode adobeDCXNode) {
        return this._core.getMetadataForElementNode(adobeDCXNode);
    }

    public String getName() {
        return this._core.getName();
    }

    public String getType() {
        return this._core.getType();
    }

    public String getCompositeState() {
        return this._core.getCompositeState();
    }

    public String getCompositeArchivalState() {
        return this._core.getCompositeArchivalState();
    }

    public final JSONObject getLinks() {
        return this._core.getLinks();
    }

    public String getEtag() {
        return this._core.getEtag();
    }

    public String getVersion() {
        return this._core.getVersion();
    }

    public AdobeDCXManifestNode getRootNode() {
        return this._core.getRoot().getMutableManifestNode();
    }

    public AdobeDCXNode getRoot() {
        return this._core.getRoot();
    }

    public final Object get(String str) {
        return this._core.get(str);
    }

    @Deprecated
    public List<AdobeDCXComponent> getComponentsOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        return this._core.getComponentsOf(adobeDCXManifestNode);
    }

    public List<AdobeDCXComponent> getComponentsOfNode(AdobeDCXNode adobeDCXNode) {
        return this._core.getComponentsOfNode(adobeDCXNode);
    }

    public AdobeDCXComponent getComponentWithId(String str) {
        return this._core.getComponentWithId(str);
    }

    public AdobeDCXComponent getComponentWithAbsolutePath(String str) {
        return this._core.getComponentWithAbsolutePath(str);
    }

    @Deprecated
    public AdobeDCXManifestNode findParentOfComponent(AdobeDCXComponent adobeDCXComponent) {
        return this._core.findParentOfComponent(adobeDCXComponent);
    }

    public AdobeDCXNode findParentNodeOfComponent(AdobeDCXComponent adobeDCXComponent) {
        return this._core.findParentNodeOfComponent(adobeDCXComponent);
    }

    public List<AdobeDCXComponent> getAllComponents() {
        return this._core.getAllComponents();
    }

    boolean isComponentUnmanaged(AdobeDCXComponent adobeDCXComponent) {
        return this._core.isComponentUnmanaged(adobeDCXComponent);
    }

    @Deprecated
    public List<AdobeDCXManifestNode> getChildrenOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        return this._core.getChildrenOf(adobeDCXManifestNode);
    }

    public List<AdobeDCXNode> getChildrenOfNode(AdobeDCXNode adobeDCXNode) {
        return this._core.getChildrenOfNode(adobeDCXNode);
    }

    @Deprecated
    public AdobeDCXManifestNode getChildWithId(String str) {
        return this._core.getChildWithId(str);
    }

    public AdobeDCXNode getNodeWithId(String str) {
        return this._core.getNodeWithId(str);
    }

    @Deprecated
    public AdobeDCXManifestNode getChildWithAbsolutePath(String str) {
        return this._core.getChildWithAbsolutePath(str);
    }

    public AdobeDCXNode getNodeWithAbsolutePath(String str) {
        return this._core.getNodeWithAbsolutePath(str);
    }

    @Deprecated
    public AdobeDCXManifestNode findParentOfChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        return this._core.findParentOfChild(adobeDCXManifestNode, adobeDCXIndexWrapper);
    }

    public AdobeDCXNode findParentOfNode(AdobeDCXNode adobeDCXNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        return this._core.findParentOfNode(adobeDCXNode, adobeDCXIndexWrapper);
    }

    public String getPathForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return this._core.getPathForComponent(adobeDCXComponent);
    }

    public AdobeDCXMetadata getMetadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return this._core.getMetadataForComponent(adobeDCXComponent);
    }

    public AdobeDCXMutableMetadata getOrCreateMetadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return this._core.getOrCreateMetadataForComponent(adobeDCXComponent);
    }

    public Object getRenditionAtNode(AdobeDCXNode adobeDCXNode, int i, int i2, List<String> list) {
        return this._core.getRenditionAtNode(adobeDCXNode, i, i2, list);
    }

    void addElementToPendingElements(AdobeDCXElement adobeDCXElement) {
        if (!$assertionsDisabled && adobeDCXElement == null) {
            throw new AssertionError("Element must not be null.");
        }
        this._pendingElements.add(adobeDCXElement);
    }

    void removeElementFromPendingElements(AdobeDCXElement adobeDCXElement) {
        if (!$assertionsDisabled && adobeDCXElement == null) {
            throw new AssertionError("Element must not be null.");
        }
        this._pendingElements.remove(adobeDCXElement);
    }

    Set<AdobeDCXElement> getPendingElements() {
        return (HashSet) this._pendingElements.clone();
    }
}
