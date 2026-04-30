package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMutableManifestNode extends AdobeDCXManifestNode {
    private WeakReference<AdobeDCXNode> weakDCXNode;

    private void init() {
        this._dict = new JSONObject();
    }

    public AdobeDCXMutableManifestNode(String str, String str2) {
        init();
        try {
            if (str != null) {
                this._dict.put("id", str);
            } else {
                this._dict.put("id", AdobeStorageUtils.generateUuid());
            }
            if (str2 != null) {
                this._dict.put("name", str2);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.Constructor", e2.getMessage());
        }
    }

    public AdobeDCXMutableManifestNode(String str, String str2, String str3) {
        init();
        try {
            this._dict.put("id", AdobeStorageUtils.generateUuid());
            if (str != null) {
                this._dict.put("type", str);
            }
            if (str3 != null) {
                this._dict.put("name", str3);
            }
            if (str2 != null) {
                this._dict.put("path", str2);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.Constructor", e2.getMessage());
        }
    }

    public AdobeDCXMutableManifestNode(JSONObject jSONObject, String str, String str2) {
        this._dict = jSONObject;
        this._parentPath = str;
        this._parentId = str2;
    }

    AdobeDCXMutableManifestNode(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str, String str2) {
        this._dict = jSONObject;
        this._manifest = new WeakReference<>(adobeDCXManifest);
        this._parentPath = str;
        this._parentId = str2;
        this._isRoot = false;
    }

    static AdobeDCXMutableManifestNode createNodeFromDictionary(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str, String str2) {
        return new AdobeDCXMutableManifestNode(jSONObject, adobeDCXManifest, str, str2);
    }

    static AdobeDCXMutableManifestNode createRootNodeFromDict(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest) {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!AdobeDCXManifest.getManifestSpecificProperties().contains(next)) {
                try {
                    jSONObject2.putOpt(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeDCXMutableManifestNode.class.getSimpleName(), null, e2);
                }
            }
        }
        try {
            jSONObject2.putOpt("id", adobeDCXManifest.getCompositeId());
        } catch (JSONException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXMutableManifestNode.class.getSimpleName(), null, e3);
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(jSONObject2, adobeDCXManifest, "", null);
        adobeDCXMutableManifestNode._isRoot = true;
        return adobeDCXMutableManifestNode;
    }

    public static AdobeDCXMutableManifestNode createNodeWithType(String str, String str2, String str3) {
        return new AdobeDCXMutableManifestNode(str, str2, str3);
    }

    public static AdobeDCXMutableManifestNode createNodeWithName(String str) {
        return new AdobeDCXMutableManifestNode(AdobeStorageUtils.generateUuid(), str);
    }

    public static AdobeDCXMutableManifestNode createNodeWithId(String str) {
        return new AdobeDCXMutableManifestNode(str, null);
    }

    public void setName(String str) {
        if (str != null) {
            try {
                this._dict.put("name", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setName", e2.getMessage());
                return;
            }
        }
        this._dict.remove("name");
    }

    public void setType(String str) {
        if (str != null) {
            try {
                this._dict.put("type", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setType", e2.getMessage());
                return;
            }
        }
        this._dict.remove("type");
    }

    public void setPath(String str) {
        if (str != null) {
            try {
                this._dict.put("path", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setPath", e2.getMessage());
                return;
            }
        }
        this._dict.remove("path");
    }

    public void setRelationship(String str) {
        if (str != null) {
            try {
                this._dict.put("rel", str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setRelationship", e2.getMessage());
            }
        }
    }

    void setParentPath(String str) {
        this._parentPath = str;
    }

    void setParentId(String str) {
        this._parentId = str;
    }

    public void setNodeId(String str) {
        if (str != null) {
            try {
                this._dict.put("id", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setNodeId", e2.getMessage());
                return;
            }
        }
        this._dict.remove("id");
    }

    public void setValue(Object obj, String str) {
        AdobeStorageErrorUtils.verifyArgument((str.equals("children") || str.equals("components")) ? false : true, "The key " + str + " is a reserved key for a AdobeDCXManifestNode.");
        try {
            this._dict.put(str, obj);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableManifestNode.setValue", e2.getMessage());
        }
    }

    public void remove(String str) {
        AdobeStorageErrorUtils.verifyArgument((str.equals("children") || str.equals("components")) ? false : true, "The key " + str + " is a reserved key for a AdobeDCXManifestNode.");
        this._dict.remove(str);
    }

    protected void setIsRoot(boolean z) {
        this._isRoot = z;
    }

    protected AdobeDCXNode getWeakDCXNode() {
        if (this.weakDCXNode != null) {
            return this.weakDCXNode.get();
        }
        return null;
    }

    protected void setWeakDCXNode(AdobeDCXNode adobeDCXNode) {
        this.weakDCXNode = new WeakReference<>(adobeDCXNode);
    }
}
