package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXNode {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static String TAG;
    private AdobeDCXBranchCoreProtocol _hostBranchOrElement;
    private AdobeDCXMutableManifestNode _mutableManifestNode;

    static {
        $assertionsDisabled = !AdobeDCXNode.class.desiredAssertionStatus();
        TAG = "AdobeDCXNode";
    }

    protected AdobeDCXNode(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode, AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) {
        this._mutableManifestNode = adobeDCXMutableManifestNode;
        this._hostBranchOrElement = adobeDCXBranchCoreProtocol;
    }

    protected AdobeDCXNode(String str, String str2) {
        this._mutableManifestNode = new AdobeDCXMutableManifestNode(str, str2);
        this._hostBranchOrElement = null;
    }

    protected AdobeDCXNode(String str, String str2, String str3, String str4) {
        this._mutableManifestNode = new AdobeDCXMutableManifestNode(str, str2, str3);
        if (str4 != null) {
            this._mutableManifestNode.setNodeId(str4);
        }
        this._hostBranchOrElement = null;
    }

    protected static AdobeDCXNode createNodeWithType(String str, String str2, String str3, String str4) {
        return new AdobeDCXNode(str, str2, str3, str4);
    }

    public static AdobeDCXNode createNodeWithName(String str) {
        return new AdobeDCXNode(AdobeStorageUtils.generateUuid(), str);
    }

    public static AdobeDCXNode createNodeWithId(String str) {
        return new AdobeDCXNode(str, (String) null);
    }

    public static AdobeDCXNode createRootNodeFromDict(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest) {
        return new AdobeDCXNode(AdobeDCXMutableManifestNode.createRootNodeFromDict(jSONObject, adobeDCXManifest), (AdobeDCXBranchCoreProtocol) null);
    }

    public void setName(String str) {
        if (!$assertionsDisabled && !isMutable()) {
            throw new AssertionError("Attempted to modify the value of a node on an immutable composite branch.");
        }
        this._mutableManifestNode.setName(str);
        if (isMutable()) {
            try {
                this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
            } catch (AdobeDCXException e2) {
                if (!$assertionsDisabled && e2 != null) {
                    throw new AssertionError("error was returned unexpectedly (should be impossible here).");
                }
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    public String getName() {
        return this._mutableManifestNode.getName();
    }

    public void setType(String str) {
        if (!$assertionsDisabled && !isMutable()) {
            throw new AssertionError("Attempted to modify the value of a node on an immutable composite branch.");
        }
        this._mutableManifestNode.setType(str);
        if (isMutable()) {
            try {
                this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
            } catch (AdobeDCXException e2) {
                if (!$assertionsDisabled && e2 != null) {
                    throw new AssertionError("error was returned unexpectedly (should be impossible here).");
                }
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    public String getType() {
        return this._mutableManifestNode.getType();
    }

    public void setRelationship(String str) {
        if (!$assertionsDisabled && !isMutable()) {
            throw new AssertionError("Attempted to modify the value of a node on an immutable composite branch.");
        }
        this._mutableManifestNode.setRelationship(str);
        if (isMutable()) {
            try {
                this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
            } catch (AdobeDCXException e2) {
                if (!$assertionsDisabled && e2 != null) {
                    throw new AssertionError("error was returned unexpectedly (should be impossible here).");
                }
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    public String getRelationship() {
        return this._mutableManifestNode.getRelationship();
    }

    public String getPath() {
        return this._mutableManifestNode.getPath();
    }

    public String getParentPath() {
        return this._mutableManifestNode.getParentPath();
    }

    public String getAbsolutePath() {
        return this._mutableManifestNode.getAbsolutePath();
    }

    public boolean isRoot() {
        return this._mutableManifestNode.isRoot();
    }

    public boolean isElement() {
        return this._mutableManifestNode.isElement();
    }

    public String getNodeId() {
        return this._mutableManifestNode.getNodeId();
    }

    public void setNodeId(String str) {
        if (!$assertionsDisabled && this._hostBranchOrElement != null) {
            throw new AssertionError("Attempted to modify the nodeId of an object already attached to a branch or element");
        }
        if (this._hostBranchOrElement == null) {
            this._mutableManifestNode.setNodeId(str);
        }
    }

    public List<String> getCustomKeys() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = this._mutableManifestNode.getDictionary().keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        arrayList.removeAll(AdobeDCXManifest.getReservedNodePropertyKeys());
        return arrayList;
    }

    public Object get(String str) {
        return this._mutableManifestNode.get(str);
    }

    public void setValue(Object obj, String str) {
        if (!$assertionsDisabled && !isMutable()) {
            throw new AssertionError("Attempted to modify the value of a node on an immutable composite branch.");
        }
        this._mutableManifestNode.setValue(obj, str);
        if (isMutable()) {
            try {
                this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
            } catch (AdobeDCXException e2) {
                if (!$assertionsDisabled && e2 != null) {
                    throw new AssertionError("error was returned unexpectedly (should be impossible here).");
                }
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    public void remove(String str) {
        if (!$assertionsDisabled && !isMutable()) {
            throw new AssertionError("Attempted to modify the value of a node on an immutable composite branch.");
        }
        this._mutableManifestNode.remove(str);
        if (isMutable()) {
            try {
                this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
            } catch (AdobeDCXException e2) {
                if (!$assertionsDisabled && e2 != null) {
                    throw new AssertionError("error was returned unexpectedly (should be impossible here).");
                }
                AdobeLogger.log(Level.DEBUG, TAG, null, e2);
            }
        }
    }

    public void setPath(String str) throws AdobeDCXException {
        if (!isMutable()) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorAttemptToModifyImmutableCompositeBranch, "Attempted to modify the value of a node on an immutable composite branch");
        }
        this._mutableManifestNode.setPath(str);
        if (isMutable()) {
            this._hostBranchOrElement.getBranchCore().updateChild(this._mutableManifestNode);
        }
    }

    private boolean isHostMutable() {
        return (this._hostBranchOrElement instanceof AdobeDCXElement) || (this._hostBranchOrElement instanceof AdobeDCXCompositeMutableBranch);
    }

    private boolean isMutable() {
        return this._hostBranchOrElement == null || isHostMutable();
    }

    protected void unbindFromHost() {
        this._mutableManifestNode = this._mutableManifestNode.getMutableCopy();
        this._hostBranchOrElement = null;
    }

    public AdobeDCXMutableManifestNode getMutableManifestNode() {
        return this._mutableManifestNode;
    }

    void setMutableManifestNode(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        this._mutableManifestNode = adobeDCXMutableManifestNode;
    }

    AdobeDCXBranchCoreProtocol getHostBranchOrElement() {
        return this._hostBranchOrElement;
    }

    void setHostBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol) {
        this._hostBranchOrElement = adobeDCXBranchCoreProtocol;
    }
}
