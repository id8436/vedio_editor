package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360Context {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String Adobe360ContextAppNameKey = "application-name";
    public static final String Adobe360ContextLibraryRefKey = "library";
    public static final String Adobe360ContextProjectRefKey = "project";
    public static final String Adobe360ContextUserKey = "user";
    private JSONObject _dictionary;

    static {
        $assertionsDisabled = !Adobe360Context.class.desiredAssertionStatus();
    }

    private Adobe360Context(String str, String str2, Adobe360CloudAssetReference adobe360CloudAssetReference, Adobe360CloudAssetReference adobe360CloudAssetReference2) {
        this._dictionary = new JSONObject();
        if (str != null) {
            try {
                this._dictionary.put(Adobe360ContextAppNameKey, str);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
                return;
            }
        }
        if (str2 != null) {
            this._dictionary.put("user", str2);
        }
        if (adobe360CloudAssetReference != null) {
            this._dictionary.put("project", adobe360CloudAssetReference.getDictionary());
        }
        if (adobe360CloudAssetReference2 != null) {
            this._dictionary.put("library", adobe360CloudAssetReference2.getDictionary());
        }
    }

    private Adobe360Context(JSONObject jSONObject) {
        this._dictionary = jSONObject;
    }

    protected JSONObject getDictionary() {
        return this._dictionary;
    }

    public static Adobe360Context createContextWithAppName(String str, String str2, Adobe360CloudAssetReference adobe360CloudAssetReference, Adobe360CloudAssetReference adobe360CloudAssetReference2) {
        return new Adobe360Context(str, str2, adobe360CloudAssetReference, adobe360CloudAssetReference2);
    }

    protected static Adobe360Context createContextWithDictionary(JSONObject jSONObject) {
        return new Adobe360Context(AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject));
    }

    public String getAppName() {
        return (String) this._dictionary.opt(Adobe360ContextAppNameKey);
    }

    public void setAppName(String str) {
        try {
            if (str != null) {
                this._dictionary.put(Adobe360ContextAppNameKey, str);
            } else {
                this._dictionary.remove(Adobe360ContextAppNameKey);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public String getUserEntityRef() {
        return (String) this._dictionary.opt("user");
    }

    public void setUserEntityRef(String str) {
        try {
            if (str != null) {
                this._dictionary.put("user", str);
            } else {
                this._dictionary.remove("user");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public Adobe360CloudAssetReference getProjectRef() {
        JSONObject jSONObject = (JSONObject) this._dictionary.opt("project");
        if (jSONObject != null) {
            return Adobe360CloudAssetReference.createCloudAssetReferenceWithDictionary(jSONObject);
        }
        return null;
    }

    public void setProjectRef(Adobe360CloudAssetReference adobe360CloudAssetReference) {
        try {
            if (adobe360CloudAssetReference != null) {
                this._dictionary.put("project", adobe360CloudAssetReference.getDictionary());
            } else {
                this._dictionary.remove("project");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public Adobe360CloudAssetReference getLibraryRef() {
        JSONObject jSONObject = (JSONObject) this._dictionary.opt("library");
        if (jSONObject != null) {
            return Adobe360CloudAssetReference.createCloudAssetReferenceWithDictionary(jSONObject);
        }
        return null;
    }

    public void setLibraryRef(Adobe360CloudAssetReference adobe360CloudAssetReference) {
        try {
            if (adobe360CloudAssetReference != null) {
                this._dictionary.put("library", adobe360CloudAssetReference.getDictionary());
            } else {
                this._dictionary.remove("library");
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
        }
    }

    public Adobe360Context getCopy() {
        return createContextWithDictionary(this._dictionary);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return Adobe360Utils.jsonObjsAreEqual(this._dictionary, ((Adobe360Context) obj).getDictionary());
    }

    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
