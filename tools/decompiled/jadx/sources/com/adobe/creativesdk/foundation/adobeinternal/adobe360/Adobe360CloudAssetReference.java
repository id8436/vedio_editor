package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360CloudAssetReference {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String Adobe360CloudAssetReferenceCloudHrefKey = "cloud-href";
    public static final String Adobe360CloudAssetReferenceCloudNameKey = "cloud-name";
    public static final String Adobe360CloudAssetReferenceHrefKey = "href";
    public static final String Adobe360CloudAssetReferenceNameKey = "name";
    private JSONObject _dictionary;

    static {
        $assertionsDisabled = !Adobe360CloudAssetReference.class.desiredAssertionStatus();
    }

    private Adobe360CloudAssetReference(String str, String str2, String str3, String str4) {
        this._dictionary = new JSONObject();
        if (str != null) {
            try {
                this._dictionary.put("href", str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
                return;
            }
        }
        if (str2 != null) {
            this._dictionary.put("name", str2);
        }
        if (str3 != null) {
            this._dictionary.put(Adobe360CloudAssetReferenceCloudNameKey, str3);
        }
        if (str4 != null) {
            this._dictionary.put(Adobe360CloudAssetReferenceCloudHrefKey, str4);
        }
    }

    private Adobe360CloudAssetReference(JSONObject jSONObject) {
        this._dictionary = jSONObject;
    }

    protected JSONObject getDictionary() {
        return this._dictionary;
    }

    public static Adobe360CloudAssetReference createCloudAssetReferenceWithHref(String str, String str2, String str3, String str4) {
        return new Adobe360CloudAssetReference(str, str2, str3, str4);
    }

    protected static Adobe360CloudAssetReference createCloudAssetReferenceWithDictionary(JSONObject jSONObject) {
        return new Adobe360CloudAssetReference(AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject));
    }

    public String getHref() {
        return (String) this._dictionary.opt("href");
    }

    public void setHref(String str) {
        try {
            if (str != null) {
                this._dictionary.put("href", str);
            } else {
                this._dictionary.remove("href");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public String getName() {
        return (String) this._dictionary.opt("name");
    }

    public void setName(String str) {
        try {
            if (str != null) {
                this._dictionary.put("name", str);
            } else {
                this._dictionary.remove("name");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public String getCloudName() {
        return (String) this._dictionary.opt(Adobe360CloudAssetReferenceCloudNameKey);
    }

    public void setCloudName(String str) {
        try {
            if (str != null) {
                this._dictionary.put(Adobe360CloudAssetReferenceCloudNameKey, str);
            } else {
                this._dictionary.remove(Adobe360CloudAssetReferenceCloudNameKey);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public String getCloudHref() {
        return (String) this._dictionary.opt(Adobe360CloudAssetReferenceCloudHrefKey);
    }

    public void setCloudHref(String str) {
        try {
            if (str != null) {
                this._dictionary.put(Adobe360CloudAssetReferenceCloudHrefKey, str);
            } else {
                this._dictionary.remove(Adobe360CloudAssetReferenceCloudHrefKey);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public Adobe360CloudAssetReference getCopy() {
        return createCloudAssetReferenceWithDictionary(this._dictionary);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return Adobe360Utils.jsonObjsAreEqual(this._dictionary, ((Adobe360CloudAssetReference) obj).getDictionary());
    }

    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
