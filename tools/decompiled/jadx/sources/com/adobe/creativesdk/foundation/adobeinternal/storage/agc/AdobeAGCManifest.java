package com.adobe.creativesdk.foundation.adobeinternal.storage.agc;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAGCManifest {
    private String _contentType = "application/vnd.adobe.graphicsComposite.master+json";
    private JSONObject _data;

    public AdobeAGCManifest(JSONObject jSONObject) {
        this._data = jSONObject;
    }

    public JSONObject getData() {
        return this._data;
    }

    public String getContentType() {
        return this._contentType;
    }
}
