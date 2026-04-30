package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementSessionNotificationKeys;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementUtils;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeEntitlementServices implements Observer {
    public static final String AdobeEntitlementServiceAllowMobile = "allow_mobile";
    public static final String AdobeEntitlementServiceAssets = "storage";
    public static final String AdobeEntitlementServiceBehance = "behance";
    private static final String AdobeEntitlementServiceCCPrivateStorage = "private_cloud";
    private static final String AdobeEntitlementServiceCCPublicStorage = "public_cloud";
    public static final String AdobeEntitlementServiceCCV = "ccv";
    public static final String AdobeEntitlementServiceCollaboration = "collaboration";
    public static final String AdobeEntitlementServiceColor = "color";
    public static final String AdobeEntitlementServiceDesignAssets = "design_assets";
    public static final String AdobeEntitlementServiceEdgeInspect = "edge_inspect";
    public static final String AdobeEntitlementServiceExtract = "extract";
    public static final String AdobeEntitlementServiceFileSync = "file_sync";
    public static final String AdobeEntitlementServiceImage = "image";
    public static final String AdobeEntitlementServiceLibraries = "libraries";
    public static final String AdobeEntitlementServiceLightroom = "lightroom";
    public static final String AdobeEntitlementServicePhoneGapBuild = "phonegap_build";
    public static final String AdobeEntitlementServicePremiereClip = "premiere_clip";
    public static final String AdobeEntitlementServicePreview = "preview";
    public static final String AdobeEntitlementServiceStock = "stock";
    public static final String AdobeEntitlementServiceStorage = "cc_storage";
    public static final String AdobeEntitlementServiceStory = "story";
    public static final String AdobeEntitlementServiceSyncMetadata = "sync_metadata";
    public static final String AdobeEntitlementServiceSyncSettings = "sync_settings";
    public static final String AdobeEntitlementServiceTypekit = "typekit";
    private static volatile AdobeEntitlementServices _sharedServices = null;
    public static final String kEntitledKey = "entitled";
    public static final String kServiceLevelKey = "service_level";
    private boolean _accessToPrivateStorageServices;
    private boolean _accessToPublicStorageServices;
    private HashMap<String, AdobeCloudServicePrerequisite> _servicePrerequisite;
    private boolean _ignoreNotification = false;
    private JSONObject _userPublicServices = new JSONObject();

    public enum AdobeCloudServicePrerequisite {
        AdobeCloudServicePrerequisiteNone,
        AdobeCloudServicePrerequisiteStorageFile,
        AdobeCloudServicePrerequisiteStorageAsset,
        AdobeCloudServicePrerequisiteStorageLibrary,
        AdobeCloudServicePrerequisiteStorageArchive,
        AdobeCloudServicePrerequisitePhoto,
        AdobeCloudServicePrerequisiteMarket,
        AdobeCloudServicePrerequisiteImage
    }

    public JSONObject getServices() {
        return this._userPublicServices;
    }

    public boolean hasAccessToPublicStorageServices() {
        return this._accessToPublicStorageServices;
    }

    public void setAccessToPublicStorageServices(boolean z) {
        this._accessToPublicStorageServices = z;
    }

    public boolean hasAccessToPrivateStorageServices() {
        return this._accessToPrivateStorageServices;
    }

    public void setAccessToPrivateStorageServices(boolean z) {
        this._accessToPrivateStorageServices = z;
    }

    private AdobeEntitlementServices() {
        this._servicePrerequisite = null;
        this._servicePrerequisite = new HashMap<>();
        this._servicePrerequisite.put("private_cloud", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageFile);
        this._servicePrerequisite.put("public_cloud", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageFile);
        this._servicePrerequisite.put(AdobeEntitlementServiceStorage, AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageFile);
        this._servicePrerequisite.put(AdobeEntitlementServiceBehance, AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("story", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("phonegap_build", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("lightroom", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisitePhoto);
        this._servicePrerequisite.put("edge_inspect", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("premiere_clip", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("image", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteImage);
        this._servicePrerequisite.put("extract", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("preview", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("allow_mobile", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("file_sync", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("collaboration", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("storage", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageFile);
        this._servicePrerequisite.put("libraries", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageLibrary);
        this._servicePrerequisite.put("design_assets", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteMarket);
        this._servicePrerequisite.put("color", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("sync_settings", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("sync_metadata", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        this._servicePrerequisite.put("stock", AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteNone);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeEntilementUserProfileDataFetchNotification, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[Catch: all -> 0x005e, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0004, B:6:0x0008, B:8:0x0019, B:10:0x0022, B:11:0x0029, B:13:0x0037, B:14:0x003e, B:15:0x0043, B:20:0x0051, B:16:0x004c), top: B:27:0x0004, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices getSharedServices() {
        /*
            r0 = 1
            java.lang.Class<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices> r2 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.class
            monitor-enter(r2)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r1 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices     // Catch: java.lang.Throwable -> L5e
            if (r1 != 0) goto L4c
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r1 = new com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices     // Catch: java.lang.Throwable -> L5e
            r1.<init>()     // Catch: java.lang.Throwable -> L5e
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices = r1     // Catch: java.lang.Throwable -> L5e
            com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession r1 = com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.getSharedSession()     // Catch: java.lang.Throwable -> L5e
            org.json.JSONObject r3 = r1.getUserProfileFromCache()     // Catch: java.lang.Throwable -> L5e
            if (r3 == 0) goto L4c
            java.lang.String r1 = "public_cloud"
            java.lang.Object r1 = r3.opt(r1)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L61
            java.lang.String r1 = "public_cloud"
            boolean r1 = r3.optBoolean(r1)     // Catch: java.lang.Throwable -> L5e
        L29:
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r4 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices     // Catch: java.lang.Throwable -> L5e
            r4.setAccessToPublicStorageServices(r1)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r1 = "private_cloud"
            java.lang.Object r1 = r3.opt(r1)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L3e
            java.lang.String r0 = "private_cloud"
            boolean r0 = r3.optBoolean(r0)     // Catch: java.lang.Throwable -> L5e
        L3e:
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r1 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices     // Catch: java.lang.Throwable -> L5e
            r1.setAccessToPrivateStorageServices(r0)     // Catch: java.lang.Throwable -> L5e
            org.json.JSONObject r0 = com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementUtils.getServicesForUserProfile(r3)     // Catch: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException -> L50 java.lang.Throwable -> L5e
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r1 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices     // Catch: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException -> L50 java.lang.Throwable -> L5e
            r1.updateServices(r0)     // Catch: com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException -> L50 java.lang.Throwable -> L5e
        L4c:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5e
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r0 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices._sharedServices
            return r0
        L50:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L5e
            java.lang.Class<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices> r3 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.class
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L5e
            r4 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r3, r4, r0)     // Catch: java.lang.Throwable -> L5e
            goto L4c
        L5e:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5e
            throw r0
        L61:
            r1 = r0
            goto L29
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.getSharedServices():com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices");
    }

    protected static AdobeEntitlementServices getSharedServicesWithServices(JSONObject jSONObject) throws AdobeEntitlementException {
        if (_sharedServices == null) {
            _sharedServices = new AdobeEntitlementServices();
        }
        _sharedServices.updateServices(jSONObject);
        return _sharedServices;
    }

    protected void updateServices(JSONObject jSONObject) {
        this._userPublicServices = jSONObject;
    }

    public boolean isEntitledToService(String str, AdobeCloud adobeCloud) {
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (adobeCloud == null) {
            return true;
        }
        boolean zPrereqSatisfiedForService = prereqSatisfiedForService(str, adobeCloud);
        if (zPrereqSatisfiedForService && this._userPublicServices != null && this._userPublicServices.opt(str) != null) {
            if (this._userPublicServices.opt(str) != null) {
                return this._userPublicServices.optJSONObject(str).optBoolean("entitled");
            }
            return false;
        }
        return zPrereqSatisfiedForService;
    }

    public AdobeEntitlementServiceLevel levelForService(String str, AdobeCloud adobeCloud) {
        String strOptString;
        AdobeEntitlementServiceLevel adobeEntitlementServiceLevel = AdobeEntitlementServiceLevel.AdobeEntitlementServiceLevelUnknown;
        if (adobeCloud == null) {
            adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        if (prereqSatisfiedForService(str, adobeCloud) && this._userPublicServices.length() > 0 && this._userPublicServices.opt(str) != null && (strOptString = this._userPublicServices.optJSONObject(str).optString("service_level")) != null) {
            if (strOptString.equalsIgnoreCase("free_basic")) {
                return AdobeEntitlementServiceLevel.AdobeEntitlementServiceLevelFreeBasic;
            }
            if (strOptString.equalsIgnoreCase("paid_lvl_1")) {
                return AdobeEntitlementServiceLevel.AdobeEntitlementServiceLevelPaidOne;
            }
            if (strOptString.equalsIgnoreCase("paid_lvl_2")) {
                return AdobeEntitlementServiceLevel.AdobeEntitlementServiceLevelPaidTwo;
            }
            if (strOptString.equalsIgnoreCase("paid_lvl_3")) {
                return AdobeEntitlementServiceLevel.AdobeEntitlementServiceLevelPaidThree;
            }
            return adobeEntitlementServiceLevel;
        }
        return adobeEntitlementServiceLevel;
    }

    private boolean prereqSatisfiedForService(String str, AdobeCloud adobeCloud) {
        if (this._servicePrerequisite.get(str) == null) {
            return true;
        }
        AdobeCloudServicePrerequisite adobeCloudServicePrerequisite = this._servicePrerequisite.get(str);
        switch (adobeCloudServicePrerequisite) {
            case AdobeCloudServicePrerequisiteImage:
                break;
            case AdobeCloudServicePrerequisiteMarket:
                if (adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeMarket) == null) {
                }
                break;
            case AdobeCloudServicePrerequisitePhoto:
                if (adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto) == null) {
                }
                break;
            case AdobeCloudServicePrerequisiteStorageAsset:
            case AdobeCloudServicePrerequisiteStorageFile:
            case AdobeCloudServicePrerequisiteStorageLibrary:
            case AdobeCloudServicePrerequisiteStorageArchive:
                AdobeCloudServiceSession sessionForService = adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
                if (sessionForService == null) {
                    break;
                } else if (adobeCloudServicePrerequisite == AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageAsset) {
                    if (sessionForService.getServiceForSchemaId("assets") == null) {
                    }
                    break;
                } else if (adobeCloudServicePrerequisite == AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageFile) {
                    if (sessionForService.getServiceForSchemaId("files") == null) {
                    }
                    break;
                } else if (adobeCloudServicePrerequisite == AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageLibrary) {
                    if (sessionForService.getServiceForSchemaId("libraries") == null) {
                    }
                    break;
                } else if (adobeCloudServicePrerequisite == AdobeCloudServicePrerequisite.AdobeCloudServicePrerequisiteStorageArchive && sessionForService.getServiceForSchemaId(AdobeStorageSession.AdobeStorageSessionArchiveServiceTag) == null) {
                    break;
                }
                break;
        }
        return true;
    }

    protected void refreshServices(final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        this._ignoreNotification = true;
        AdobeEntitlementSession.getSharedSession().getUserProfileForToken(sharedInstance.getAccessToken(), new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                try {
                    AdobeEntitlementServices.this.setAccessToPublicStorageServices(jSONObject.opt("public_cloud") != null ? jSONObject.optBoolean("public_cloud") : true);
                    AdobeEntitlementServices.this.setAccessToPrivateStorageServices(jSONObject.opt("private_cloud") != null ? jSONObject.optBoolean("private_cloud") : true);
                    JSONObject servicesForUserProfile = AdobeEntitlementUtils.getServicesForUserProfile(jSONObject);
                    if (!AdobeEntitlementUtils.areValuesEqual(servicesForUserProfile, AdobeEntitlementServices.this.getServices())) {
                        this.updateServices(servicesForUserProfile);
                    }
                } catch (AdobeEntitlementException e2) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(e2);
                        AdobeLogger.log(Level.DEBUG, AdobeEntitlementServices.class.getSimpleName(), null, e2);
                        return;
                    }
                }
                if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(AdobeEntitlementServices.this._userPublicServices);
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(final AdobeCSDKException adobeCSDKException) {
                if (iAdobeGenericErrorCallback != null) {
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericErrorCallback.onError(adobeCSDKException);
                            }
                        });
                    } else {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                }
            }
        }, handler);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        AdobeNotification adobeNotification = (AdobeNotification) obj;
        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeEntilementUserProfileDataFetchNotification) {
            if (this._ignoreNotification) {
                this._ignoreNotification = false;
                return;
            }
            JSONObject jSONObject = (JSONObject) adobeNotification.getInfo().get(AdobeEntitlementSessionNotificationKeys.AdobeEntitlementSessionUserProfileData);
            setAccessToPublicStorageServices(jSONObject.opt("public_cloud") != null ? jSONObject.optBoolean("public_cloud") : true);
            setAccessToPrivateStorageServices(jSONObject.opt("private_cloud") != null ? jSONObject.optBoolean("private_cloud") : true);
            try {
                JSONObject servicesForUserProfile = AdobeEntitlementUtils.getServicesForUserProfile(jSONObject);
                if (!AdobeEntitlementUtils.areValuesEqual(servicesForUserProfile, getServices())) {
                    updateServices(servicesForUserProfile);
                }
            } catch (AdobeEntitlementException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeEntitlementServices.class.getSimpleName(), null, e2);
            }
        }
    }

    protected JSONObject getServicesFromCache() {
        JSONObject servicesForUserProfile;
        JSONObject userProfileFromCache = AdobeEntitlementSession.getSharedSession().getUserProfileFromCache();
        if (userProfileFromCache != null) {
            try {
                servicesForUserProfile = AdobeEntitlementUtils.getServicesForUserProfile(userProfileFromCache);
            } catch (AdobeEntitlementException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeEntitlementServices.class.getSimpleName(), null, e2);
                servicesForUserProfile = null;
            }
            if (servicesForUserProfile != null && servicesForUserProfile.keys().hasNext()) {
                return servicesForUserProfile;
            }
        }
        return null;
    }

    protected void refreshServicesFromCache() {
        JSONObject servicesFromCache = getServicesFromCache();
        if (servicesFromCache != null) {
            updateServices(servicesFromCache);
        }
    }
}
