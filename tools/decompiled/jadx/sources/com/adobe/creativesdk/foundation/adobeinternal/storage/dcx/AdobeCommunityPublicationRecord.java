package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeCommunityErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityPublicationRecordConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageFileUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityPublicationRecord implements IAdobePublicationRecordProtocol {
    public String alias;
    private String artwork;
    private String artworkVersion;
    private String assetId;
    public String categoryId;
    public String communityId;
    private boolean copyNewArtworkFile;
    public ArrayList<String> creatorIds;
    public Object custom;
    public String desc;
    public boolean discoverable = false;
    private String mainResource;
    private String mainResourceVersion;
    private String newArtworkComponentId;
    private String newArtworkFile;
    private String newArtworkFileType;
    private String resourcePath;
    public ArrayList<String> subCategoryIds;
    public JSONArray tags;
    public String title;

    public AdobeCommunityPublicationRecord(String str) {
        this.title = str;
    }

    public AdobeCommunityPublicationRecord(String str, String str2) {
        this.communityId = str;
        this.title = str2;
    }

    public void setArtworkFile(String str, boolean z, String str2) {
        this.newArtworkFile = str;
        this.newArtworkFileType = str2;
        this.copyNewArtworkFile = z;
        if (this.newArtworkFile != null) {
            this.newArtworkComponentId = null;
        }
    }

    public void setArtworkComponentId(String str) {
        this.newArtworkComponentId = str;
        if (this.newArtworkComponentId != null) {
            this.newArtworkFile = null;
        }
    }

    public String getArtworkComponentId() {
        return this.newArtworkComponentId;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobePublicationRecordProtocol
    public boolean stageResourcesAt(String str) throws AdobeCommunityException {
        boolean zMoveFileAtomicallyFrom;
        if (this.newArtworkFile != null) {
            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(str, AdobeStorageLastPathComponentUtil.getLastPathComponent(this.newArtworkFile));
            if (this.copyNewArtworkFile) {
                zMoveFileAtomicallyFrom = AdobeStorageFileUtils.copyFileAtomicallyFrom(this.newArtworkFile, strStringByAppendingLastPathComponent);
            } else {
                zMoveFileAtomicallyFrom = AdobeStorageFileUtils.moveFileAtomicallyFrom(this.newArtworkFile, strStringByAppendingLastPathComponent);
            }
            if (zMoveFileAtomicallyFrom) {
                this.newArtworkFile = strStringByAppendingLastPathComponent;
                return true;
            }
            throw new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorFileWriteFailure, "Staging copy/move failed");
        }
        return true;
    }

    protected JSONObject getMetadata() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("title", this.title);
        if (this.alias != null) {
            jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationAliasKey, this.alias);
        }
        if (this.artwork != null && this.artworkVersion != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("resource_path", this.artwork);
            jSONObject2.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceVersion, this.artworkVersion);
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityJSONArtworkKey, jSONObject2);
        }
        if (this.tags != null) {
            jSONObject.put("tags", this.tags);
        }
        if (this.desc != null) {
            jSONObject.put("description", this.desc);
        }
        if (this.categoryId != null) {
            jSONObject.put("category_id", this.categoryId);
        }
        if (this.subCategoryIds != null) {
            jSONObject.put("sub_category_ids", this.subCategoryIds);
        }
        if (this.creatorIds != null) {
            jSONObject.put("creator_ids", this.creatorIds);
        }
        if (this.custom != null) {
            jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationCustomKey, this.custom);
        }
        jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationUndiscoverableKey, !this.discoverable ? 1 : 0);
        if (this.mainResource != null && this.mainResourceVersion != null) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("resource_path", this.mainResource);
            jSONObject3.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyResourceVersion, this.mainResourceVersion);
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityRequestJSONKeyMainResource, jSONObject3);
        }
        return jSONObject;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobePublicationRecordProtocol
    public JSONObject getDataForCreation() throws AdobeCommunityException {
        if (this.title == null || this.title.length() == 0) {
            throw new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorInvalidPublicationRecord, "title is missing");
        }
        if (this.communityId == null || this.communityId.length() == 0) {
            throw new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorInvalidPublicationRecord, "communityId is missing");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadata", getMetadata());
            jSONObject.put(AdobeCommunityConstants.AdobeCommunityResourceCommunityIDkey, this.communityId);
            if (this.newArtworkFile != null) {
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworFilekKey, this.newArtworkFile);
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommuityPublicationNewArtworkTypeKey, this.newArtworkFileType);
            } else if (this.newArtworkComponentId != null) {
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey, this.newArtworkComponentId);
            }
            return jSONObject;
        } catch (JSONException e2) {
            throw new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorMissingJSONData);
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobePublicationRecordProtocol
    public JSONObject getDataForUpdate() throws AdobeCommunityException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadata", getMetadata());
            if (this.newArtworkFile != null) {
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworFilekKey, this.newArtworkFile);
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommuityPublicationNewArtworkTypeKey, this.newArtworkFileType);
            } else if (this.newArtworkComponentId != null) {
                jSONObject.put(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationNewArtworkComponentIDKey, this.newArtworkComponentId);
            }
            return jSONObject;
        } catch (JSONException e2) {
            throw new AdobeCommunityException(AdobeCommunityErrorCode.AdobeCommunityErrorMissingJSONData);
        }
    }

    public String getArtwork() {
        return this.artwork;
    }

    public String getArtworkVersion() {
        return this.artworkVersion;
    }

    public String getAssetId() {
        return this.assetId;
    }

    public void setAssetId(String str) {
        this.assetId = str;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public void setResourcePath(String str) {
        this.resourcePath = str;
    }

    public String getAlias() {
        return this.alias;
    }

    public void setAlias(String str) {
        this.alias = str;
    }

    public String getDescription() {
        return this.desc;
    }

    public void setDescription(String str) {
        this.desc = str;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(String str) {
        this.categoryId = str;
    }

    public ArrayList<String> getSubCategoryIds() {
        return this.subCategoryIds;
    }

    public void setSubCategoryIds(ArrayList<String> arrayList) {
        this.subCategoryIds = arrayList;
    }

    public Object getCustom() {
        return this.custom;
    }

    public void setCustom(Object obj) {
        this.custom = obj;
    }

    public boolean isDiscoverable() {
        return this.discoverable;
    }

    public void setDiscoverable(boolean z) {
        this.discoverable = z;
    }

    public ArrayList<String> getCreatorIds() {
        return this.creatorIds;
    }

    public void setCreatorIds(ArrayList<String> arrayList) {
        this.creatorIds = arrayList;
    }

    public JSONArray getTags() {
        return this.tags;
    }

    public void setTags(JSONArray jSONArray) {
        this.tags = jSONArray;
    }
}
