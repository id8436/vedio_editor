package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.xmp.XMPException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXElement implements AdobeDCXBranchCoreProtocol {
    private AdobeDCXBranchCore _core;
    private AdobeDCXCompositeMutableBranch _hostBranch;

    private AdobeDCXElement() {
    }

    AdobeDCXElement(AdobeDCXNode adobeDCXNode, AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        AdobeDCXMetadata adobeDCXMetadata = null;
        if (adobeDCXNode == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "node is null");
        }
        JSONObject dictionary = adobeDCXNode.getMutableManifestNode().getDictionary();
        AdobeDCXManifest manifest = adobeDCXNode.getMutableManifestNode().getManifest();
        JSONObject jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(dictionary);
        try {
            jSONObjectDeepMutableCopyOfDictionary.put(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey, manifest.get(AdobeDCXConstants.AdobeDCXManifestFormatVersionManifestKey));
            jSONObjectDeepMutableCopyOfDictionary.remove("path");
            AdobeDCXManifest adobeDCXManifest = new AdobeDCXManifest(jSONObjectDeepMutableCopyOfDictionary);
            adobeDCXManifest.setHostCompositeId(adobeDCXComposite.getCompositeId());
            JSONObject jSONObjectDeepMutableCopyOfDictionary2 = AdobeStorageCopyUtils.deepMutableCopyOfDictionary((JSONObject) manifest.get("local"));
            Map<String, AdobeDCXComponent> allComponents = adobeDCXManifest.getAllComponents();
            JSONObject jSONObjectDeepMutableCopyOfDictionary3 = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObjectDeepMutableCopyOfDictionary2 == null ? null : jSONObjectDeepMutableCopyOfDictionary2.optJSONObject("copyOnWrite#storageIds"));
            if (jSONObjectDeepMutableCopyOfDictionary3 != null) {
                Iterator<String> itKeys = jSONObjectDeepMutableCopyOfDictionary3.keys();
                while (itKeys.hasNext()) {
                    if (!allComponents.containsKey(itKeys.next())) {
                        itKeys.remove();
                    }
                }
                try {
                    jSONObjectDeepMutableCopyOfDictionary2.put("copyOnWrite#storageIds", jSONObjectDeepMutableCopyOfDictionary3);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXElement.<init>", "JsonObject exception", e2);
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "", e2);
                }
            }
            JSONObject jSONObjectDeepMutableCopyOfDictionary4 = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObjectDeepMutableCopyOfDictionary2 == null ? null : jSONObjectDeepMutableCopyOfDictionary2.optJSONObject(AdobeDCXConstants.AdobeDCXLocalStorageUnmanagedComponentsManifestKey));
            if (jSONObjectDeepMutableCopyOfDictionary4 != null) {
                Iterator<String> itKeys2 = jSONObjectDeepMutableCopyOfDictionary4.keys();
                while (itKeys2.hasNext()) {
                    if (!allComponents.containsKey(itKeys2.next())) {
                        itKeys2.remove();
                    }
                }
                try {
                    jSONObjectDeepMutableCopyOfDictionary2.put(AdobeDCXConstants.AdobeDCXLocalStorageUnmanagedComponentsManifestKey, jSONObjectDeepMutableCopyOfDictionary4);
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXElement.<init>", "JsonObject exception", e3);
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "", e3);
                }
            }
            JSONObject jSONObjectDeepMutableCopyOfDictionary5 = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObjectDeepMutableCopyOfDictionary2 == null ? null : jSONObjectDeepMutableCopyOfDictionary2.optJSONObject("componentS2SCopy#srcHref"));
            if (jSONObjectDeepMutableCopyOfDictionary5 != null) {
                Iterator<String> itKeys3 = jSONObjectDeepMutableCopyOfDictionary5.keys();
                while (itKeys3.hasNext()) {
                    if (!allComponents.containsKey(itKeys3.next())) {
                        itKeys3.remove();
                    }
                }
                try {
                    jSONObjectDeepMutableCopyOfDictionary2.put("componentS2SCopy#srcHref", jSONObjectDeepMutableCopyOfDictionary5);
                } catch (JSONException e4) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXElement.<init>", "JsonObject exception", e4);
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "", e4);
                }
            }
            adobeDCXManifest.setValue(jSONObjectDeepMutableCopyOfDictionary2, "local");
            adobeDCXManifest.isDirty = false;
            AdobeDCXComponent componentWithAbsolutePath = getComponentWithAbsolutePath(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeDCXNode.getAbsolutePath(), "META-INF/metadata.xml"));
            if (componentWithAbsolutePath != null) {
                try {
                    adobeDCXMetadata = new AdobeDCXMetadata(this, componentWithAbsolutePath);
                } catch (AdobeDCXException | XMPException e5) {
                    AdobeLogger.log(Level.ERROR, "AdobeDCXElement<init>(AdobeDCXNode, AdobeDCXComposite)", e5.getMessage(), e5);
                }
            }
            this._core = new AdobeDCXBranchCore(adobeDCXComposite, adobeDCXManifest, adobeDCXMetadata, this);
            this._hostBranch = (AdobeDCXCompositeMutableBranch) adobeDCXNode.getHostBranchOrElement();
        } catch (JSONException e6) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXElement.<init>", "JsonObject exception", e6);
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "", e6);
        }
    }

    private AdobeDCXElement(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        if (adobeDCXManifest == null || adobeDCXComposite == null || adobeDCXCompositeMutableBranch == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorFailedToCreateDCXElement, "null argument(s)");
        }
        this._core = new AdobeDCXBranchCore(adobeDCXComposite, adobeDCXManifest, adobeDCXMetadata, this);
        this._hostBranch = adobeDCXCompositeMutableBranch;
        adobeDCXComposite.addManifestToActiveSnapshots(adobeDCXManifest);
        this._hostBranch.addElementToPendingElements(this);
    }

    public AdobeDCXElement copy() throws AdobeDCXException {
        AdobeDCXManifest adobeDCXManifest = new AdobeDCXManifest(this._core.getManifest().getLocalData());
        if (adobeDCXManifest == null) {
            return null;
        }
        AdobeDCXElement adobeDCXElement = new AdobeDCXElement(adobeDCXManifest, this._core.getWeakComposite(), this._hostBranch, this._core.getMetadata() != null ? this._core.getMetadata().getMutableCopy() : null);
        adobeDCXElement.getManifest().isDirty = isDirty();
        adobeDCXElement.getManifest().setHostCompositeId(getManifest().getHostCompositeId());
        return adobeDCXElement;
    }

    public String getName() {
        if (this._core == null) {
            return null;
        }
        return this._core.getName();
    }

    public void setName(String str) {
        this._core.setName(str);
    }

    public String getType() {
        if (this._core == null) {
            return null;
        }
        return this._core.getType();
    }

    public void setType(String str) {
        this._core.setType(str);
    }

    public AdobeDCXNode getRoot() {
        if (this._core == null) {
            return null;
        }
        return this._core.getRoot();
    }

    public boolean isDirty() {
        if (getManifest() == null || !isConnected()) {
            return false;
        }
        return getManifest().isDirty;
    }

    public AdobeDCXManifest getManifest() {
        if (this._core == null) {
            return null;
        }
        return this._core.getManifest();
    }

    String getCompositeState() {
        if (this._core == null) {
            return null;
        }
        return this._core.getCompositeState();
    }

    public String getEtag() {
        if (this._core == null) {
            return null;
        }
        return this._core.getEtag();
    }

    public void setEtag(String str) {
        this._core.setEtag(str);
    }

    private boolean isConnected() {
        return this._hostBranch != null;
    }

    public Object get(String str) {
        if (this._core == null) {
            return null;
        }
        return this._core.get(str);
    }

    public void setValue(Object obj, String str) {
        this._core.setValue(obj, str);
    }

    public void remove(String str) {
        this._core.remove(str);
    }

    private boolean isComponentUnmanaged(AdobeDCXComponent adobeDCXComponent) {
        return this._core.isComponentUnmanaged(adobeDCXComponent);
    }

    void disconnectFromBranch() {
        this._hostBranch = null;
        getManifest().setHostCompositeId(null);
    }

    public AdobeDCXMetadata metadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.getMetadataForComponent(adobeDCXComponent);
    }

    public AdobeDCXMutableMetadata getOrCreateMetadataForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.getOrCreateMetadataForComponent(adobeDCXComponent);
    }

    public boolean updateMetadata(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        return (this._core == null ? null : Boolean.valueOf(this._core.updateMetadata(adobeDCXMetadata, adobeDCXComponent))).booleanValue();
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, AdobeDCXMetadata adobeDCXMetadata) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.addComponent(adobeDCXComponent, adobeDCXNode, str, z, adobeDCXMetadata);
    }

    public List<AdobeDCXComponent> getComponentsOfNode(AdobeDCXNode adobeDCXNode) {
        if (this._core == null) {
            return null;
        }
        return this._core.getComponentsOfNode(adobeDCXNode);
    }

    public AdobeDCXComponent getComponentWithId(String str) {
        if (this._core == null) {
            return null;
        }
        return this._core.getComponentWithId(str);
    }

    public AdobeDCXComponent getComponentWithAbsolutePath(String str) {
        if (this._core == null) {
            return null;
        }
        return this._core.getComponentWithAbsolutePath(str);
    }

    public AdobeDCXNode findParentNodeOfComponent(AdobeDCXComponent adobeDCXComponent) {
        if (this._core == null) {
            return null;
        }
        return this._core.findParentNodeOfComponent(adobeDCXComponent);
    }

    public List<AdobeDCXComponent> getAllComponents() {
        if (this._core == null) {
            return null;
        }
        return this._core.getAllComponents();
    }

    public String getPathForComponent(AdobeDCXComponent adobeDCXComponent) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.getPathForComponent(adobeDCXComponent);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, boolean z, String str7) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.addComponent(str, str2, str3, str4, str5, adobeDCXNode, str6, z, str7);
    }

    public AdobeDCXComponent addComponent(String str, String str2, String str3, String str4, String str5, AdobeDCXNode adobeDCXNode, String str6, String str7) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.addComponent(str, str2, str3, str4, str5, adobeDCXNode, str6, str7);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, boolean z, String str2) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.addComponent(adobeDCXComponent, adobeDCXNode, str, z, str2);
    }

    public AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode, String str, String str2) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.addComponent(adobeDCXComponent, adobeDCXNode, str, str2);
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str, boolean z) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.updateComponent(adobeDCXComponent, str, z);
    }

    public AdobeDCXComponent updateComponent(AdobeDCXComponent adobeDCXComponent, String str) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.updateComponent(adobeDCXComponent, str);
    }

    public AdobeDCXComponent moveComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.moveComponent(adobeDCXComponent, adobeDCXNode);
    }

    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode);
    }

    public AdobeDCXComponent copyComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, AdobeDCXNode adobeDCXNode, String str) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.copyComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol, adobeDCXNode, str);
    }

    public AdobeDCXComponent replaceComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.replaceComponent(adobeDCXComponent, adobeDCXBranchCoreProtocol);
    }

    public AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent) {
        if (this._core == null) {
            return null;
        }
        return this._core.removeComponent(adobeDCXComponent);
    }

    public List<AdobeDCXNode> getChildrenOfNode(AdobeDCXNode adobeDCXNode) {
        if (this._core == null) {
            return null;
        }
        return this._core.getChildrenOfNode(adobeDCXNode);
    }

    public AdobeDCXNode getNodeWithId(String str) {
        if (this._core == null) {
            return null;
        }
        return this._core.getNodeWithId(str);
    }

    public AdobeDCXNode getNodeWithAbsolutePath(String str) {
        if (this._core == null) {
            return null;
        }
        return this._core.getNodeWithAbsolutePath(str);
    }

    public AdobeDCXNode findParentOfNode(AdobeDCXNode adobeDCXNode, AdobeDCXIndexWrapper adobeDCXIndexWrapper) {
        if (this._core == null) {
            return null;
        }
        return this._core.findParentOfNode(adobeDCXNode, adobeDCXIndexWrapper);
    }

    public AdobeDCXNode appendNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.appendNode(str, str2, str3, str4, adobeDCXNode);
    }

    public AdobeDCXNode insertNode(String str, String str2, String str3, String str4, AdobeDCXNode adobeDCXNode, int i) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.insertNode(str, str2, str3, str4, adobeDCXNode, i);
    }

    public AdobeDCXNode moveNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, int i) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.moveNode(adobeDCXNode, adobeDCXNode2, i);
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, int i) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.copyNode(adobeDCXNode, adobeDCXNode2, i);
    }

    public AdobeDCXNode copyNode(AdobeDCXNode adobeDCXNode, AdobeDCXNode adobeDCXNode2, int i, String str, String str2) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.copyNode(adobeDCXNode, adobeDCXNode2, i, str, str2);
    }

    public AdobeDCXNode replaceNode(AdobeDCXNode adobeDCXNode) throws AdobeDCXException {
        if (this._core == null) {
            return null;
        }
        return this._core.replaceNode(adobeDCXNode, null, null);
    }

    public AdobeDCXNode removeNode(AdobeDCXNode adobeDCXNode) {
        if (this._core == null) {
            return null;
        }
        return this._core.removeNode(adobeDCXNode);
    }

    public Object getRenditionAtNode(AdobeDCXNode adobeDCXNode, int i, int i2, List<String> list) {
        if (this._core == null) {
            return null;
        }
        return this._core.getRenditionAtNode(adobeDCXNode, i, i2, list);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXBranchCoreProtocol
    public AdobeDCXBranchCore getBranchCore() {
        return this._core;
    }

    public void dealloc() {
        try {
            this._hostBranch.abandonElement(this);
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXElement.class.getSimpleName(), null, e2);
        }
    }
}
