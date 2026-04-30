package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXManifestNode {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected JSONObject _dict;
    protected boolean _isRoot;
    protected WeakReference<AdobeDCXManifest> _manifest;
    protected String _parentId;
    protected String _parentPath;

    static {
        $assertionsDisabled = !AdobeDCXManifestNode.class.desiredAssertionStatus();
    }

    protected AdobeDCXManifestNode() {
    }

    public AdobeDCXMutableManifestNode getMutableCopy() {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> itKeys = this._dict.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!next.equals("children") && !next.equals("components")) {
                try {
                    Object obj = this._dict.get(next);
                    if (obj.getClass().equals(JSONObject.class)) {
                        jSONObject.put(next, AdobeStorageCopyUtils.deepMutableCopyOfDictionary((JSONObject) obj));
                    } else if (obj.getClass().equals(JSONArray.class)) {
                        jSONObject.put(next, AdobeStorageCopyUtils.deepMutableCopyOfArray((JSONArray) obj));
                    } else {
                        jSONObject.put(next, obj);
                    }
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXManifestNode.getMutableCopy", e2.getMessage());
                }
            }
        }
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNode = new AdobeDCXMutableManifestNode(jSONObject, this._parentPath, this._parentId);
        if (this._isRoot) {
            adobeDCXMutableManifestNode._isRoot = true;
        }
        return adobeDCXMutableManifestNode;
    }

    @Deprecated
    public AdobeDCXManifestNode(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str) {
        this._dict = jSONObject;
        this._manifest = new WeakReference<>(adobeDCXManifest);
        this._parentPath = str;
    }

    @Deprecated
    public static AdobeDCXManifestNode createManifestNodeFromDictionary(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str) {
        return new AdobeDCXManifestNode(jSONObject, adobeDCXManifest, str);
    }

    public String getNodeId() {
        return this._dict.optString("id", null);
    }

    public String getName() {
        return this._dict.optString("name", null);
    }

    public String getPath() {
        return this._isRoot ? URIUtil.SLASH : this._dict.optString("path", null);
    }

    public String getAbsolutePath() {
        if (getPath() == null) {
            return null;
        }
        return AdobeDCXUtils.stringByAppendingLastPathComponent(getParentPath(), getPath());
    }

    public String getType() {
        return this._dict.optString("type", null);
    }

    public String getRelationship() {
        return this._dict.optString("rel", null);
    }

    public final JSONObject getDictionary() {
        return this._dict;
    }

    public boolean isElement() {
        return (getName() == null || getType() == null) ? false : true;
    }

    public Object get(String str) {
        if ($assertionsDisabled || !(str.equals("children") || str.equals("components"))) {
            return this._dict.opt(str);
        }
        throw new AssertionError("The key " + str + " is a reserved key for a AdobeDCXManifestNode.");
    }

    public long getAbsoluteIndex() {
        AdobeDCXManifest adobeDCXManifest;
        if (this._manifest == null || (adobeDCXManifest = this._manifest.get()) == null) {
            return -1L;
        }
        return adobeDCXManifest.getAbsoluteIndexOf(this);
    }

    public String getDescription() {
        return String.format("%s", getDictionary());
    }

    public final AdobeDCXManifest getManifest() {
        if (this._manifest != null) {
            return this._manifest.get();
        }
        return null;
    }

    public String getParentPath() {
        return this._parentPath;
    }

    public String getParentId() {
        return this._parentId;
    }

    public boolean isRoot() {
        return this._isRoot;
    }
}
