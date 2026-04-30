package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.adobe.creativesdk.foundation.internal.util.AdobePhotoUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoCatalog extends AdobePhoto implements Externalizable {
    private boolean _inSync;
    private String _name;
    private boolean _shared;
    private AdobePhotoCatalogType _type;

    /* JADX INFO: loaded from: classes2.dex */
    public enum AdobePhotoCatalogType {
        AdobePhotoCatalogTypeLightroom
    }

    public boolean isShared() {
        return this._shared;
    }

    void setShared(boolean z) {
        this._shared = z;
    }

    public boolean isInSync() {
        return this._inSync;
    }

    void setInSync(boolean z) {
        this._inSync = z;
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        if (str != null && !this._name.equals(str) && str.length() > 0) {
            this._name = str;
        }
    }

    public AdobePhotoCatalogType getType() {
        return this._type;
    }

    void setType(AdobePhotoCatalogType adobePhotoCatalogType) {
        this._type = adobePhotoCatalogType;
    }

    public void update(final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().updateCatalog(this, new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCatalog adobePhotoCatalog) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed to update catalog " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void refresh(final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().getCatalog(this, new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCatalog adobePhotoCatalog) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed to refresh the catalog " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void delete(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().deleteCatalog(this, new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.5
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCatalog adobePhotoCatalog) {
                    if (iAdobeRequestCompletionCallback != null) {
                        iAdobeRequestCompletionCallback.onCompletion();
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.6
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed to delete the catalog " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public static void listCatalogOfType(AdobePhotoCatalogType adobePhotoCatalogType, IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        listCatalogOfType(adobePhotoCatalogType, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public void listCollectionsAfterName(String str, int i, boolean z, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().listCollectionsInCatalog(this, getCloud(), new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCollection>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.7
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoCollection> arrayList) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.8
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed list the collections in catalog " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void collectionCount(final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().getCollectionCountInCatalog(this, new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.9
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Integer num) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(num);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.10
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void assetCount(final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().getAssetCountInCatalog(this, new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.11
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Integer num) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(num);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.12
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public boolean isEqualToCatalog(AdobePhotoCatalog adobePhotoCatalog) {
        if (this._GUID == null && adobePhotoCatalog.getGUID() == null) {
            return true;
        }
        if (this._GUID == null || adobePhotoCatalog.getGUID() == null) {
            return false;
        }
        return this._GUID.equals(adobePhotoCatalog.getGUID());
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto
    public AdobePhotoCatalog getCopy() {
        return new AdobePhotoCatalog(this._name, this._GUID, this._cloud);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this._name = (String) objectInput.readObject();
        this._inSync = objectInput.readBoolean();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this._name);
        objectOutput.writeBoolean(this._inSync);
    }

    public AdobePhotoCatalog() {
    }

    @Deprecated
    public AdobePhotoCatalog(String str, String str2, AdobeCloud adobeCloud) {
        str2 = str2 == null ? AdobePhotoUtils.generateGUID() : str2;
        this._GUID = str2;
        this._name = str;
        this._href = String.format("/v1.0/catalogs/%s", str2);
        this._inSync = false;
        this._cloud = adobeCloud;
    }

    @Deprecated
    public AdobePhotoCatalog(String str, String str2, AdobeCloud adobeCloud, AdobePhotoCatalogType adobePhotoCatalogType) {
        this(str, str2, adobeCloud);
        this._type = adobePhotoCatalogType;
    }

    @Deprecated
    public boolean updateFromDictionary(JSONObject jSONObject) throws AdobePhotoException {
        this._inSync = true;
        if (jSONObject.optString("id", null) != null) {
            this._internalID = jSONObject.optString("id", null);
        }
        if (jSONObject.optString("_id", null) != null) {
            this._GUID = jSONObject.optString("_id", null);
        }
        if (jSONObject.optString("name", null) != null) {
            try {
                this._name = URLDecoder.decode(jSONObject.optString("name", null), "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        if (jSONObject.opt("created") != null) {
            this._creationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString("created"));
        }
        if (jSONObject.opt(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED) != null) {
            this._modificationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED));
        }
        if (this._modificationDate == null && this._creationDate != null) {
            this._modificationDate = this._creationDate;
        }
        if (jSONObject.optString("subtype", null) != null && jSONObject.optString("subtype", null).equals("lightroom")) {
            this._type = AdobePhotoCatalogType.AdobePhotoCatalogTypeLightroom;
        }
        if (this._name == null) {
            throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Catalog doesn't have a name");
        }
        if (this._creationDate == null) {
            AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Catalog " + this._name + " doesn't have a creation time.");
        }
        if (jSONObject.optString("sharing", null) == null) {
            this._shared = false;
        } else {
            this._shared = true;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AdobePhotoSession.LINKS);
        if (jSONObjectOptJSONObject != null) {
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("self");
            if (jSONObjectOptJSONObject2 != null) {
                this._href = jSONObjectOptJSONObject2.optString("href", null);
            }
        } else {
            AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Catalog doesn't have an href.");
            this._href = null;
        }
        return true;
    }

    @Deprecated
    public boolean updateFromData(String str) throws AdobePhotoException {
        this._inSync = true;
        if (str == null || str.equals("")) {
            return true;
        }
        JSONObject jSONObjectJSONObjectWithData = AdobePhotoUtils.JSONObjectWithData(str);
        if (jSONObjectJSONObjectWithData != null) {
            return updateFromDictionary(jSONObjectJSONObjectWithData);
        }
        throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Parsed catalog data is not of type dictionary.");
    }

    protected static AdobePhotoCatalog create(final String str, AdobePhotoCatalogType adobePhotoCatalogType, AdobeCloud adobeCloud, final IAdobeGenericCompletionCallback<AdobePhotoCatalog> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobePhotoCatalog adobePhotoCatalog = new AdobePhotoCatalog(str, null, adobeCloud);
        AdobePhotoSession adobePhotoSession = (AdobePhotoSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        if (adobePhotoSession == null) {
            return null;
        }
        adobePhotoSession.createCatalog(adobePhotoCatalog, adobePhotoCatalogType, new IAdobeGenericCompletionCallback<AdobePhotoCatalog>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.13
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCatalog adobePhotoCatalog2) {
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCatalog2);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.14
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed to create catalog " + str);
                }
            }
        });
        return adobePhotoCatalog;
    }

    @Deprecated
    public static void listCatalogOfType(AdobePhotoCatalogType adobePhotoCatalogType, AdobeCloud adobeCloud, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobePhotoSession adobePhotoSession;
        if (adobeCloud != null && (adobePhotoSession = (AdobePhotoSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto)) != null) {
            adobePhotoSession.listCatalogsOfType(adobePhotoCatalogType, adobeCloud, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoCatalog>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.15
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoCatalog> arrayList) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCatalog.16
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    } else {
                        AdobeLogger.log(Level.WARN, AdobePhotoCatalog.class.getSimpleName(), "Failed to list the catalogs");
                    }
                }
            });
        }
    }
}
