package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.xmp.XMPException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXBranchCore {
    static final /* synthetic */ boolean $assertionsDisabled;
    private AdobeDCXManifest _manifest;
    private AdobeDCXMetadata _metadata;
    private WeakReference<AdobeDCXBranchCoreProtocol> _weakBranchOrElement;
    private WeakReference<AdobeDCXComposite> _weakComposite;

    static {
        $assertionsDisabled = !AdobeDCXBranchCore.class.desiredAssertionStatus();
    }

    public AdobeDCXBranchCore(AdobeDCXComposite adobeDCXComposite, AdobeDCXManifest adobeDCXManifest, AdobeDCXMetadata adobeDCXMetadata, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) {
        this._weakComposite = new WeakReference<>(adobeDCXComposite);
        this._manifest = adobeDCXManifest;
        this._metadata = adobeDCXMetadata;
        this._weakBranchOrElement = new WeakReference<>(adobeDCXBranchCoreProtocol);
    }

    AdobeDCXMetadata getMetadata() {
        return this._metadata;
    }

    void setMetadata(AdobeDCXMetadata adobeDCXMetadata) {
        this._metadata = adobeDCXMetadata;
    }

    AdobeDCXManifest getManifest() {
        return this._manifest;
    }

    void setManifest(AdobeDCXManifest adobeDCXManifest) {
        this._manifest = adobeDCXManifest;
    }

    AdobeDCXComposite getWeakComposite() {
        return this._weakComposite.get();
    }

    void setWeakComposite(AdobeDCXComposite adobeDCXComposite) {
        this._weakComposite = new WeakReference<>(adobeDCXComposite);
    }

    public void setName(String str) {
        this._manifest.setName(str);
    }

    public void setType(String str) {
        this._manifest.setType(str);
    }

    public void setLinks(JSONObject jSONObject) {
        this._manifest.setLinks(jSONObject);
    }

    public void setCompositeState(String str) {
        this._manifest.setCompositeState(str);
    }

    public void setCompositeArchivalState(String str) {
        this._manifest.setCompositeArchivalState(str);
    }

    public void setEtag(String str) {
        this._manifest.setEtag(str);
    }

    public void setValue(Object obj, String str) {
        this._manifest.setValue(obj, str);
    }

    public void remove(String str) {
        this._manifest.remove(str);
    }

    public String getName() {
        return this._manifest.getName();
    }

    public String getType() {
        return this._manifest.getType();
    }

    public String getCompositeState() {
        return this._manifest.getCompositeState();
    }

    public String getCompositeArchivalState() {
        return this._manifest.getCompositeArchivalState();
    }

    public JSONObject getLinks() {
        return this._manifest.getLinks();
    }

    public String getEtag() {
        return this._manifest.getEtag();
    }

    public String getVersion() {
        return this._manifest.getVersion();
    }

    public AdobeDCXNode getRoot() {
        AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(this._manifest.getRootNode().getNodeId());
        dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        return dcxNodeWithId;
    }

    public Object get(String str) {
        return this._manifest.get(str);
    }

    @Deprecated
    public List<AdobeDCXComponent> getComponentsOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        return adobeDCXManifestNode == null ? this._manifest.getComponents() : this._manifest.getComponentsOfChild(adobeDCXManifestNode);
    }

    public List<AdobeDCXComponent> getComponentsOfNode(AdobeDCXNode adobeDCXNode) {
        return adobeDCXNode != null ? getComponentsOf(adobeDCXNode.getMutableManifestNode()) : getComponentsOf(null);
    }

    public AdobeDCXComponent getComponentWithId(String str) {
        return this._manifest.getAllComponents().get(str);
    }

    public AdobeDCXComponent getComponentWithAbsolutePath(String str) {
        return this._manifest.getComponentWithAbsolutePath(str);
    }

    @Deprecated
    public AdobeDCXManifestNode findParentOfComponent(AdobeDCXComponent adobeDCXComponent) {
        return this._manifest.findParentOfComponent(adobeDCXComponent);
    }

    public AdobeDCXNode findParentNodeOfComponent(AdobeDCXComponent adobeDCXComponent) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = findParentOfComponent(adobeDCXComponent);
        if (adobeDCXManifestNodeFindParentOfComponent == null) {
            return null;
        }
        AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(adobeDCXManifestNodeFindParentOfComponent.getNodeId());
        if (!$assertionsDisabled && dcxNodeWithId.getHostBranchOrElement() != null && dcxNodeWithId.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
            throw new AssertionError("Live DCXNode in manifest unexpectedly refers to a different host branch or element.");
        }
        dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        return dcxNodeWithId;
    }

    public List<AdobeDCXComponent> getAllComponents() {
        return new ArrayList(this._manifest.getAllComponents().values());
    }

    public String getPathForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        boolean zEquals = this._weakBranchOrElement.get().equals(adobeDCXComposite.getPulled());
        String pathOfComponent = adobeDCXComposite.getLocalStorage().getPathOfComponent(adobeDCXComponent, this._manifest, adobeDCXComposite, zEquals);
        if (zEquals) {
            return pathOfComponent;
        }
        if (pathOfComponent == null || !new File(pathOfComponent).exists()) {
            return null;
        }
        return pathOfComponent;
    }

    public boolean isComponentUnmanaged(AdobeDCXComponent adobeDCXComponent) {
        return (adobeDCXComponent == null || this._manifest.getUCIDOfComponent(adobeDCXComponent) == null) ? false : true;
    }

    @Deprecated
    public List<AdobeDCXManifestNode> getChildrenOf(AdobeDCXManifestNode adobeDCXManifestNode) {
        return adobeDCXManifestNode == null ? this._manifest.getChildren() : this._manifest.getChildrenOf(adobeDCXManifestNode);
    }

    public List<AdobeDCXNode> getChildrenOfNode(AdobeDCXNode adobeDCXNode) {
        List<AdobeDCXManifestNode> childrenOf = getChildrenOf(adobeDCXNode == null ? null : adobeDCXNode.getMutableManifestNode());
        ArrayList arrayList = new ArrayList(childrenOf.size());
        Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
        while (it.hasNext()) {
            AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(it.next().getNodeId());
            if (dcxNodeWithId != null) {
                if (!$assertionsDisabled && dcxNodeWithId.getHostBranchOrElement() != null && dcxNodeWithId.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
                    throw new AssertionError("Live DCXNode in manifest unexpectedly refers to a different host branch or element.");
                }
                dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
                arrayList.add(dcxNodeWithId);
            }
        }
        return arrayList;
    }

    @Deprecated
    public AdobeDCXManifestNode getChildWithId(String str) {
        return this._manifest.getAllChildren().get(str);
    }

    public AdobeDCXNode getNodeWithId(String str) {
        AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(str);
        if (!$assertionsDisabled && dcxNodeWithId != null && dcxNodeWithId.getHostBranchOrElement() != null && dcxNodeWithId.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
            throw new AssertionError("Live DCXNode in manifest unexpectedly refers to a different host branch or element.");
        }
        if (dcxNodeWithId != null) {
            dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        }
        return dcxNodeWithId;
    }

    @Deprecated
    public AdobeDCXManifestNode getChildWithAbsolutePath(String str) {
        return this._manifest.getChildWithAbsolutePath(str);
    }

    public AdobeDCXNode getNodeWithAbsolutePath(String str) {
        AdobeDCXNode dcxNodeWithAbsolutePath = this._manifest.getDcxNodeWithAbsolutePath(str);
        if (!$assertionsDisabled && dcxNodeWithAbsolutePath != null && dcxNodeWithAbsolutePath.getHostBranchOrElement() != null && dcxNodeWithAbsolutePath.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
            throw new AssertionError("Live DCXNode in manifest unexpectedly refers to a different host branch or element.");
        }
        if (dcxNodeWithAbsolutePath != null) {
            dcxNodeWithAbsolutePath.setHostBranchOrElement(this._weakBranchOrElement.get());
        }
        return dcxNodeWithAbsolutePath;
    }

    @Deprecated
    public AdobeDCXManifestNode findParentOfChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        return this._manifest.findParentOfChild(adobeDCXManifestNode, adobeDCXIndexWrapper);
    }

    public AdobeDCXNode findParentOfNode(AdobeDCXNode adobeDCXNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        if (adobeDCXNode.isRoot()) {
            return null;
        }
        AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(findParentOfChild(adobeDCXNode.getMutableManifestNode(), adobeDCXIndexWrapper).getNodeId());
        if (!$assertionsDisabled && dcxNodeWithId.getHostBranchOrElement() != null && dcxNodeWithId.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
            throw new AssertionError("Live DCXNode in manifest unexpectedly refers to a different host branch or element.");
        }
        dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        return dcxNodeWithId;
    }

    @Deprecated
    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, boolean z, String str7) throws AdobeDCXException {
        if (!$assertionsDisabled && str5 == null) {
            throw new AssertionError();
        }
        AdobeDCXMutableComponent adobeDCXMutableComponent = new AdobeDCXMutableComponent(str2 == null ? AdobeStorageUtils.generateUuid() : str2, str5, str, str3, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
        adobeDCXMutableComponent.setRelationship(str4);
        return addComponent(adobeDCXMutableComponent, adobeDCXManifestNode, str6, z, str7);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, boolean z, String str7) throws AdobeDCXException {
        return addComponent(str, str2, str3, str4, str5, adobeDCXNode == null ? null : adobeDCXNode.getMutableManifestNode(), str6, z, str7);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXManifestNode adobeDCXManifestNode, String str6, String str7) throws AdobeDCXException {
        if (!$assertionsDisabled && str5 == null) {
            throw new AssertionError();
        }
        AdobeDCXMutableComponent adobeDCXMutableComponent = new AdobeDCXMutableComponent(str2 == null ? AdobeStorageUtils.generateUuid() : str2, str5, str, str3, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
        adobeDCXMutableComponent.setRelationship(str4);
        return addComponent(adobeDCXMutableComponent, adobeDCXManifestNode, str7, str6);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, String str7) throws AdobeDCXException {
        return addComponent(str, str2, str3, str4, str5, adobeDCXNode.getMutableManifestNode(), str6, str7);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z, String str2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobeDCXComponent.getPath() == null) {
            throw new AssertionError();
        }
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
        mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
        if (mutableCopy.getComponentId() == null) {
            mutableCopy.setComponentId(AdobeStorageUtils.generateUuid());
        }
        return internalAddComponent(mutableCopy, adobeDCXManifestNode, str, z, str2, null);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, String str2) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXNode.getMutableManifestNode(), str, z, str2);
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, String str2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && adobeDCXComponent.getPath() == null) {
            throw new AssertionError();
        }
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
        mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
        if (mutableCopy.getComponentId() == null) {
            mutableCopy.setComponentId(AdobeStorageUtils.generateUuid());
        }
        return internalAddComponent(mutableCopy, adobeDCXManifestNode, null, false, str, str2);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, String str2) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXNode.getMutableManifestNode(), str, str2);
    }

    private AdobeDCXComponent internalAddComponent(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z, String str2, String str3) throws AdobeDCXException {
        String newPathOfComponent;
        AdobeDCXException adobeDCXException;
        AdobeDCXComponent adobeDCXComponentAddComponent;
        String str4;
        if (!$assertionsDisabled && this._manifest == null) {
            throw new AssertionError("Manifest must be loaded.");
        }
        if (!$assertionsDisabled && str != null && str3 != null) {
            throw new AssertionError("UCID and sourceFile both cannot be specified");
        }
        if (str3 == null && !$assertionsDisabled && str == null && str2 == null) {
            throw new AssertionError("sourceFile and sourceHref must not both be null");
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if (str != null) {
            newPathOfComponent = adobeDCXComposite.getLocalStorage().getNewPathOfComponent(adobeDCXMutableComponent, this._manifest, adobeDCXComposite);
            if (newPathOfComponent == null) {
                return null;
            }
            File file = new File(new File(newPathOfComponent).getParent());
            if (!file.exists()) {
                file.mkdirs();
            }
            String strNormalizeNoEndSeparator = FilenameUtils.normalizeNoEndSeparator(str);
            String strNormalizeNoEndSeparator2 = FilenameUtils.normalizeNoEndSeparator(newPathOfComponent);
            File file2 = new File(strNormalizeNoEndSeparator);
            File file3 = new File(strNormalizeNoEndSeparator2);
            if (!strNormalizeNoEndSeparator.equals(strNormalizeNoEndSeparator2)) {
                adobeDCXComposite.addPathToInflightLocalComponentFiles(strNormalizeNoEndSeparator2);
                try {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    if (z) {
                        FileUtils.copyInputStreamToFile(fileInputStream, file3);
                    } else {
                        FileUtils.deleteQuietly(file3);
                        FileUtils.copyInputStreamToFile(fileInputStream, file3);
                        FileUtils.deleteQuietly(file2);
                        if (!$assertionsDisabled && file2.exists()) {
                            throw new AssertionError();
                        }
                    }
                } catch (IOException e2) {
                    String str5 = "";
                    if (file2 != null && file3 != null) {
                        str5 = "srcFile:" + strNormalizeNoEndSeparator + "destFile" + strNormalizeNoEndSeparator2;
                    }
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "internalAddComponent", "copy/move failed-reason:" + e2.getMessage(), str5);
                    adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator2);
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFileIO, "Copy/Move failed: internalAddComponent", e2);
                }
            }
            if (!adobeDCXComposite.getLocalStorage().updateComponent(adobeDCXMutableComponent, this._manifest, adobeDCXComposite, newPathOfComponent)) {
                adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator2);
                return null;
            }
            adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator2);
        } else {
            newPathOfComponent = null;
        }
        try {
            if (adobeDCXManifestNode == null) {
                adobeDCXComponentAddComponent = this._manifest.addComponent(adobeDCXMutableComponent, null, null);
            } else {
                adobeDCXComponentAddComponent = this._manifest.addComponent(adobeDCXMutableComponent, (AdobeDCXManifest) null, adobeDCXManifestNode, (String) null);
            }
            adobeDCXException = null;
        } catch (AdobeDCXException e3) {
            adobeDCXException = e3;
            adobeDCXComponentAddComponent = null;
        }
        if (adobeDCXComponentAddComponent != null) {
            this._manifest.setSourceHref(str2, adobeDCXMutableComponent);
            this._manifest.setUCIDForComponent(str3, adobeDCXMutableComponent);
            return adobeDCXComponentAddComponent;
        }
        if (newPathOfComponent != null && adobeDCXComposite.localComponentAssetsAreImmutable()) {
            if (z) {
                new File(newPathOfComponent).delete();
            } else {
                try {
                    FileUtils.moveFile(new File(newPathOfComponent), new File(str));
                } catch (IOException e4) {
                    if (str == null || newPathOfComponent == null) {
                        str4 = "";
                    } else {
                        str4 = "srcFile:" + str + "destFile:" + newPathOfComponent;
                    }
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "internalAddComponent", "moveFile failed-reason:" + e4.getMessage(), str4);
                    AdobeLogger.log(Level.DEBUG, AdobeDCXBranchCore.class.getSimpleName(), null, e4);
                }
            }
            adobeDCXComposite.getLocalStorage().didRemoveComponent(adobeDCXMutableComponent, this._manifest);
            throw adobeDCXException;
        }
        throw adobeDCXException;
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str, boolean z) throws AdobeDCXException {
        return updateComponent(adobeDCXComponent, str, z, null);
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str) throws AdobeDCXException {
        return updateComponent(adobeDCXComponent, null, false, str);
    }

    public AdobeDCXComponent replaceComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXBranchCoreProtocol == null) {
            throw new AssertionError("Parameter branchOrElement shouldn't be null.");
        }
        if (!$assertionsDisabled && !(adobeDCXBranchCoreProtocol instanceof AdobeDCXElement) && !(adobeDCXBranchCoreProtocol instanceof AdobeDCXCompositeBranch)) {
            throw new AssertionError("branchOrElement must be of type AdobeDCXCompositeBranch or AdobeDCXElement");
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite adobeDCXComposite2 = adobeDCXBranchCoreProtocol.getBranchCore()._weakComposite.get();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if ($assertionsDisabled || adobeDCXComposite2 != null) {
            return adobeDCXComposite.addComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol.getBranchCore()._manifest, adobeDCXComposite2, null, this._manifest, true, null);
        }
        throw new AssertionError("Using 'from' branch after its composite has been released");
    }

    private AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str, boolean z, String str2) throws AdobeDCXException {
        boolean zEquals;
        if (!$assertionsDisabled && this._manifest == null) {
            throw new AssertionError("Manifest not loaded");
        }
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be null");
        }
        if (!$assertionsDisabled && adobeDCXComponent.getComponentId() == null) {
            throw new AssertionError("ComponentId must not be null");
        }
        if (!$assertionsDisabled && str != null && str2 != null) {
            throw new AssertionError("Both sourceFile and UCID cannot be valid");
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        boolean z2 = this._manifest.getUCIDOfComponent(adobeDCXComponent) == null;
        AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getClass().equals(AdobeDCXMutableComponent.class) ? (AdobeDCXMutableComponent) adobeDCXComponent : adobeDCXComponent.getMutableCopy();
        String newPathOfComponent = null;
        String pathOfComponent = (adobeDCXComposite.localComponentAssetsAreImmutable() && z2) ? adobeDCXComposite.getLocalStorage().getPathOfComponent(adobeDCXComponent, this._manifest, adobeDCXComposite, false) : null;
        String sourceHrefOfComponent = this._manifest.getSourceHrefOfComponent(adobeDCXComponent);
        String strNormalizeNoEndSeparator = null;
        if (str != null || str2 != null) {
            if (str != null) {
                newPathOfComponent = adobeDCXComposite.getLocalStorage().getNewPathOfComponent(adobeDCXComponent, this._manifest, adobeDCXComposite);
                if (newPathOfComponent == null) {
                    return null;
                }
                File file = new File(AdobeDCXUtils.stringByDeletingLastPathComponent(newPathOfComponent));
                if (!file.exists()) {
                    file.mkdirs();
                }
                String strNormalizeNoEndSeparator2 = FilenameUtils.normalizeNoEndSeparator(str);
                strNormalizeNoEndSeparator = FilenameUtils.normalizeNoEndSeparator(newPathOfComponent);
                File file2 = new File(strNormalizeNoEndSeparator2);
                File file3 = new File(strNormalizeNoEndSeparator);
                if (!strNormalizeNoEndSeparator2.equals(strNormalizeNoEndSeparator)) {
                    adobeDCXComposite.addPathToInflightLocalComponentFiles(strNormalizeNoEndSeparator);
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        if (z) {
                            FileUtils.copyInputStreamToFile(fileInputStream, file3);
                        } else {
                            FileUtils.deleteQuietly(file3);
                            FileUtils.copyInputStreamToFile(fileInputStream, file3);
                            FileUtils.deleteQuietly(file2);
                            if (!$assertionsDisabled && file2.exists()) {
                                throw new AssertionError();
                            }
                        }
                        if (mutableCopy.getState() != null && mutableCopy.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                            mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
                        }
                    } catch (IOException e2) {
                        String str3 = "";
                        if (str != null && newPathOfComponent != null) {
                            str3 = "srcFile:" + strNormalizeNoEndSeparator2 + "destFile:" + strNormalizeNoEndSeparator;
                        }
                        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "updateComponent", "copy/move/delete failed-reason:" + e2.getMessage(), str3);
                        adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator);
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXCompositeMutaleBranch.updateComponentInBranchOrElement", e2.getMessage(), e2);
                        return null;
                    }
                }
            } else {
                mutableCopy.setLength(0L);
                if (mutableCopy.getState() != null && mutableCopy.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                    mutableCopy.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
                }
            }
            if (!adobeDCXComposite.getLocalStorage().updateComponent(mutableCopy, this._manifest, adobeDCXComposite, newPathOfComponent)) {
                if (strNormalizeNoEndSeparator != null) {
                    adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator);
                }
                return null;
            }
            if (strNormalizeNoEndSeparator != null) {
                adobeDCXComposite.removePathFromInflightLocalComponentFiles(strNormalizeNoEndSeparator);
            }
            this._manifest.setUCIDForComponent(str2, mutableCopy);
            this._manifest.setSourceHref(null, mutableCopy);
        }
        try {
            return this._manifest.updateComponent(mutableCopy);
        } catch (AdobeDCXException e3) {
            if (newPathOfComponent != null) {
                if (adobeDCXComposite.localComponentAssetsAreImmutable()) {
                    if (pathOfComponent != null) {
                        adobeDCXComposite.getLocalStorage().updateComponent(adobeDCXComponent.getMutableCopy(), this._manifest, adobeDCXComposite, pathOfComponent);
                    }
                    String pathOfComponent2 = adobeDCXComposite.getLocalStorage().getPathOfComponent(adobeDCXComponent, this._manifest, adobeDCXComposite, false);
                    if (pathOfComponent == null) {
                        zEquals = pathOfComponent2 == null;
                    } else {
                        zEquals = pathOfComponent.equals(pathOfComponent2);
                    }
                    if (pathOfComponent2 == null) {
                        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "updateComponent", "manifest_update_comp failed ", "compositeID:" + adobeDCXComposite.getCompositeId() + "componentID" + adobeDCXComponent.getComponentId() + "final path:null reverted:" + zEquals);
                    } else {
                        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "updateComponent", "manifest_update_comp failed ", "compositeID:" + adobeDCXComposite.getCompositeId() + "componentID" + adobeDCXComponent.getComponentId() + "final path:" + pathOfComponent2 + " reverted:" + zEquals);
                    }
                }
                if (sourceHrefOfComponent != null) {
                    this._manifest.setSourceHref(sourceHrefOfComponent, adobeDCXComponent);
                }
            }
            throw e3;
        }
    }

    @Deprecated
    public AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be null");
        }
        if ($assertionsDisabled || adobeDCXComponent.getComponentId() != null) {
            return this._manifest.moveComponent(adobeDCXComponent, adobeDCXManifestNode);
        }
        throw new AssertionError("ComponentId must not be null");
    }

    public AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be null");
        }
        if ($assertionsDisabled || adobeDCXComponent.getComponentId() != null) {
            return moveComponent(adobeDCXComponent, adobeDCXNode.getMutableManifestNode());
        }
        throw new AssertionError("ComponentId must not be null");
    }

    @Deprecated
    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        return copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXManifestNode, (String) null);
    }

    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode == null ? null : adobeDCXNode.getMutableManifestNode());
    }

    @Deprecated
    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXManifestNode adobeDCXManifestNode, String str) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXBranchCoreProtocol == null) {
            throw new AssertionError("Parameter branchOrElement shouldn't be null.");
        }
        if (!$assertionsDisabled && !(adobeDCXBranchCoreProtocol instanceof AdobeDCXElement) && !(adobeDCXBranchCoreProtocol instanceof AdobeDCXCompositeBranch)) {
            throw new AssertionError("branchOrElement must be of type AdobeDCXCompositeBranch or AdobeDCXElement");
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite adobeDCXComposite2 = adobeDCXBranchCoreProtocol.getBranchCore()._weakComposite.get();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if ($assertionsDisabled || adobeDCXComposite2 != null) {
            return adobeDCXComposite.addComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol.getBranchCore()._manifest, adobeDCXComposite2, adobeDCXManifestNode, this._manifest, false, str);
        }
        throw new AssertionError("Using 'from' branch after its composite has been released");
    }

    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode, String str) throws AdobeDCXException {
        return copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode == null ? null : adobeDCXNode.getMutableManifestNode(), str);
    }

    public AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent) {
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Parameter component must not be null");
        }
        if (!$assertionsDisabled && adobeDCXComponent.getComponentId() == null) {
            throw new AssertionError("ComponentId must not be null");
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        if ($assertionsDisabled || adobeDCXComposite != null) {
            return adobeDCXComposite.removeComponent(adobeDCXComponent, this._manifest);
        }
        throw new AssertionError("Using branch after the composite has been released");
    }

    @Deprecated
    public AdobeDCXMutableManifestNode updateChild(AdobeDCXManifestNode adobeDCXManifestNode) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if ($assertionsDisabled || adobeDCXManifestNode.getNodeId() != null) {
            return this._manifest.updateChild(adobeDCXManifestNode);
        }
        throw new AssertionError("NodeId must not be null");
    }

    @Deprecated
    public AdobeDCXManifestNode addChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if ($assertionsDisabled || adobeDCXManifestNode.getNodeId() != null) {
            return adobeDCXManifestNode2 == null ? this._manifest.addChild(adobeDCXManifestNode) : this._manifest.addChild(adobeDCXManifestNode, adobeDCXManifestNode2);
        }
        throw new AssertionError("NodeId must not be null");
    }

    public AdobeDCXNode appendNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        return appendNode(new AdobeDCXNode(str3, str4, str, str2), adobeDCXNode);
    }

    private AdobeDCXNode appendNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2) throws AdobeDCXException {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
        if (!$assertionsDisabled && adobeDCXNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if (!$assertionsDisabled && adobeDCXNode.getNodeId() == null) {
            throw new AssertionError("NodeId must not be null");
        }
        if (adobeDCXNode2 == null) {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.addChild(adobeDCXNode.getMutableManifestNode());
        } else {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.addChild(adobeDCXNode.getMutableManifestNode(), adobeDCXNode2.getMutableManifestNode());
        }
        if (adobeDCXMutableManifestNode == null) {
            return null;
        }
        if (!$assertionsDisabled && adobeDCXMutableManifestNode.getWeakDCXNode() != null) {
            throw new AssertionError(String.format("Unexpected live DCXNode discovered for newly added node with ID %s", adobeDCXMutableManifestNode.getNodeId()));
        }
        adobeDCXNode.setMutableManifestNode(adobeDCXMutableManifestNode);
        adobeDCXNode.setHostBranchOrElement(this._weakBranchOrElement.get());
        adobeDCXMutableManifestNode.setWeakDCXNode(adobeDCXNode);
        return adobeDCXNode;
    }

    @Deprecated
    public AdobeDCXManifestNode insertChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if ($assertionsDisabled || adobeDCXManifestNode.getNodeId() != null) {
            return adobeDCXManifestNode2 == null ? this._manifest.insertChild(adobeDCXManifestNode, j) : this._manifest.insertChild(adobeDCXManifestNode, adobeDCXManifestNode2, j);
        }
        throw new AssertionError("NodeId must not be null");
    }

    public AdobeDCXNode insertNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode, long j) throws AdobeDCXException {
        return insertNode(new AdobeDCXNode(str3, str4, str, str2), adobeDCXNode, j);
    }

    private AdobeDCXNode insertNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j) throws AdobeDCXException {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
        if (!$assertionsDisabled && adobeDCXNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if (!$assertionsDisabled && adobeDCXNode.getNodeId() == null) {
            throw new AssertionError("NodeId must not be null");
        }
        if (adobeDCXNode2 == null) {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.insertChild(adobeDCXNode.getMutableManifestNode(), j);
        } else {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.insertChild(adobeDCXNode.getMutableManifestNode(), adobeDCXNode2.getMutableManifestNode(), j);
        }
        if (adobeDCXMutableManifestNode == null) {
            return null;
        }
        if (!$assertionsDisabled && adobeDCXMutableManifestNode.getWeakDCXNode() != null) {
            throw new AssertionError(String.format("Unexpected live DCXNode discovered for newly added node with ID %s", adobeDCXMutableManifestNode.getNodeId()));
        }
        adobeDCXNode.setMutableManifestNode(adobeDCXMutableManifestNode);
        adobeDCXNode.setHostBranchOrElement(this._weakBranchOrElement.get());
        adobeDCXMutableManifestNode.setWeakDCXNode(adobeDCXNode);
        return adobeDCXNode;
    }

    @Deprecated
    public AdobeDCXManifestNode moveChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXManifestNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if ($assertionsDisabled || adobeDCXManifestNode.getNodeId() != null) {
            return adobeDCXManifestNode2 == null ? this._manifest.moveChild(adobeDCXManifestNode, j) : this._manifest.moveChild(adobeDCXManifestNode, adobeDCXManifestNode2, j);
        }
        throw new AssertionError("NodeId must not be null");
    }

    public AdobeDCXNode moveNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j) throws AdobeDCXException {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode;
        if (!$assertionsDisabled && adobeDCXNode == null) {
            throw new AssertionError("Parameter node shouldn't be null.");
        }
        if (!$assertionsDisabled && adobeDCXNode.getNodeId() == null) {
            throw new AssertionError("NodeId must not be null");
        }
        if (adobeDCXNode2 == null) {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.moveChild(adobeDCXNode.getMutableManifestNode(), j);
        } else {
            adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) this._manifest.moveChild(adobeDCXNode.getMutableManifestNode(), adobeDCXNode2.getMutableManifestNode(), j);
        }
        if (adobeDCXMutableManifestNode == null) {
            return null;
        }
        if (!$assertionsDisabled && adobeDCXMutableManifestNode.getWeakDCXNode() != null && adobeDCXMutableManifestNode.getWeakDCXNode() != adobeDCXNode) {
            throw new AssertionError(String.format("Unexpected DCXNode instance mismatch for node with ID %s", adobeDCXMutableManifestNode.getNodeId()));
        }
        adobeDCXNode.setMutableManifestNode(adobeDCXMutableManifestNode);
        adobeDCXNode.setHostBranchOrElement(this._weakBranchOrElement.get());
        adobeDCXMutableManifestNode.setWeakDCXNode(adobeDCXNode);
        return adobeDCXNode;
    }

    @Deprecated
    public AdobeDCXManifestNode copyChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode2, long j) throws AdobeDCXException {
        return copyChild(adobeDCXManifestNode, adobeDCXCompositeBranch, adobeDCXManifestNode2, j, null, null);
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j) throws AdobeDCXException {
        return copyNode(adobeDCXNode, adobeDCXNode2, j, null, null);
    }

    @Deprecated
    public AdobeDCXManifestNode copyChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXManifestNode adobeDCXManifestNode2, long j, String str, String str2) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError();
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite weakComposite = adobeDCXCompositeBranch.getWeakComposite();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if ($assertionsDisabled || weakComposite != null) {
            return adobeDCXComposite.addChild(adobeDCXManifestNode, adobeDCXCompositeBranch.getManifest(), weakComposite, adobeDCXManifestNode2, j, this._manifest, false, str, str2);
        }
        throw new AssertionError("Using 'from' branch after the composite has been released");
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, long j, String str, String str2) throws AdobeDCXException {
        AdobeDCXBranchCoreProtocol hostBranchOrElement = adobeDCXNode.getHostBranchOrElement();
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite adobeDCXComposite2 = hostBranchOrElement.getBranchCore()._weakComposite.get();
        AdobeDCXManifest adobeDCXManifest = hostBranchOrElement.getBranchCore()._manifest;
        if (!$assertionsDisabled && hostBranchOrElement == null) {
            throw new AssertionError("copyNode must only be called using a node that already exists on a branch or element.");
        }
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if (!$assertionsDisabled && adobeDCXComposite2 == null) {
            throw new AssertionError("Using 'from' branch after its composite has been released");
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) adobeDCXComposite.addChild(adobeDCXNode.getMutableManifestNode(), adobeDCXManifest, adobeDCXComposite2, adobeDCXNode2 == null ? null : adobeDCXNode2.getMutableManifestNode(), j, this._manifest, false, str, str2);
        if (adobeDCXMutableManifestNode == null) {
            return null;
        }
        AdobeDCXNode dcxNodeWithId = this._manifest.getDcxNodeWithId(adobeDCXMutableManifestNode.getNodeId());
        if (!$assertionsDisabled && dcxNodeWithId.getHostBranchOrElement() != null) {
            throw new AssertionError("New DCXNode unexpectedly refers to a host branch or element.");
        }
        dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        return dcxNodeWithId;
    }

    @Deprecated
    public AdobeDCXManifestNode updateChild(AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeDCXException {
        if (!$assertionsDisabled && adobeDCXCompositeBranch == null) {
            throw new AssertionError();
        }
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite weakComposite = adobeDCXCompositeBranch.getWeakComposite();
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if ($assertionsDisabled || weakComposite != null) {
            return adobeDCXComposite.addChild(adobeDCXManifestNode, adobeDCXCompositeBranch.getManifest(), weakComposite, null, 0L, this._manifest, true, null, null);
        }
        throw new AssertionError("Using 'from' branch after the composite has been released");
    }

    public AdobeDCXNode replaceNode(AdobeDCXNode adobeDCXNode, String str, String str2) throws AdobeDCXException {
        AdobeDCXNode dcxNodeWithId = null;
        AdobeDCXBranchCoreProtocol hostBranchOrElement = adobeDCXNode.getHostBranchOrElement();
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        AdobeDCXComposite adobeDCXComposite2 = hostBranchOrElement.getBranchCore()._weakComposite.get();
        AdobeDCXManifest adobeDCXManifest = hostBranchOrElement.getBranchCore()._manifest;
        if (!$assertionsDisabled && hostBranchOrElement == null) {
            throw new AssertionError("replaceNode must only be called using a node that already exists on a branch.");
        }
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("Using branch after the composite has been released");
        }
        if (!$assertionsDisabled && adobeDCXComposite2 == null) {
            throw new AssertionError("Using 'from' branch after its composite has been released");
        }
        AdobeDCXManifestNode childWithId = getChildWithId(adobeDCXNode.getNodeId());
        if (!$assertionsDisabled && childWithId == null) {
            throw new AssertionError("Couldn't find existing node.");
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = (AdobeDCXMutableManifestNode) adobeDCXComposite.addChild(adobeDCXNode.getMutableManifestNode(), adobeDCXManifest, adobeDCXComposite2, null, 0L, this._manifest, true, str, str2);
        if (adobeDCXMutableManifestNode != null) {
            dcxNodeWithId = this._manifest.getDcxNodeWithId(adobeDCXMutableManifestNode.getNodeId());
            if (!$assertionsDisabled && dcxNodeWithId.getHostBranchOrElement() != null && dcxNodeWithId.getHostBranchOrElement() != this._weakBranchOrElement.get()) {
                throw new AssertionError("Updated DCXNode refers to an unexpected host branch or element.");
            }
            dcxNodeWithId.setHostBranchOrElement(this._weakBranchOrElement.get());
        }
        return dcxNodeWithId;
    }

    @Deprecated
    public AdobeDCXManifestNode removeChild(AdobeDCXManifestNode adobeDCXManifestNode) {
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode != null, "Parameter node shouldn't be null.");
        AdobeStorageErrorUtils.verifyArgument(adobeDCXManifestNode.getNodeId() != null, "NodeId must not be null");
        AdobeDCXComposite adobeDCXComposite = this._weakComposite.get();
        ArrayList<AdobeDCXComponent> arrayList = new ArrayList<>();
        AdobeDCXManifestNode adobeDCXManifestNodeRemoveChild = this._manifest.removeChild(adobeDCXManifestNode, arrayList);
        for (AdobeDCXComponent adobeDCXComponent : arrayList) {
            if (adobeDCXComposite != null && adobeDCXComposite.getLocalStorage() != null) {
                adobeDCXComposite.getLocalStorage().didRemoveComponent(adobeDCXComponent, this._manifest);
            }
            this._manifest.setSourceHref(null, adobeDCXComponent);
            this._manifest.setUCIDForComponent(null, adobeDCXComponent);
        }
        return adobeDCXManifestNodeRemoveChild;
    }

    public AdobeDCXNode removeNode(AdobeDCXNode adobeDCXNode) {
        removeChild(adobeDCXNode.getMutableManifestNode());
        adobeDCXNode.unbindFromHost();
        return adobeDCXNode;
    }

    private String getPathForSideBySideXMP(String str) {
        return AdobeDCXUtils.stringByAppendingPathExtension(AdobeDCXUtils.stringByDeletingPathExtension(str), "xmp");
    }

    AdobeDCXComponent getSideBySideMetadataComponentFor(AdobeDCXComponent adobeDCXComponent) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = findParentOfComponent(adobeDCXComponent);
        AdobeDCXComponent componentWithAbsolutePath = getComponentWithAbsolutePath(getPathForSideBySideXMP(adobeDCXComponent.getAbsolutePath()));
        if (adobeDCXManifestNodeFindParentOfComponent == findParentOfComponent(componentWithAbsolutePath) && componentWithAbsolutePath.getRelationship().equals("metadata")) {
            return componentWithAbsolutePath;
        }
        return null;
    }

    public AdobeDCXMetadata getMetadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        String pathForComponent;
        AdobeDCXComponent sideBySideMetadataComponentFor = getSideBySideMetadataComponentFor(adobeDCXComponent);
        if (sideBySideMetadataComponentFor != null && (pathForComponent = getPathForComponent(sideBySideMetadataComponentFor)) != null) {
            AdobeDCXMetadata adobeDCXMetadata = new AdobeDCXMetadata(pathForComponent);
            if (adobeDCXMetadata == null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorUnparsableMetadata, "Metadata could not be parsed");
            }
            return adobeDCXMetadata;
        }
        String pathForComponent2 = getPathForComponent(adobeDCXComponent);
        if (pathForComponent2 != null) {
            return AdobeDCXFileMetadata.getMetadataForFile(pathForComponent2);
        }
        return null;
    }

    public AdobeDCXMutableMetadata getOrCreateMetadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        AdobeDCXMetadata metadataForComponent = getMetadataForComponent(adobeDCXComponent);
        if (metadataForComponent == null) {
            metadataForComponent = AdobeDCXFileMetadata.getOrCreateMetadataForFile(getPathForComponent(adobeDCXComponent));
        }
        return metadataForComponent.getMutableCopy();
    }

    AdobeDCXComponent addSideBySideMetadata(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return adobeDCXMetadata.saveAsComponentOfNode(findParentNodeOfComponent(adobeDCXComponent), this._weakBranchOrElement.get(), getPathForSideBySideXMP(adobeDCXComponent.getPath()));
    }

    public boolean updateMetadata(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        boolean z;
        boolean z2;
        AdobeDCXComponent sideBySideMetadataComponentFor = getSideBySideMetadataComponentFor(adobeDCXComponent);
        if (sideBySideMetadataComponentFor != null) {
            return adobeDCXMetadata.updateComponentInBranchOrElement(sideBySideMetadataComponentFor, this._weakBranchOrElement.get()) != null;
        }
        String pathForComponent = getPathForComponent(adobeDCXComponent);
        if (pathForComponent == null) {
            return false;
        }
        if (AdobeDCXFileMetadata.isMetadataUpdatableForFile(pathForComponent)) {
            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
            try {
                FileUtils.copyFile(new File(pathForComponent), new File(strStringByAppendingLastPathComponent));
                if (AdobeDCXFileMetadata.updateMetadata(adobeDCXMetadata, strStringByAppendingLastPathComponent)) {
                    z = updateComponent(adobeDCXComponent, strStringByAppendingLastPathComponent, false) != null;
                    z2 = z;
                } else {
                    z2 = false;
                    z = false;
                }
                if (!z2) {
                    new File(strStringByAppendingLastPathComponent).delete();
                }
            } catch (IOException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeDCXBranchCore.class.getSimpleName(), null, e2);
                return false;
            }
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return addSideBySideMetadata(adobeDCXMetadata, adobeDCXComponent) != null;
    }

    @Deprecated
    public AdobeDCXMetadata getMetadataForElement(AdobeDCXManifestNode adobeDCXManifestNode) {
        if (!$assertionsDisabled && (adobeDCXManifestNode.getName() == null || adobeDCXManifestNode.getType() == null)) {
            throw new AssertionError("elementNode must have name and path properties to be considered an element");
        }
        AdobeDCXComponent componentWithAbsolutePath = getComponentWithAbsolutePath(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXManifestNode.getAbsolutePath(), "META-INF/metadata.xml"));
        if (componentWithAbsolutePath == null) {
            return null;
        }
        try {
            return new AdobeDCXMetadata(this._weakBranchOrElement.get(), componentWithAbsolutePath);
        } catch (AdobeDCXException | XMPException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXBranchCore.class.getSimpleName(), null, e2);
            return null;
        }
    }

    public AdobeDCXMetadata getMetadataForElementNode(AdobeDCXNode adobeDCXNode) {
        return getMetadataForElement(adobeDCXNode.getMutableManifestNode());
    }

    @Deprecated
    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifestNode adobeDCXManifestNode, String str, boolean z, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        boolean z2;
        boolean z3;
        boolean z4;
        String str2;
        AdobeDCXComponent adobeDCXComponentAddComponent;
        boolean z5;
        boolean z6;
        boolean z7 = true;
        if (AdobeDCXFileMetadata.isMetadataUpdatableForFile(str)) {
            if (z) {
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), AdobeStorageUtils.generateUuid());
                try {
                    FileUtils.copyFile(new File(str), new File(strStringByAppendingLastPathComponent));
                    z5 = true;
                    z6 = true;
                } catch (IOException e2) {
                    String str3 = "";
                    if (str != null && strStringByAppendingLastPathComponent != null) {
                        str3 = "srcFile:" + str + "destFile:" + strStringByAppendingLastPathComponent;
                    }
                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "addComponent-depr", "copy failed-reason:" + e2.getMessage(), str3);
                    AdobeLogger.log(Level.DEBUG, AdobeDCXBranchCore.class.getSimpleName(), null, e2);
                    z5 = false;
                    z6 = false;
                }
                str = strStringByAppendingLastPathComponent;
            } else {
                z5 = false;
                z6 = true;
            }
            if (AdobeDCXFileMetadata.updateMetadata(adobeDCXMetadata, str)) {
                z2 = z5;
                z3 = true;
                str2 = str;
                z4 = z6;
            } else {
                z2 = z5;
                z3 = false;
                str2 = str;
                z4 = false;
            }
        } else {
            z2 = false;
            z3 = false;
            z4 = true;
            str2 = str;
        }
        if (z4) {
            adobeDCXComponentAddComponent = addComponent(adobeDCXComponent, adobeDCXManifestNode, str2, false, (String) null);
            if (adobeDCXComponentAddComponent == null) {
                z7 = false;
            }
        } else {
            z7 = z4;
            adobeDCXComponentAddComponent = null;
        }
        if (z2) {
            new File(str2).delete();
        }
        if (!z7) {
            return null;
        }
        if (!z3) {
            addSideBySideMetadata(adobeDCXMetadata, adobeDCXComponentAddComponent);
        }
        return adobeDCXComponentAddComponent;
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXNode.getMutableManifestNode(), str, z, adobeDCXMetadata);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object getRenditionAtNode(AdobeDCXNode adobeDCXNode, int i, int i2, List<String> list) {
        Integer num;
        Integer num2;
        int iIndexOf;
        Integer num3;
        Integer num4;
        if (adobeDCXNode == null) {
            adobeDCXNode = getRoot();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toLowerCase());
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(getComponentsOfNode(adobeDCXNode));
        arrayList2.addAll(getChildrenOfNode(adobeDCXNode));
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if ((obj instanceof AdobeDCXNode ? ((AdobeDCXNode) obj).getRelationship() : ((AdobeDCXComponent) obj).getRelationship()).equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition)) {
                String type = obj instanceof AdobeDCXNode ? ((AdobeDCXNode) obj).getType() : ((AdobeDCXComponent) obj).getType();
                if (type != null && (iIndexOf = arrayList.indexOf(type.toLowerCase())) != -1) {
                    if (obj instanceof AdobeDCXNode) {
                        num3 = (Integer) ((AdobeDCXNode) obj).get("width");
                        num4 = (Integer) ((AdobeDCXNode) obj).get("height");
                    } else {
                        num3 = (Integer) ((AdobeDCXComponent) obj).getValueForKey("width");
                        num4 = (Integer) ((AdobeDCXComponent) obj).getValueForKey("height");
                    }
                    arrayList3.add(new Tuple(obj, Integer.valueOf(iIndexOf), Integer.valueOf(Math.max(num3 == null ? 0 : num3.intValue(), num4 == null ? 0 : num4.intValue()))));
                }
            }
        }
        if (arrayList3.isEmpty()) {
            return null;
        }
        Collections.sort(arrayList3, new Comparator<Tuple<Object, Integer, Integer>>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXBranchCore.1
            @Override // java.util.Comparator
            public int compare(Tuple<Object, Integer, Integer> tuple, Tuple<Object, Integer, Integer> tuple2) {
                int iIntValue = tuple.m.intValue();
                int iIntValue2 = tuple2.m.intValue();
                Integer num5 = tuple.r;
                Integer num6 = tuple2.r;
                if (num5.intValue() > num6.intValue()) {
                    return 1;
                }
                if (num5.intValue() >= num6.intValue() && iIntValue <= iIntValue2) {
                    return iIntValue < iIntValue2 ? 1 : 0;
                }
                return -1;
            }
        });
        if (i > 0 || i2 > 0) {
            Iterator it2 = arrayList3.iterator();
            Object obj2 = null;
            while (it2.hasNext()) {
                obj2 = ((Tuple) it2.next()).l;
                if (obj2 instanceof AdobeDCXNode) {
                    num = (Integer) ((AdobeDCXNode) obj2).get("width");
                    num2 = (Integer) ((AdobeDCXNode) obj2).get("height");
                } else {
                    num = (Integer) ((AdobeDCXComponent) obj2).getValueForKey("width");
                    num2 = (Integer) ((AdobeDCXComponent) obj2).getValueForKey("height");
                }
                if (i == 0 || num.intValue() >= i) {
                    if (i2 == 0 || num2.intValue() >= i2) {
                        return obj2;
                    }
                }
            }
            return obj2;
        }
        if (!$assertionsDisabled && arrayList3.isEmpty()) {
            throw new AssertionError("We must always have at least one rendtion tuple in our sorted array.");
        }
        int size = arrayList3.size() - 1;
        Object obj3 = ((Tuple) arrayList3.get(size)).l;
        Integer num5 = (Integer) ((Tuple) arrayList3.get(size)).r;
        int i3 = size - 1;
        Integer num6 = num5;
        Object obj4 = obj3;
        int i4 = i3;
        while (i4 >= 0) {
            Object obj5 = ((Tuple) arrayList3.get(i4)).l;
            Integer num7 = (Integer) ((Tuple) arrayList3.get(i4)).r;
            if (num7.intValue() < num6.intValue()) {
                return obj4;
            }
            i4--;
            num6 = num7;
            obj4 = obj5;
        }
        return obj4;
    }

    class Tuple<L, M, R> {
        L l;
        M m;
        R r;

        Tuple(L l, M m, R r) {
            this.l = l;
            this.m = m;
            this.r = r;
        }
    }
}
