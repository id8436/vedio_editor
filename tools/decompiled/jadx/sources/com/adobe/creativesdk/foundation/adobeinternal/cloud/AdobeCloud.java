package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunitySession;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.sendtodesktop.AdobeNotificationSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.google.gdata.data.codesearch.Package;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCloud implements Externalizable {
    private static final String ADOBE_CLOUD_CLIPBOARD_SERVICE_TAG = "clipboard";
    private static final String ADOBE_CLOUD_CODER_KEY_AVAILABILITY = "availability";
    private static final String ADOBE_CLOUD_CODER_KEY_DESCRIPTION = "cloudDescription";
    private static final String ADOBE_CLOUD_CODER_KEY_ENDPOINTS = "endpoints";
    private static final String ADOBE_CLOUD_CODER_KEY_E_TAG = "etag";
    private static final String ADOBE_CLOUD_CODER_KEY_GUID = "guid";
    private static final String ADOBE_CLOUD_CODER_KEY_LOGO_URL = "logoURL";
    private static final String ADOBE_CLOUD_CODER_KEY_NAME = "name";
    private static final String ADOBE_CLOUD_CODER_KEY_PARAMETERS = "parameters";
    private static final String ADOBE_CLOUD_CODER_KEY_PRIVATE_CLOUD = "private";
    private static final String ADOBE_CLOUD_CODER_KEY_PRIVATE_SESSIONS = "sessions";
    private static final String ADOBE_CLOUD_CODER_KEY_QUOTA_ENABLED = "quotaEnabled";
    private static final String ADOBE_CLOUD_CODER_KEY_REGION = "region";
    private static final String ADOBE_CLOUD_CODER_KEY_VERSION = "version";
    public static final String ICON_URL = "iconUrl";
    public static final String PARSING_OF_INPUT_FAILED = "Parsing of input failed";
    public static final String STORAGE = "storage";
    private boolean available;
    private String cloudDescription;
    private String eTag;
    private Map<AdobeCloudServiceType, AdobeCloudEndpoint> endpoints;
    private String guid;
    private URL logoURL;
    private String name;
    private JSONObject parameters;
    private boolean privateCloud;
    private boolean quotaEnabled;
    private String region;
    private Map<AdobeCloudServiceType, AdobeCloudServiceSession> sessions;
    private long version;

    public AdobeCloud() {
        this.quotaEnabled = true;
        this.endpoints = new HashMap();
        this.sessions = new HashMap();
        this.parameters = new JSONObject();
    }

    protected AdobeCloud(String str, String str2, String str3, String str4, String str5, long j, URL url, HashMap<AdobeCloudServiceType, AdobeCloudEndpoint> map, JSONObject jSONObject) {
        this.quotaEnabled = true;
        this.guid = str;
        this.eTag = str2;
        this.name = str3;
        this.cloudDescription = str4;
        this.region = str5;
        this.version = j;
        this.logoURL = url;
        this.endpoints = new HashMap(map);
        this.parameters = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObject);
        this.available = false;
        this.privateCloud = false;
    }

    public Map<AdobeCloudServiceType, AdobeCloudServiceSession> getSessions() {
        return this.sessions;
    }

    public String getGUID() {
        return this.guid;
    }

    public void setGUID(String str) {
        this.guid = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    protected String getEtag() {
        return this.eTag;
    }

    public void setEtag(String str) {
        this.eTag = str;
    }

    protected String getCloudDescription() {
        return this.cloudDescription;
    }

    public void setCloudDescription(String str) {
        this.cloudDescription = str;
    }

    public String getRegion() {
        return this.region;
    }

    protected void setRegion(String str) {
        this.region = str;
    }

    public URL getLogoURL() {
        return this.logoURL;
    }

    public void setLogoURL(URL url) {
        this.logoURL = url;
    }

    public Map<AdobeCloudServiceType, AdobeCloudEndpoint> getEndpoints() {
        return this.endpoints;
    }

    public void setEndpoints(Map<AdobeCloudServiceType, AdobeCloudEndpoint> map) {
        this.endpoints = map;
    }

    public JSONObject getParameters() {
        return this.parameters;
    }

    public void setParameters(JSONObject jSONObject) {
        this.parameters = jSONObject;
    }

    protected long getVersion() {
        return this.version;
    }

    public void setVersion(long j) {
        this.version = j;
    }

    public boolean isAvailable() {
        return this.available;
    }

    protected void setAvailable(boolean z) {
        this.available = z;
    }

    public boolean isPrivateCloud() {
        return this.privateCloud;
    }

    public void setPrivateCloud(boolean z) {
        this.privateCloud = z;
    }

    public boolean isQuotaEnabled() {
        return this.quotaEnabled;
    }

    public void setQuotaEnabled(boolean z) {
        this.quotaEnabled = z;
    }

    public AdobeCloud getCopy() {
        AdobeCloud adobeCloud = new AdobeCloud();
        adobeCloud.guid = this.guid;
        adobeCloud.eTag = this.eTag;
        adobeCloud.name = this.name;
        adobeCloud.cloudDescription = this.cloudDescription;
        adobeCloud.region = this.region;
        try {
            adobeCloud.logoURL = new URL(this.logoURL.toString());
        } catch (MalformedURLException e2) {
        }
        adobeCloud.endpoints = new HashMap(this.endpoints);
        adobeCloud.sessions = new HashMap(this.sessions);
        adobeCloud.parameters = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(this.parameters);
        adobeCloud.version = this.version;
        adobeCloud.available = this.available;
        adobeCloud.privateCloud = this.privateCloud;
        adobeCloud.quotaEnabled = this.quotaEnabled;
        return adobeCloud;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AdobeCloud)) {
            return false;
        }
        AdobeCloud adobeCloud = (AdobeCloud) obj;
        return this.guid != null ? this.guid.equals(adobeCloud.guid) : adobeCloud.guid == null;
    }

    public String toString() {
        HashMap map = new HashMap();
        if (this.guid != null) {
            map.put(ADOBE_CLOUD_CODER_KEY_GUID, this.guid);
        }
        if (this.eTag != null) {
            map.put("etag", this.eTag);
        }
        if (this.name != null) {
            map.put("name", this.name);
        }
        if (this.cloudDescription != null) {
            map.put(ADOBE_CLOUD_CODER_KEY_DESCRIPTION, this.cloudDescription);
        }
        if (this.region != null) {
            map.put("region", this.region);
        }
        if (this.endpoints != null) {
            map.put("endpoints", this.endpoints);
        }
        if (this.parameters != null) {
            map.put(ADOBE_CLOUD_CODER_KEY_PARAMETERS, this.parameters);
        }
        if (this.sessions != null) {
            map.put(ADOBE_CLOUD_CODER_KEY_PRIVATE_SESSIONS, this.sessions);
        }
        map.put("version", Long.valueOf(this.version));
        map.put(ADOBE_CLOUD_CODER_KEY_AVAILABILITY, Boolean.valueOf(isAvailable()));
        map.put("private", Boolean.valueOf(isPrivateCloud()));
        map.put(ADOBE_CLOUD_CODER_KEY_QUOTA_ENABLED, Boolean.valueOf(isQuotaEnabled()));
        return map.toString();
    }

    public AdobeCloudServiceSession getSessionForService(AdobeCloudServiceType adobeCloudServiceType) {
        AdobeCloudServiceSession sessionForCloudEndpoint;
        if (this.sessions.containsKey(adobeCloudServiceType)) {
            return this.sessions.get(adobeCloudServiceType);
        }
        AdobeCloudEndpoint adobeCloudEndpoint = this.endpoints.get(adobeCloudServiceType);
        if (adobeCloudEndpoint != null && adobeCloudEndpoint.getServiceType() != adobeCloudServiceType) {
            adobeCloudEndpoint = null;
        }
        switch (adobeCloudServiceType) {
            case AdobeCloudServiceTypeImage:
                sessionForCloudEndpoint = AdobeImageSession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            case AdobeCloudServiceTypeMarket:
                sessionForCloudEndpoint = null;
                break;
            case AdobeCloudServiceTypePhoto:
                sessionForCloudEndpoint = AdobePhotoSession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            case AdobeCloudServiceTypeStorage:
                sessionForCloudEndpoint = AdobeStorageSession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            case AdobeCloudServiceTypeEntitlement:
                sessionForCloudEndpoint = AdobeEntitlementSession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            case AdobeCloudServiceTypeNotification:
                sessionForCloudEndpoint = AdobeNotificationSession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            case AdobeCloudServiceTypeCommunity:
                sessionForCloudEndpoint = AdobeCommunitySession.getSessionForCloudEndpoint(adobeCloudEndpoint);
                break;
            default:
                AdobeLogger.log(Level.ERROR, AdobeCloud.class.getSimpleName(), "Invalid cloud type specified.");
                sessionForCloudEndpoint = null;
                break;
        }
        if (sessionForCloudEndpoint == null) {
            return null;
        }
        sessionForCloudEndpoint.setPrivateService(isPrivateCloud());
        this.sessions.put(adobeCloudServiceType, sessionForCloudEndpoint);
        return sessionForCloudEndpoint;
    }

    public void setUpService(AdobeCloudServiceType adobeCloudServiceType) {
        getSessionForService(adobeCloudServiceType).setUpService();
    }

    public void tearDownService(AdobeCloudServiceType adobeCloudServiceType) {
        if (this.sessions.containsKey(adobeCloudServiceType)) {
            this.sessions.get(adobeCloudServiceType).tearDownService();
            this.sessions.remove(adobeCloudServiceType);
        }
    }

    public void removeAllServices() {
        if (this.sessions != null) {
            for (Map.Entry<AdobeCloudServiceType, AdobeCloudServiceSession> entry : this.sessions.entrySet()) {
                entry.getValue().tearDownService();
                entry.getValue().getHttpServices().clear();
            }
            this.sessions.clear();
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.guid = (String) objectInput.readObject();
        this.eTag = (String) objectInput.readObject();
        this.name = (String) objectInput.readObject();
        this.cloudDescription = (String) objectInput.readObject();
        this.region = (String) objectInput.readObject();
        this.logoURL = (URL) objectInput.readObject();
        this.endpoints = (HashMap) objectInput.readObject();
        try {
            this.parameters = new JSONObject((String) objectInput.readObject());
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeCloud.class.getSimpleName(), null, e2);
        }
        this.version = objectInput.readLong();
        this.available = objectInput.readBoolean();
        this.privateCloud = objectInput.readBoolean();
        this.quotaEnabled = objectInput.readBoolean();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.guid);
        objectOutput.writeObject(this.eTag);
        objectOutput.writeObject(this.name);
        objectOutput.writeObject(this.cloudDescription);
        objectOutput.writeObject(this.region);
        objectOutput.writeObject(this.logoURL);
        objectOutput.writeObject(this.endpoints);
        objectOutput.writeObject(this.parameters != null ? this.parameters.toString() : null);
        objectOutput.writeLong(this.version);
        objectOutput.writeBoolean(this.available);
        objectOutput.writeBoolean(this.privateCloud);
        objectOutput.writeBoolean(this.quotaEnabled);
    }

    public boolean updateFromData(String str) throws AdobeCloudException {
        if (str == null) {
            throw new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_MISSING_JSON_DATA);
        }
        try {
            updateFromDictionary(new JSONObject(str));
            return true;
        } catch (JSONException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeCloud.class.getSimpleName(), null, e2);
            throw new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE, PARSING_OF_INPUT_FAILED, e2);
        }
    }

    public boolean updateFromDictionary(JSONObject jSONObject) throws AdobeCloudException {
        boolean zHasAccessToPublicStorageServices;
        if (jSONObject == null) {
            return false;
        }
        this.guid = jSONObject.optString("id", null);
        this.eTag = jSONObject.optString("etag", null);
        this.name = jSONObject.optString("name", null);
        this.cloudDescription = jSONObject.optString(ADOBE_CLOUD_CODER_KEY_DESCRIPTION, null);
        this.region = jSONObject.optString("region", null);
        if (jSONObject.opt(ICON_URL) != null && (jSONObject.opt(ICON_URL) instanceof URL)) {
            this.logoURL = (URL) jSONObject.opt(ICON_URL);
        } else {
            String strOptString = jSONObject.optString(ICON_URL, null);
            if (strOptString != null) {
                try {
                    this.logoURL = new URL(jSONObject.optString(ICON_URL, null));
                    this.logoURL = new URL(strOptString);
                } catch (MalformedURLException e2) {
                    this.logoURL = null;
                }
            }
        }
        String strOptString2 = jSONObject.optString(NotificationCompat.CATEGORY_STATUS, null);
        this.available = strOptString2 != null ? "Provisioned".equals(strOptString2) || "online".equals(strOptString2) : false;
        this.privateCloud = jSONObject.optBoolean("private", false);
        this.quotaEnabled = true;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ADOBE_CLOUD_CODER_KEY_PARAMETERS);
        if (jSONObjectOptJSONObject != null) {
            this.parameters = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(jSONObjectOptJSONObject);
            if (jSONObjectOptJSONObject.optBoolean("quota")) {
                this.quotaEnabled = jSONObjectOptJSONObject.optBoolean("quota");
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("features");
        if (isPrivateCloud()) {
            zHasAccessToPublicStorageServices = AdobeEntitlementServices.getSharedServices().hasAccessToPrivateStorageServices();
        } else {
            zHasAccessToPublicStorageServices = AdobeEntitlementServices.getSharedServices().hasAccessToPublicStorageServices();
        }
        if (zHasAccessToPublicStorageServices) {
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add("files");
            arrayList.add("storage");
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeStorage, "files", uriForKey(arrayList, jSONObjectOptJSONObject2));
            ArrayList<String> arrayList2 = new ArrayList<>();
            arrayList2.add("assets");
            arrayList2.add("storage");
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeStorage, "assets", uriForKey(arrayList2, jSONObjectOptJSONObject2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            arrayList3.add("files");
            arrayList3.add(AdobeStorageSession.AdobeStorageSessionArchiveServiceTag);
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeStorage, AdobeStorageSession.AdobeStorageSessionArchiveServiceTag, uriForKey(arrayList3, jSONObjectOptJSONObject2));
            ArrayList<String> arrayList4 = new ArrayList<>();
            arrayList4.add("libraries");
            arrayList4.add("storage");
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeStorage, "libraries", uriForKey(arrayList4, jSONObjectOptJSONObject2));
            ArrayList<String> arrayList5 = new ArrayList<>();
            arrayList5.add(AdobeImageSession.AdobeStorageSessionImageServiceTag);
            arrayList5.add(NotificationCompat.CATEGORY_SERVICE);
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeImage, AdobeImageSession.AdobeStorageSessionImageServiceTag, uriForKey(arrayList5, jSONObjectOptJSONObject2));
            ArrayList<String> arrayList6 = new ArrayList<>();
            arrayList6.add("clipboard");
            arrayList6.add("storage");
            setServiceType(AdobeCloudServiceType.AdobeCloudServiceTypeClipBoard, "clipboard", uriForKey(arrayList6, jSONObjectOptJSONObject2));
        } else {
            this.quotaEnabled = false;
        }
        return true;
    }

    private String uriForKey(ArrayList<String> arrayList, JSONObject jSONObject) {
        boolean z;
        Iterator<String> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            String next = it.next();
            if (jSONObject.optJSONObject(next) != null) {
                jSONObject = jSONObject.optJSONObject(next);
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            return jSONObject.optString(Package.ATTRIBUTE_URI, null);
        }
        return null;
    }

    private void setServiceType(AdobeCloudServiceType adobeCloudServiceType, String str, String str2) throws AdobeCloudException {
        if (str2 != null && adobeCloudServiceType != AdobeCloudServiceType.AdobeCloudServiceTypeUnknown) {
            AdobeCloudEndpoint adobeCloudEndpoint = this.endpoints.get(adobeCloudServiceType);
            if (adobeCloudEndpoint != null) {
                try {
                    adobeCloudEndpoint.addServiceSchemaId(str, new URL(str2));
                } catch (MalformedURLException e2) {
                    throw new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE, PARSING_OF_INPUT_FAILED, e2);
                }
            } else {
                try {
                    adobeCloudEndpoint = new AdobeCloudEndpoint(str, new URL(str2), adobeCloudServiceType);
                } catch (MalformedURLException e3) {
                    throw new AdobeCloudException(AdobeCloudErrorCode.ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE, PARSING_OF_INPUT_FAILED, e3);
                }
            }
            this.endpoints.put(adobeCloudServiceType, adobeCloudEndpoint);
        }
    }

    public boolean isStrictlyEqual(AdobeCloud adobeCloud) {
        boolean zEquals = equals(adobeCloud);
        if (getEtag() != null && adobeCloud.getEtag() != null) {
            return zEquals & getEtag().equals(adobeCloud.getEtag());
        }
        return zEquals;
    }

    public String getHref() {
        String str = null;
        switch (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment()) {
            case AdobeAuthIMSEnvironmentProductionUS:
                str = "https://cc-api-ers.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentStageUS:
            case AdobeAuthIMSEnvironmentCloudLabsUS:
                str = "https://cc-api-ers-stage.adobe.io";
                break;
            case AdobeAuthIMSEnvironmentTestUS:
                str = "https://cc-api-ers-qe.adobe.io";
                break;
            default:
                AdobeLogger.log(Level.DEBUG, "Cloud:GetHref", "An undefined authentication endpoint has been specified.");
                break;
        }
        return String.format("%s/api/v1/clouds/%s", str, getGUID());
    }
}
