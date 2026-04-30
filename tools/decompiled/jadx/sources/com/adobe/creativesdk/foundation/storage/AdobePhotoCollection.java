package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSPhotoEvent;
import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
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
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhotoCollection extends AdobePhoto implements UploadDestination<AdobePhotoCollection>, Externalizable {
    private AdobePhotoCatalog _catalog;
    private AdobePhotoAsset _coverAsset;
    private String _name;

    /* JADX INFO: loaded from: classes2.dex */
    public enum AdobePhotoCollectionFlag {
        ADOBE_PHOTO_COLLECTION_FLAG_REJECTED,
        ADOBE_PHOTO_COLLECTION_FLAG_UNFLAGGED,
        ADOBE_PHOTO_COLLECTION_FLAG_PICKED,
        ADOBE_PHOTO_COLLECTION_FLAG_ALL
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum AdobePhotoCollectionSort {
        ADOBE_PHOTO_COLLECTION_SORT_BY_DATE,
        ADOBE_PHOTO_COLLECTION_SORT_BY_CUSTOM_ORDER
    }

    public AdobePhotoCatalog getCatalog() {
        return this._catalog;
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        if (this._name == null) {
            this._name = str;
        } else if (!this._name.equals(str) && str.length() > 0) {
            this._name = str;
        }
    }

    public AdobePhotoAsset getCoverAsset() {
        return this._coverAsset;
    }

    public void setCoverAsset(AdobePhotoAsset adobePhotoAsset) {
        this._coverAsset = adobePhotoAsset;
    }

    public static AdobePhotoCollection create(final String str, AdobePhotoCatalog adobePhotoCatalog, final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeAuthException);
                }
            }
        }, "Create requires an authenticated user.")) {
            return null;
        }
        if (adobePhotoCatalog == null) {
            iAdobeGenericErrorCallback.onError(new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE));
            return null;
        }
        final AdobePhotoCollection adobePhotoCollection = new AdobePhotoCollection(str, null, adobePhotoCatalog);
        AdobePhotoSession adobePhotoSession = (AdobePhotoSession) adobePhotoCatalog.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
        if (adobePhotoSession == null) {
            return null;
        }
        final AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent = new AdobeAnalyticsETSPhotoEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSPhotoEvent.trackCloud(adobePhotoCollection.getCloud());
        adobePhotoSession.createCollectionAsync(adobePhotoCollection, adobePhotoCatalog, new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(AdobePhotoCollection adobePhotoCollection2) {
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection2);
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                    String str2 = adobePhotoCollection2._GUID;
                    String str3 = adobePhotoCollection2._name;
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                    adobeAnalyticsETSPhotoEvent2.trackContentInfo(str2, str3, "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO_ALBUM, null);
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent4 = adobeAnalyticsETSPhotoEvent;
                    AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent5 = adobeAnalyticsETSPhotoEvent;
                    adobeAnalyticsETSPhotoEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to create collection " + str);
                }
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent2 = adobeAnalyticsETSPhotoEvent;
                String str2 = adobePhotoCollection._GUID;
                String str3 = adobePhotoCollection._name;
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent3 = adobeAnalyticsETSPhotoEvent;
                adobeAnalyticsETSPhotoEvent2.trackContentInfo(str2, str3, "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_PHOTO_ALBUM, null);
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent4 = adobeAnalyticsETSPhotoEvent;
                AdobeAnalyticsETSPhotoEvent adobeAnalyticsETSPhotoEvent5 = adobeAnalyticsETSPhotoEvent;
                adobeAnalyticsETSPhotoEvent4.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            }
        });
        return adobePhotoCollection;
    }

    public void update(final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().updateCollection(this, new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.4
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.5
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to update collection " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void refresh(final IAdobeGenericCompletionCallback<AdobePhotoCollection> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().getCollection(this, new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.6
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(adobePhotoCollection);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.7
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to refresh collection " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void delete(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().deleteCollection(this, new IAdobeGenericCompletionCallback<AdobePhotoCollection>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.8
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobePhotoCollection adobePhotoCollection) {
                    if (iAdobeRequestCompletionCallback != null) {
                        iAdobeRequestCompletionCallback.onCompletion();
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.9
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to delete collection " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void addAsset(AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        ArrayList<AdobePhotoAsset> arrayList = new ArrayList<>();
        arrayList.add(adobePhotoAsset);
        addAssets(arrayList, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.10
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(arrayList2.get(0));
                }
            }
        }, iAdobeGenericErrorCallback);
    }

    public void addAssets(ArrayList<AdobePhotoAsset> arrayList, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().addAssets(arrayList, this, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.11
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList2);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.12
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to add assets to " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void updateAsset(AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        ArrayList<AdobePhotoAsset> arrayList = new ArrayList<>();
        arrayList.add(adobePhotoAsset);
        updateAssets(arrayList, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.13
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(arrayList2.get(0));
                }
            }
        }, iAdobeGenericErrorCallback);
    }

    public void updateAssets(ArrayList<AdobePhotoAsset> arrayList, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().updateAssets(arrayList, this, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.14
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList2);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.15
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to update assets to " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void removeAsset(AdobePhotoAsset adobePhotoAsset, final IAdobeGenericCompletionCallback<AdobePhotoAsset> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        ArrayList<AdobePhotoAsset> arrayList = new ArrayList<>();
        arrayList.add(adobePhotoAsset);
        removeAssets(arrayList, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.16
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(arrayList2.get(0));
                }
            }
        }, iAdobeGenericErrorCallback);
    }

    public void removeAssets(ArrayList<AdobePhotoAsset> arrayList, final IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().removeAssets(arrayList, this, new IAdobeGenericCompletionCallback<ArrayList<AdobePhotoAsset>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.17
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList2) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(arrayList2);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.18
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to remove assets from " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void listAssetsOnPage(AdobePhotoPage adobePhotoPage, AdobePhotoCollectionSort adobePhotoCollectionSort, int i, AdobePhotoCollectionFlag adobePhotoCollectionFlag, final IAdobePhotoAssetsListRequestCompletionHandler iAdobePhotoAssetsListRequestCompletionHandler, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().listAssetsInCollection(this, adobePhotoPage, adobePhotoCollectionSort, adobePhotoCollectionFlag, i, getCloud(), new IAdobePhotoAssetsListRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.19
                @Override // com.adobe.creativesdk.foundation.storage.IAdobePhotoAssetsListRequestCompletionHandler
                public void onCompletion(ArrayList<AdobePhotoAsset> arrayList, AdobePhotoPage adobePhotoPage2, AdobePhotoPage adobePhotoPage3) {
                    if (iAdobePhotoAssetsListRequestCompletionHandler != null) {
                        iAdobePhotoAssetsListRequestCompletionHandler.onCompletion(arrayList, adobePhotoPage2, adobePhotoPage3);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.20
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback == null) {
                        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Failed to list the assets in  " + this._name);
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public void assetCount(final IAdobeGenericCompletionCallback<Integer> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (getSession() != null) {
            getSession().getAssetCountInCollection(this, new IAdobeGenericCompletionCallback<Integer>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.21
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Integer num) {
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(num);
                    }
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobePhotoCollection.22
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            });
        }
    }

    public boolean isEqualToCollection(AdobePhotoCollection adobePhotoCollection) {
        return adobePhotoCollection != null && getGUID().equals(adobePhotoCollection.getGUID()) && getCatalog().isEqualToCatalog(adobePhotoCollection.getCatalog());
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this._name = (String) objectInput.readObject();
        this._catalog = (AdobePhotoCatalog) objectInput.readObject();
        this._coverAsset = (AdobePhotoAsset) objectInput.readObject();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto, java.io.Externalizable
    @Deprecated
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this._name);
        objectOutput.writeObject(this._catalog);
        objectOutput.writeObject(this._coverAsset);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobePhoto
    public AdobePhotoCollection getCopy() {
        AdobePhotoCollection adobePhotoCollection = new AdobePhotoCollection(this._name, this._GUID, this._catalog);
        if (this._coverAsset != null) {
            adobePhotoCollection.setCoverAsset(this._coverAsset);
        }
        return adobePhotoCollection;
    }

    @Deprecated
    public AdobePhotoCollection() {
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    @Deprecated
    public boolean isSameLocation(AdobePhotoCollection adobePhotoCollection) {
        return isEqualToCollection(adobePhotoCollection);
    }

    @Deprecated
    public AdobePhotoCollection(String str, String str2, AdobePhotoCatalog adobePhotoCatalog) {
        str2 = str2 == null ? AdobePhotoUtils.generateGUID() : str2;
        this._GUID = str2;
        this._name = str;
        this._href = "/v1.0/catalogs/" + adobePhotoCatalog.getGUID() + "/albums/" + str2;
        this._catalog = adobePhotoCatalog;
        this._cloud = adobePhotoCatalog.getCloud();
    }

    @Deprecated
    public boolean updateFromDictionary(JSONObject jSONObject, AdobePhotoCatalog adobePhotoCatalog) throws AdobePhotoException {
        String strOptString;
        if (jSONObject.optString("id", null) != null) {
            this._internalID = jSONObject.optString("id", null);
        }
        if (jSONObject.optString("_id", null) != null) {
            this._GUID = jSONObject.optString("_id", null);
        }
        if (jSONObject.optString("name", null) != null) {
            this._name = jSONObject.optString("name", null);
        }
        if (jSONObject.opt("created") != null) {
            this._creationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString("created"));
        }
        if (jSONObject.opt("update") != null) {
            this._modificationDate = AdobeStorageUtils.convertStringToDate(jSONObject.optString(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED));
        }
        if (this._modificationDate == null && this._creationDate != null) {
            this._modificationDate = this._creationDate;
        }
        this._catalog = adobePhotoCatalog;
        this._cloud = adobePhotoCatalog.getCloud();
        if (this._name == null) {
            throw new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, null, "Collection doesn't have a name");
        }
        if (this._creationDate == null) {
            AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Collection " + this._name + " doesn't have a creation time.");
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("cover");
        if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString("_id", null)) != null) {
            AdobePhotoAsset adobePhotoAsset = new AdobePhotoAsset(null, strOptString, adobePhotoCatalog);
            try {
                adobePhotoAsset.updateFromDictionary(jSONObjectOptJSONObject, adobePhotoCatalog);
            } catch (AdobePhotoException e2) {
            }
            this._coverAsset = adobePhotoAsset;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AdobePhotoSession.LINKS);
        if (jSONObjectOptJSONObject2 != null) {
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("self");
            if (jSONObjectOptJSONObject3 != null) {
                this._href = jSONObjectOptJSONObject3.optString("href", null);
                return true;
            }
            return true;
        }
        AdobeLogger.log(Level.WARN, AdobePhotoCollection.class.getSimpleName(), "Collection doesn't have an href.");
        this._href = null;
        return true;
    }

    @Deprecated
    public boolean updateFromData(String str, AdobePhotoCatalog adobePhotoCatalog) throws AdobePhotoException {
        if (str == null || str.equals("")) {
            return true;
        }
        return updateFromDictionary(AdobePhotoUtils.JSONObjectWithData(str), adobePhotoCatalog);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class PhotoCollectionDetails implements Serializable {
        AdobeCloud cloud;
        String collectionCatalogGUID;
        String collectionCatalogName;
        String collectionGUID;
        String collectionName;

        private PhotoCollectionDetails() {
        }

        public static PhotoCollectionDetails fromPhotoCollection(AdobePhotoCollection adobePhotoCollection) {
            PhotoCollectionDetails photoCollectionDetails = new PhotoCollectionDetails();
            photoCollectionDetails.collectionCatalogName = adobePhotoCollection.getCatalog().getName();
            photoCollectionDetails.collectionCatalogGUID = adobePhotoCollection.getCatalog().getGUID();
            photoCollectionDetails.cloud = adobePhotoCollection.getCatalog().getCloud();
            photoCollectionDetails.collectionName = adobePhotoCollection.getName();
            photoCollectionDetails.collectionGUID = adobePhotoCollection.getGUID();
            return photoCollectionDetails;
        }

        public AdobePhotoCollection getPhotoCollection() {
            return new AdobePhotoCollection(this.collectionName, this.collectionGUID, new AdobePhotoCatalog(this.collectionCatalogName, this.collectionCatalogGUID, this.cloud));
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    @Deprecated
    public String getId() {
        if (this._GUID == null && (this._catalog == null || this._catalog.getGUID() == null)) {
            return null;
        }
        StringBuilder sbAppend = new StringBuilder().append(this._GUID == null ? "" : this._GUID);
        String guid = (this._catalog == null || this._catalog.getGUID() == null) ? "" : this._catalog.getGUID();
        return sbAppend.append(guid).toString();
    }
}
