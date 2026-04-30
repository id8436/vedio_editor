package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryMutableElement extends AdobeLibraryElement {
    AdobeDCXMutableManifestNode mMutableNode;

    public AdobeLibraryMutableElement(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        super(adobeDCXMutableManifestNode);
        this.mMutableNode = null;
        this.mMutableNode = adobeDCXMutableManifestNode;
    }

    AdobeLibraryMutableElement(String str, String str2) {
        this(createManifestNodeWithName(str, str2));
    }

    protected static AdobeDCXMutableManifestNode createManifestNodeWithName(String str, String str2) {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithName = AdobeDCXMutableManifestNode.createNodeWithName(str);
        UUID uuidRandomUUID = UUID.randomUUID();
        adobeDCXMutableManifestNodeCreateNodeWithName.setNodeId(uuidRandomUUID.toString());
        adobeDCXMutableManifestNodeCreateNodeWithName.setType(str2);
        Date date = new Date();
        adobeDCXMutableManifestNodeCreateNodeWithName.setValue(Long.valueOf(date.getTime()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey);
        adobeDCXMutableManifestNodeCreateNodeWithName.setValue(Long.valueOf(date.getTime()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
        adobeDCXMutableManifestNodeCreateNodeWithName.setPath(uuidRandomUUID.toString());
        return adobeDCXMutableManifestNodeCreateNodeWithName;
    }

    public static AdobeLibraryMutableElement createElementWithName(String str, String str2) {
        return new AdobeLibraryMutableElement(str, str2);
    }

    public Object getMutableNode() {
        return this.mMutableNode;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public Object getNodeDictValueForKey(String str) {
        if (this.mMutableNode != null) {
            return this.mMutableNode.getDictionary().opt(str);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public List<String> getAllNodeDictKeys() {
        if (this.mMutableNode == null) {
            return new ArrayList();
        }
        Iterator<String> itKeys = this.mMutableNode.getDictionary().keys();
        ArrayList arrayList = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public String getNodeType() {
        if (this.mMutableNode != null) {
            return this.mMutableNode.getType();
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void setName(String str) {
        this.mMutableNode.setName(str);
        updateModified();
    }

    public void updateModified() {
        if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
            ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Long.valueOf(AdobeLibraryUtils.getCurrentTimeInMilliseconds()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
        } else if (getMutableNode() instanceof AdobeDCXNode) {
            ((AdobeDCXNode) getMutableNode()).setValue(Long.valueOf(AdobeLibraryUtils.getCurrentTimeInMilliseconds()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void addTag(String str) {
        getTagsArray().put(str);
        updateModified();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void addTags(List<String> list) {
        JSONArray tagsArray = getTagsArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            tagsArray.put(it.next());
        }
        updateModified();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void removeTag(String str) {
        JSONArray jSONArrayRemove = AdobeDCXUtils.remove(str, getTagsArray());
        if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
            ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(jSONArrayRemove, "tags");
        } else if (getMutableNode() instanceof AdobeDCXNode) {
            ((AdobeDCXNode) getMutableNode()).setValue(jSONArrayRemove, "tags");
        }
        updateModified();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void updateTimestampOnRemove() {
        ((AdobeDCXNode) getMutableNode()).setValue(Long.valueOf(AdobeLibraryUtils.getCurrentTimeInMilliseconds()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
    }

    private JSONArray getTagsArray() {
        JSONArray jSONArray = (JSONArray) getNodeDictValueForKey("tags");
        if (jSONArray == null) {
            JSONArray jSONArray2 = new JSONArray();
            if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(jSONArray2, "tags");
            } else if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(jSONArray2, "tags");
            }
            return (JSONArray) getNodeDictValueForKey("tags");
        }
        return jSONArray;
    }

    public void setCategoryId(String str) {
        this.mMutableNode.setValue(str, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoryKey);
    }
}
