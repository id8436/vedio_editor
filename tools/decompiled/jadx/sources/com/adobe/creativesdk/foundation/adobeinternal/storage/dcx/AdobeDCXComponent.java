package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXComponent {
    protected JSONObject _dict;
    protected WeakReference<AdobeDCXManifest> _manifest;
    protected String _parentId;
    protected String _parentPath;

    public AdobeDCXComponent(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str, String str2) {
        this._dict = jSONObject;
        this._manifest = new WeakReference<>(adobeDCXManifest);
        this._parentPath = str;
        this._parentId = str2;
    }

    protected AdobeDCXComponent() {
    }

    public static AdobeDCXComponent createComponentFromDictionary(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str, String str2) {
        return new AdobeDCXComponent(jSONObject, adobeDCXManifest, str, str2);
    }

    public AdobeDCXMutableComponent getMutableCopy() {
        return new AdobeDCXMutableComponent(AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this._dict), getManifest(), this._parentPath, this._parentId);
    }

    public final JSONObject getDictionary() {
        return this._dict;
    }

    public AdobeDCXManifest getManifest() {
        if (this._manifest != null) {
            return this._manifest.get();
        }
        return null;
    }

    public String getComponentId() {
        return this._dict.optString("id");
    }

    public String getPath() {
        return this._dict.optString("path", null);
    }

    String getParentPath() {
        return this._parentPath;
    }

    String getParentId() {
        return this._parentId;
    }

    public String getAbsolutePath() {
        return AdobeDCXUtils.stringByAppendingLastPathComponent(this._parentPath, getPath());
    }

    public String getName() {
        return this._dict.optString("name", null);
    }

    public String getRelationship() {
        return this._dict.optString("rel", null);
    }

    public String getType() {
        return this._dict.optString("type", null);
    }

    public String getState() {
        return this._dict.optString("state", null);
    }

    public String getEtag() {
        return this._dict.optString("etag", null);
    }

    public String getMd5() {
        return this._dict.optString(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, null);
    }

    public String getVersion() {
        return this._dict.optString(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, null);
    }

    public long getLength() {
        return this._dict.optLong("length", -1L);
    }

    public int getWidth() {
        return this._dict.optInt("width");
    }

    public int getHeight() {
        return this._dict.optInt("height");
    }

    public boolean isBound() {
        if (this._manifest == null) {
            return false;
        }
        AdobeDCXManifest adobeDCXManifest = this._manifest.get();
        return adobeDCXManifest != null && adobeDCXManifest.componentIsBound(this);
    }

    public final JSONObject getLinks() {
        return this._dict.optJSONObject(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
    }

    public final Object getValueForKey(String str) {
        return this._dict.opt(str);
    }

    public List<String> getCustomKeys() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = this._dict.keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        arrayList.removeAll(AdobeDCXManifest.getReservedComponentPropertyKeys());
        return arrayList;
    }
}
