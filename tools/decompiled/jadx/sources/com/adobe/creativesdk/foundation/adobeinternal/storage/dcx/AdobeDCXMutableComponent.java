package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMutableComponent extends AdobeDCXComponent {
    private void init() {
        this._dict = new JSONObject();
        try {
            this._dict.put("id", "");
            this._dict.put("path", "");
            this._dict.put("name", "");
            this._dict.put("type", "");
            this._dict.put(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, (Object) null);
            this._dict.put("state", "");
            this._dict.put("etag", "");
        } catch (JSONException e2) {
        }
    }

    public AdobeDCXMutableComponent(JSONObject jSONObject, AdobeDCXManifest adobeDCXManifest, String str, String str2) {
        super(jSONObject, adobeDCXManifest, str, str2);
    }

    public AdobeDCXMutableComponent(String str, String str2, String str3, String str4, JSONObject jSONObject, String str5) {
        init();
        try {
            if (str == null) {
                this._dict.put("id", AdobeStorageUtils.generateUuid());
            } else {
                this._dict.put("id", str);
            }
            if (str2 != null) {
                this._dict.put("path", str2);
            }
            if (str3 != null) {
                this._dict.put("name", str3);
            }
            if (str4 != null) {
                this._dict.put("type", str4);
            }
            if (jSONObject != null) {
                this._dict.put(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, jSONObject);
            }
            if (str5 != null) {
                this._dict.put("state", str5);
            }
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.Constructor", e2.getMessage());
        }
    }

    public static AdobeDCXMutableComponent createComponentWithId(String str, String str2, String str3, String str4, String str5) {
        AdobeDCXMutableComponent adobeDCXMutableComponent = new AdobeDCXMutableComponent(str, str2, str3, str4, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
        adobeDCXMutableComponent.setRelationship(str5);
        return adobeDCXMutableComponent;
    }

    public void setComponentId(String str) {
        if (str != null) {
            try {
                this._dict.put("id", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setComponentId", e2.getMessage());
                return;
            }
        }
        this._dict.remove("id");
    }

    public void setPath(String str) {
        if (str != null) {
            try {
                this._dict.put("path", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setPath", e2.getMessage());
                return;
            }
        }
        this._dict.remove("path");
    }

    void setParentPath(String str) {
        this._parentPath = str;
    }

    public void setName(String str) {
        if (str != null) {
            try {
                this._dict.put("name", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setName", e2.getMessage());
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
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setType", e2.getMessage());
                return;
            }
        }
        this._dict.remove("type");
    }

    public void setRelationship(String str) {
        if (str != null) {
            try {
                this._dict.put("rel", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setRelationship", e2.getMessage());
                return;
            }
        }
        this._dict.remove("rel");
    }

    public void setLinks(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this._dict.put(AdobeCommunityConstants.AdobeCommunityResourceLinkKey, jSONObject);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setLinks", e2.getMessage());
                return;
            }
        }
        this._dict.remove(AdobeCommunityConstants.AdobeCommunityResourceLinkKey);
    }

    public void setState(String str) {
        if (str != null) {
            try {
                this._dict.put("state", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setState", e2.getMessage());
                return;
            }
        }
        this._dict.remove("state");
    }

    public void setEtag(String str) {
        if (str != null) {
            try {
                this._dict.put("etag", str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setEtag", e2.getMessage());
                return;
            }
        }
        this._dict.remove("etag");
    }

    public void setMd5(String str) {
        if (str != null) {
            try {
                this._dict.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, str);
                return;
            } catch (JSONException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setMd5", e2.getMessage());
                return;
            }
        }
        this._dict.remove(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
    }

    public void setVersion(String str) {
        try {
            this._dict.put(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, str);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setVersion", e2.getMessage());
        }
    }

    public void setLength(long j) {
        try {
            this._dict.put("length", j);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setLength", e2.getMessage());
        }
    }

    public void setWidth(int i) {
        try {
            this._dict.put("width", i);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setWidth", e2.getMessage());
        }
    }

    public void setHeight(int i) {
        try {
            this._dict.put("height", i);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setHeight", e2.getMessage());
        }
    }

    public void setValue(Object obj, String str) {
        AdobeStorageErrorUtils.verifyArgument(!AdobeDCXManifest.getReservedComponentPropertyKeys().contains(str), String.format("The key %s is a reserved key for a AdobeDCXMutableComponent.", str));
        try {
            this._dict.putOpt(str, obj);
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMutableComponent.setValue", e2.getMessage());
        }
    }

    public void remove(String str) {
        AdobeStorageErrorUtils.verifyArgument(!AdobeDCXManifest.getReservedComponentPropertyKeys().contains(str), String.format("The key %s is a reserved key for a AdobeDCXMutableComponent.", str));
        this._dict.remove(str);
    }
}
