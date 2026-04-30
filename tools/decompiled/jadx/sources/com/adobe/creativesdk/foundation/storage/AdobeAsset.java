package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import java.net.URI;
import java.util.Date;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAsset extends AdobeAssetInternal {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected String GUID;
    protected Date creationDate;
    protected String etag;
    protected URI href;
    protected JSONObject links;
    protected Date modificationDate;
    protected String name;
    protected URI parentHref;

    static {
        $assertionsDisabled = !AdobeAsset.class.desiredAssertionStatus();
    }

    public String getGUID() {
        return this.GUID;
    }

    protected void setGUID(String str) {
        this.GUID = str;
    }

    public URI getHref() {
        return this.href;
    }

    protected void setHref(URI uri) {
        this.href = uri;
    }

    public URI getParentHref() {
        return this.parentHref;
    }

    protected void setParentHref(URI uri) {
        this.parentHref = uri;
    }

    public String getEtag() {
        return this.etag;
    }

    protected void setEtag(String str) {
        this.etag = str;
    }

    public String getName() {
        return this.name;
    }

    protected void setName(String str) {
        this.name = str;
    }

    public Date getCreationDate() {
        if (this.creationDate == null) {
            return null;
        }
        return (Date) this.creationDate.clone();
    }

    protected void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public Date getModificationDate() {
        if (this.modificationDate != null) {
            return new Date(this.modificationDate.getTime());
        }
        return null;
    }

    protected void setModificationDate(Date date) {
        this.modificationDate = date;
    }

    public JSONObject getLinks() {
        return this.links;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdobeAsset)) {
            return false;
        }
        AdobeAsset adobeAsset = (AdobeAsset) obj;
        if (this.GUID != null) {
            return this.GUID.equals(adobeAsset.getGUID());
        }
        return false;
    }

    public static String getValidatedAssetName(String str) {
        if (AdobeStorageResourceItem.validAssetName(str)) {
            return AdobeStorageResourceItem.escapeAssetName(str);
        }
        return null;
    }

    protected AdobeAsset() {
        this.mCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
    }

    protected void setCloud(AdobeCloud adobeCloud) {
        this.mCloud = adobeCloud;
    }

    protected AdobeStorageSession getSession() {
        if (this.mCloud != null) {
            return (AdobeStorageSession) this.mCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        }
        return null;
    }

    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
