package com.adobe.creativesdk.foundation.internal.storage.model.resources;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import java.net.URI;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageResource {
    protected AdobeCloud cloud;
    public AdobeCollaborationType collaboration;
    public AdobeCollaborationRoleType collaboration_role;
    public String created;
    public String etag;
    public URI href;
    public String internalID;
    public boolean isCollection;
    public JSONObject links;
    public String modified;
    public String name;
    public long ordinal;
    public String type;

    public AdobeStorageResource() {
        this.collaboration = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        this.collaboration_role = AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_OWNER;
    }

    public AdobeStorageResource(AdobeStorageResource adobeStorageResource) {
        if (adobeStorageResource.href != null) {
            this.href = URI.create(adobeStorageResource.href.toString());
        }
        this.name = adobeStorageResource.name;
        this.type = adobeStorageResource.type;
        this.etag = adobeStorageResource.etag;
        this.created = adobeStorageResource.created;
        this.modified = adobeStorageResource.modified;
        this.isCollection = adobeStorageResource.isCollection;
        this.ordinal = adobeStorageResource.ordinal;
        this.collaboration = adobeStorageResource.collaboration;
        this.cloud = adobeStorageResource.cloud;
        this.collaboration_role = adobeStorageResource.collaboration_role;
    }

    public AdobeCloud getCloud() {
        if (this.cloud == null) {
            this.cloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
        }
        return this.cloud;
    }

    public void setCloud(AdobeCloud adobeCloud) {
        this.cloud = adobeCloud;
    }

    public boolean isReadOnly() {
        return this.collaboration_role == AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER;
    }

    public boolean isShared() {
        return this.collaboration != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }
}
