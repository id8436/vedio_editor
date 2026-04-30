package com.adobe.creativesdk.foundation.internal.utils;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeJSONObject {
    JSONObject jsonObject;

    public AdobeJSONObject(String str) throws JSONException {
        this.jsonObject = new JSONObject(str);
    }

    public String getString(String str) {
        if (!this.jsonObject.has(str)) {
            return null;
        }
        try {
            return this.jsonObject.getString(str);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, AdobeJSONObject.class.getName(), "Error during getString operation", e2);
            return null;
        }
    }

    public JSONArray getJSONArray(String str) {
        try {
            return this.jsonObject.getJSONArray(str);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, AdobeJSONObject.class.getName(), "Error during getJSONArray operation", e2);
            return null;
        }
    }

    public String toString() {
        return this.jsonObject.toString();
    }

    public boolean has(String str) {
        return this.jsonObject.has(str);
    }
}
