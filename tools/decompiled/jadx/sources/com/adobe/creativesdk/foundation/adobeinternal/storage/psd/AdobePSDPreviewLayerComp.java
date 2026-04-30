package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePSDPreviewLayerComp {
    private int layerCompId;
    private String name;

    public AdobePSDPreviewLayerComp(JSONObject jSONObject) {
        try {
            this.name = jSONObject.getString("name");
            this.layerCompId = jSONObject.getInt("id");
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDPreviewLayerComp.Constructor", e2.getMessage());
        }
    }

    public String getName() {
        return this.name;
    }

    public int getLayerCompId() {
        return this.layerCompId;
    }
}
