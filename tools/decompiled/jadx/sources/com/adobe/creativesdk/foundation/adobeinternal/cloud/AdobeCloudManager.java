package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain;
import com.adobe.creativesdk.foundation.internal.entitlement.AdobeEntitlementSessionNotificationKeys;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.io.Charsets;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCloudManager implements Observer {
    public static final String ADOBE_CLOUD_MANAGER = "AdobeCloudManager";
    public static final String DEFAULT_CLOUD = "defaultCloud";
    private static AdobeCloudManager sharedManager = null;
    private Object syncObject;
    private boolean ignoreNotification = false;
    private ArrayList<AdobeCloud> clouds = new ArrayList<>();
    private AdobeCloud defaultCloud = null;

    protected AdobeCloudManager() {
        this.syncObject = null;
        this.syncObject = new Object();
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeEntilementUserProfileDataFetchNotification, this);
    }

    private static AdobeCloud fromString(String str) throws IOException, ClassNotFoundException {
        DecompressibleInputStream decompressibleInputStream = new DecompressibleInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(Charsets.UTF_8), 0)));
        AdobeCloud adobeCloud = (AdobeCloud) decompressibleInputStream.readObject();
        AdobeLogger.log(Level.DEBUG, ADOBE_CLOUD_MANAGER, "Adobe Cloud being retrieved from cache =" + adobeCloud.toString());
        decompressibleInputStream.close();
        return adobeCloud;
    }

    private static String toString(AdobeCloud adobeCloud) throws IOException {
        AdobeLogger.log(Level.DEBUG, ADOBE_CLOUD_MANAGER, "Adobe Cloud being saved to cache =" + adobeCloud.toString());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(adobeCloud);
        objectOutputStream.close();
        return new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0), "UTF-8");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037 A[Catch: all -> 0x004a, DONT_GENERATE, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0019, B:10:0x0028, B:15:0x003c, B:11:0x0037), top: B:21:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager getSharedCloudManager() {
        /*
            java.lang.Class<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager> r2 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.class
            monitor-enter(r2)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager r0 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.sharedManager     // Catch: java.lang.Throwable -> L4a
            if (r0 != 0) goto L37
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager r0 = new com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager     // Catch: java.lang.Throwable -> L4a
            r0.<init>()     // Catch: java.lang.Throwable -> L4a
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.sharedManager = r0     // Catch: java.lang.Throwable -> L4a
            com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession r0 = com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.getSharedSession()     // Catch: java.lang.Throwable -> L4a
            org.json.JSONObject r3 = r0.getUserProfileFromCache()     // Catch: java.lang.Throwable -> L4a
            if (r3 == 0) goto L37
            r1 = 1
            boolean r0 = populateHasAccessToPublicStorage(r3)     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L4a
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r4 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.getSharedServices()     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L4a
            r4.setAccessToPublicStorageServices(r0)     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L4a
            boolean r0 = populateHasAccessToPrivateStorage(r3)     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L4a
        L28:
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices r1 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeEntitlementServices.getSharedServices()     // Catch: java.lang.Throwable -> L4a
            r1.setAccessToPrivateStorageServices(r0)     // Catch: java.lang.Throwable -> L4a
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4a
            r0.<init>()     // Catch: java.lang.Throwable -> L4a
            updateNewClouds(r3, r0)     // Catch: java.lang.Throwable -> L4a
        L37:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4a
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager r0 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.sharedManager
            return r0
        L3b:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r4 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L4a
            java.lang.Class<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager> r5 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.class
            java.lang.String r5 = r5.getSimpleName()     // Catch: java.lang.Throwable -> L4a
            r6 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r4, r5, r6, r0)     // Catch: java.lang.Throwable -> L4a
            r0 = r1
            goto L28
        L4a:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.getSharedCloudManager():com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager");
    }

    public static void updateNewClouds(JSONObject jSONObject, List<AdobeCloud> list) {
        try {
            AdobeCloudUtils.getCloudsFromUserProfile(jSONObject, list);
            if (!list.isEmpty()) {
                sharedManager.updateClouds(list);
            }
        } catch (AdobeCSDKException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeCloudManager.class.getSimpleName(), null, e2);
        }
    }

    public static boolean populateHasAccessToPrivateStorage(JSONObject jSONObject) {
        if (jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataPrivateCloudStorageKey) == null) {
            return true;
        }
        return jSONObject.optBoolean(AdobeEntitlementSession.AdobeEntitlementSessionESDataPrivateCloudStorageKey);
    }

    public static boolean populateHasAccessToPublicStorage(JSONObject jSONObject) {
        if (jSONObject.opt(AdobeEntitlementSession.AdobeEntitlementSessionESDataPublicCloudStorageKey) == null) {
            return true;
        }
        return jSONObject.optBoolean(AdobeEntitlementSession.AdobeEntitlementSessionESDataPublicCloudStorageKey);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        AdobeNotification adobeNotification = (AdobeNotification) obj;
        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification && adobeNotification.getInfo() == null) {
            Iterator<AdobeCloud> it = this.clouds.iterator();
            while (it.hasNext()) {
                it.next().removeAllServices();
            }
            this.clouds.clear();
            setDefaultCloud(null);
            return;
        }
        if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeEntilementUserProfileDataFetchNotification) {
            if (this.ignoreNotification) {
                this.ignoreNotification = false;
                return;
            }
            JSONObject jSONObject = (JSONObject) adobeNotification.getInfo().get(AdobeEntitlementSessionNotificationKeys.AdobeEntitlementSessionUserProfileData);
            boolean zPopulateHasAccessToPublicStorage = populateHasAccessToPublicStorage(jSONObject);
            boolean z = (zPopulateHasAccessToPublicStorage == AdobeEntitlementServices.getSharedServices().hasAccessToPublicStorageServices()) & true;
            AdobeEntitlementServices.getSharedServices().setAccessToPublicStorageServices(zPopulateHasAccessToPublicStorage);
            boolean zPopulateHasAccessToPrivateStorage = populateHasAccessToPrivateStorage(jSONObject);
            boolean z2 = z & (zPopulateHasAccessToPrivateStorage == AdobeEntitlementServices.getSharedServices().hasAccessToPrivateStorageServices());
            AdobeEntitlementServices.getSharedServices().setAccessToPrivateStorageServices(zPopulateHasAccessToPrivateStorage);
            ArrayList arrayList = new ArrayList();
            try {
                AdobeCloudUtils.getCloudsFromUserProfile(jSONObject, arrayList);
                boolean zAreValuesEqual = AdobeCloudUtils.areValuesEqual(arrayList, sharedManager.clouds);
                boolean z3 = z2 & zAreValuesEqual;
                if (!arrayList.isEmpty() && !zAreValuesEqual) {
                    updateClouds(arrayList);
                }
            } catch (AdobeCSDKException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeCloudManager.class.getSimpleName(), null, e2);
            }
        }
    }

    public AdobeCloud getDefaultCloud() {
        try {
            return getDefaultCloudWithError();
        } catch (AdobeCloudException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeCloudManager.class.getSimpleName(), null, e2);
            return null;
        }
    }

    public AdobeCloud getDefaultCloudWithError() throws AdobeCloudException, IOException, ClassNotFoundException {
        AdobeCloudException adobeCloudException;
        AdobeCloud adobeCloudFromString;
        if (this.defaultCloud == null) {
            if (AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().hasPrivateCloudScope()) {
                String strFindKey = AdobeAuthKeychain.getSharedKeychain().findKey(DEFAULT_CLOUD);
                if (strFindKey != null) {
                    try {
                        adobeCloudFromString = fromString(strFindKey);
                        adobeCloudException = null;
                    } catch (IOException | ClassNotFoundException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeCloudManager.class.getSimpleName(), null, e2);
                        adobeCloudException = new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_DECODE_FAILURE, "Failed to decode default cloud from AdobeAuthKeychain", null, e2);
                        adobeCloudFromString = null;
                    }
                    if (adobeCloudFromString != null && AdobeCloudUtils.isCloudValid(adobeCloudFromString)) {
                        addCloud(adobeCloudFromString);
                        this.defaultCloud = adobeCloudFromString;
                        AdobeAnalyticsETSEvent.setCoreParam(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCloud.getValue(), this.defaultCloud.getHref());
                    } else {
                        if (adobeCloudFromString != null) {
                            adobeCloudException = new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_INVALID_CLOUD, "Invalid cloud", null, null);
                        }
                        AdobeLogger.log(Level.DEBUG, ADOBE_CLOUD_MANAGER, "Should not hit this condition");
                        AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "getDefaultCloudWithError", "default cloud error: " + Log.getStackTraceString(adobeCloudException), adobeCloudFromString != null ? adobeCloudFromString.toString() : null);
                        throw adobeCloudException;
                    }
                } else {
                    this.defaultCloud = getBestGuessForDefaultCloud();
                    if (this.defaultCloud != null) {
                        AdobeAnalyticsETSEvent.setCoreParam(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCloud.getValue(), this.defaultCloud.getHref());
                    } else {
                        AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "getDefaultCloudWithError", "default cloud not found", null);
                        throw new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND, "Default cloud not found", null, null);
                    }
                }
            } else {
                AdobeCloud adobeCloud = new AdobeCloud();
                adobeCloud.setGUID("00000000-0000-0000-0000-000000000000");
                adobeCloud.setName("Adobe Creative Cloud");
                adobeCloud.setAvailable(true);
                adobeCloud.setPrivateCloud(false);
                addCloud(adobeCloud);
                this.defaultCloud = adobeCloud;
                AdobeAnalyticsETSEvent.setCoreParam(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCloud.getValue(), this.defaultCloud.getHref());
            }
        }
        if (this.defaultCloud != null) {
            AdobeLogger.log(Level.DEBUG, ADOBE_CLOUD_MANAGER, "Getting default cloud =" + this.defaultCloud.toString());
        }
        AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "getDefaultCloudWithError", "default cloud returned: " + (this.defaultCloud == null ? null : this.defaultCloud.getGUID()), null);
        return this.defaultCloud;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038 A[Catch: all -> 0x00a6, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x0025, B:9:0x002b, B:10:0x0032, B:12:0x0038, B:15:0x0047, B:18:0x0051, B:19:0x0056, B:21:0x005c, B:22:0x006b, B:26:0x0078, B:27:0x007c, B:28:0x0086, B:31:0x009b, B:29:0x0099), top: B:40:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c A[Catch: all -> 0x00a6, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x0025, B:9:0x002b, B:10:0x0032, B:12:0x0038, B:15:0x0047, B:18:0x0051, B:19:0x0056, B:21:0x005c, B:22:0x006b, B:26:0x0078, B:27:0x007c, B:28:0x0086, B:31:0x009b, B:29:0x0099), top: B:40:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDefaultCloud(com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r6) {
        /*
            r5 = this;
            java.lang.Object r2 = r5.syncObject
            monitor-enter(r2)
            if (r6 == 0) goto L25
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r0 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> La6
            java.lang.String r1 = "AdobeCloudManager"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La6
            r3.<init>()     // Catch: java.lang.Throwable -> La6
            java.lang.String r4 = "Getting default cloud ="
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> La6
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> La6
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> La6
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r0, r1, r3)     // Catch: java.lang.Throwable -> La6
        L25:
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L56
            if (r6 == 0) goto L56
            r1 = 0
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r0 = r5.clouds     // Catch: java.lang.Throwable -> La6
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> La6
        L32:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto Lab
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r4 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            boolean r0 = r0.isStrictlyEqual(r4)     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L32
            r0 = 1
        L47:
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r1 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            boolean r1 = r6.isStrictlyEqual(r1)     // Catch: java.lang.Throwable -> La6
            if (r1 != 0) goto L56
            if (r0 != 0) goto L56
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            r0.removeAllServices()     // Catch: java.lang.Throwable -> La6
        L56:
            r5.defaultCloud = r6     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L6b
            com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams$Core r0 = com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams.Core.AdobeEventPropertyCloud     // Catch: java.lang.Throwable -> La6
            java.lang.String r0 = r0.getValue()     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r1 = r5.defaultCloud     // Catch: java.lang.Throwable -> La6
            java.lang.String r1 = r1.getHref()     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent.setCoreParam(r0, r1)     // Catch: java.lang.Throwable -> La6
        L6b:
            com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted r0 = com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted()     // Catch: java.lang.Throwable -> La6
            boolean r0 = r0.hasPrivateCloudScope()     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L99
            if (r6 == 0) goto L9b
            r0 = 0
            java.lang.String r0 = toString(r6)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La9
        L7c:
            com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain r1 = com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain.getSharedKeychain()     // Catch: java.lang.Throwable -> La6
            java.lang.String r3 = "defaultCloud"
            r1.updateOrAddKey(r3, r0)     // Catch: java.lang.Throwable -> La6
        L86:
            java.util.HashMap r0 = new java.util.HashMap     // Catch: java.lang.Throwable -> La6
            r0.<init>()     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.internal.notification.AdobeNotification r1 = new com.adobe.creativesdk.foundation.internal.notification.AdobeNotification     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID r3 = com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID.AdobeCloudManagerDefaultCloudUpdatedNotification     // Catch: java.lang.Throwable -> La6
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> La6
            com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter r0 = com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter.getDefaultNotificationCenter()     // Catch: java.lang.Throwable -> La6
            r0.postNotification(r1)     // Catch: java.lang.Throwable -> La6
        L99:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La6
            return
        L9b:
            com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain r0 = com.adobe.creativesdk.foundation.internal.auth.AdobeAuthKeychain.getSharedKeychain()     // Catch: java.lang.Throwable -> La6
            java.lang.String r1 = "defaultCloud"
            r0.deleteKey(r1)     // Catch: java.lang.Throwable -> La6
            goto L86
        La6:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La6
            throw r0
        La9:
            r1 = move-exception
            goto L7c
        Lab:
            r0 = r1
            goto L47
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.setDefaultCloud(com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud):void");
    }

    protected void addCloud(AdobeCloud adobeCloud) {
        if (!this.clouds.contains(adobeCloud)) {
            updateCloud(adobeCloud);
        }
    }

    protected void updateCloud(AdobeCloud adobeCloud) {
        synchronized (this.syncObject) {
            if (!this.clouds.contains(adobeCloud)) {
                this.clouds.add(adobeCloud);
            } else {
                int iIndexOf = this.clouds.indexOf(adobeCloud);
                if (!this.clouds.get(iIndexOf).getEtag().equals(adobeCloud.getEtag())) {
                    this.clouds.set(iIndexOf, adobeCloud);
                }
            }
        }
    }

    protected void removeCloud(AdobeCloud adobeCloud) {
        synchronized (this.syncObject) {
            this.clouds.remove(adobeCloud);
            if (this.defaultCloud == adobeCloud) {
                setDefaultCloud(getBestGuessForDefaultCloud());
            }
        }
    }

    public String toString() {
        HashMap map = new HashMap();
        if (this.clouds != null) {
            map.put("clouds", this.clouds);
        }
        if (this.defaultCloud != null) {
            map.put(DEFAULT_CLOUD, this.defaultCloud);
        }
        return map.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void updateClouds(java.util.List<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r7) {
        /*
            r6 = this;
            r3 = 1
            r2 = 0
            int r0 = r7.size()
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r1 = r6.clouds
            int r1 = r1.size()
            if (r0 != r1) goto L9f
            java.util.Iterator r4 = r7.iterator()
        L12:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto La1
            java.lang.Object r0 = r4.next()
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r1 = r6.clouds
            boolean r1 = r1.contains(r0)
            if (r1 != 0) goto L66
            r0 = r2
        L27:
            if (r0 == 0) goto L9f
            r0 = r2
        L2a:
            if (r0 == 0) goto L65
            int r0 = r7.size()
            if (r0 != r3) goto L7c
            java.lang.Object r0 = r7.get(r2)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0
            r6.updateCloud(r0)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = r6.getDefaultCloud()
            if (r0 != 0) goto L4a
            java.lang.Object r0 = r7.get(r2)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0
            r6.setDefaultCloud(r0)
        L4a:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.String r1 = "Clouds"
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r2 = r6.clouds
            r0.put(r1, r2)
            com.adobe.creativesdk.foundation.internal.notification.AdobeNotification r1 = new com.adobe.creativesdk.foundation.internal.notification.AdobeNotification
            com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID r2 = com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID.AdobeCloudManagerCloudsUpdatedNotification
            r1.<init>(r2, r0)
            com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter r0 = com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter.getDefaultNotificationCenter()
            r0.postNotification(r1)
        L65:
            return
        L66:
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r1 = r6.clouds
            int r1 = r1.indexOf(r0)
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r5 = r6.clouds
            java.lang.Object r1 = r5.get(r1)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r1 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r1
            boolean r0 = r1.isStrictlyEqual(r0)
            if (r0 != 0) goto L12
            r0 = r2
            goto L27
        L7c:
            java.util.Iterator r1 = r7.iterator()
        L80:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L4a
            java.lang.Object r0 = r1.next()
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0
            r6.updateCloud(r0)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r2 = r6.getDefaultCloud()
            if (r2 != 0) goto L80
            boolean r2 = r0.isPrivateCloud()
            if (r2 != 0) goto L80
            r6.setDefaultCloud(r0)
            goto L80
        L9f:
            r0 = r3
            goto L2a
        La1:
            r0 = r3
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.updateClouds(java.util.List):void");
    }

    public void refreshClouds(final IAdobeGenericCompletionCallback<ArrayList<AdobeCloud>> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        AdobeAuthIdentityManagementService sharedInstance = AdobeAuthIdentityManagementService.getSharedInstance();
        this.ignoreNotification = true;
        AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "refreshClouds", "refreshClouds called: " + Arrays.toString(Thread.currentThread().getStackTrace()), null);
        AdobeEntitlementSession.getSharedSession().getUserProfileForToken(sharedInstance.getAccessToken(), new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.1
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(JSONObject jSONObject) {
                AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "refreshClouds", "onCompletion", null);
                boolean zPopulateHasAccessToPublicStorage = AdobeCloudManager.populateHasAccessToPublicStorage(jSONObject);
                boolean z = (zPopulateHasAccessToPublicStorage == AdobeEntitlementServices.getSharedServices().hasAccessToPublicStorageServices()) & true;
                AdobeEntitlementServices.getSharedServices().setAccessToPublicStorageServices(zPopulateHasAccessToPublicStorage);
                boolean zPopulateHasAccessToPrivateStorage = AdobeCloudManager.populateHasAccessToPrivateStorage(jSONObject);
                boolean z2 = z & (zPopulateHasAccessToPrivateStorage == AdobeEntitlementServices.getSharedServices().hasAccessToPrivateStorageServices());
                AdobeEntitlementServices.getSharedServices().setAccessToPrivateStorageServices(zPopulateHasAccessToPrivateStorage);
                ArrayList arrayList = new ArrayList();
                try {
                    AdobeCloudUtils.getCloudsFromUserProfile(jSONObject, arrayList);
                    boolean zAreValuesEqual = AdobeCloudUtils.areValuesEqual(arrayList, AdobeCloudManager.sharedManager.clouds);
                    boolean z3 = z2 & zAreValuesEqual;
                    if (!arrayList.isEmpty() && !zAreValuesEqual) {
                        this.updateClouds(arrayList);
                    }
                    e = null;
                } catch (AdobeCSDKException e2) {
                    e = e2;
                    AdobeLogger.log(Level.DEBUG, AdobeCloudManager.class.getSimpleName(), null, e);
                }
                if (!this.clouds.isEmpty()) {
                    if (iAdobeGenericCompletionCallback != null) {
                        AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "refreshClouds", "onSuccess", null);
                        iAdobeGenericCompletionCallback.onCompletion(this.clouds);
                        return;
                    }
                    return;
                }
                AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "refreshClouds", "Empty cloud list: " + (e != null ? Log.getStackTraceString(e) + e.getDescription() : null), jSONObject.toString());
                iAdobeGenericErrorCallback.onError(e);
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                AdobeDCXUtils.logAnalytics(AdobeCloudManager.class.getSimpleName(), "refreshClouds", "onError", null);
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                } else {
                    AdobeLogger.log(Level.ERROR, AdobeCloudManager.class.getSimpleName(), "Failed to refresh the cloud manager", adobeCSDKException);
                }
            }
        }, handler);
    }

    public AdobeCloud getMatchingCloud(AdobeCloud adobeCloud) {
        if (adobeCloud == null) {
            return null;
        }
        if (this.clouds == null || this.clouds.isEmpty()) {
            return null;
        }
        for (AdobeCloud adobeCloud2 : this.clouds) {
            if (adobeCloud2.equals(adobeCloud)) {
                return adobeCloud2;
            }
        }
        return null;
    }

    private AdobeCloud getBestGuessForDefaultCloud() {
        if (this.clouds == null || this.clouds.isEmpty()) {
            refreshCloudsFromCache();
        }
        if (this.clouds.size() == 1) {
            return this.clouds.get(0);
        }
        for (AdobeCloud adobeCloud : this.clouds) {
            if (!adobeCloud.isPrivateCloud()) {
                return adobeCloud;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> getCloudsFromCache() {
        /*
            r6 = this;
            r1 = 0
            com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession r0 = com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession.getSharedSession()
            org.json.JSONObject r3 = r0.getUserProfileFromCache()
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r4 = "AdobeCloudManager"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "The cached userprofile information = "
            java.lang.StringBuilder r5 = r0.append(r5)
            if (r3 == 0) goto L62
            java.lang.String r0 = r3.toString()
        L20:
            java.lang.StringBuilder r0 = r5.append(r0)
            java.lang.String r0 = r0.toString()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r4, r0)
            if (r3 == 0) goto L75
            java.util.ArrayList r2 = new java.util.ArrayList
            java.util.ArrayList<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud> r0 = r6.clouds
            r2.<init>(r0)
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudUtils.getCloudsFromUserProfile(r3, r2)     // Catch: com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException -> L66
        L37:
            boolean r0 = r2.isEmpty()
            if (r0 != 0) goto L75
        L3d:
            if (r2 == 0) goto L73
            java.util.Iterator r3 = r2.iterator()
        L43:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L73
            java.lang.Object r0 = r3.next()
            com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r0 = (com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud) r0
            boolean r0 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudUtils.isCloudValid(r0)
            if (r0 != 0) goto L43
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r0 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.String r2 = "AdobeCloudManager"
            java.lang.String r3 = "Should not hit this condition"
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r0, r2, r3)
            r0 = r1
        L61:
            return r0
        L62:
            java.lang.String r0 = ""
            goto L20
        L66:
            r0 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.Class<com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager> r4 = com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.class
            java.lang.String r4 = r4.getSimpleName()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r1, r0)
            goto L37
        L73:
            r0 = r2
            goto L61
        L75:
            r2 = r1
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager.getCloudsFromCache():java.util.ArrayList");
    }

    protected void refreshCloudsFromCache() {
        ArrayList<AdobeCloud> cloudsFromCache = getCloudsFromCache();
        if (cloudsFromCache != null) {
            updateClouds(cloudsFromCache);
        }
    }
}
