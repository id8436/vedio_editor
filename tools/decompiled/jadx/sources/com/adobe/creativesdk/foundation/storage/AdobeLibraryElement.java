package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryElement {
    private AdobeDCXManifestNode mNode;

    protected AdobeLibraryElement(AdobeDCXManifestNode adobeDCXManifestNode) {
        this.mNode = null;
        this.mNode = adobeDCXManifestNode;
    }

    @Deprecated
    public AdobeLibraryMutableElement getMutableCopy() {
        return new AdobeLibraryMutableElement(this.mNode.getMutableCopy());
    }

    public Object getNodeDictValueForKey(String str) {
        if (this.mNode != null) {
            return this.mNode.getDictionary().opt(str);
        }
        return null;
    }

    public List<String> getAllNodeDictKeys() {
        if (this.mNode == null) {
            return new ArrayList();
        }
        Iterator<String> itKeys = this.mNode.getDictionary().keys();
        ArrayList arrayList = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return arrayList;
    }

    public AdobeDCXNode getDCXNode() {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public String getNodeType() {
        return this.mNode.getType();
    }

    protected AdobeDCXManifestNode getNode() {
        return this.mNode;
    }

    public String getName() {
        return this.mNode.getName();
    }

    public String getType() {
        return getNodeType();
    }

    public String getElementId() {
        return this.mNode.getNodeId();
    }

    public String getCategoryId() {
        return this.mNode.getDictionary().optString(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoryKey, null);
    }

    public JSONArray getTags() {
        JSONArray jSONArray = (JSONArray) getNodeDictValueForKey("tags");
        return jSONArray != null ? AdobeStorageCopyUtils.deepMutableCopyOfArray(jSONArray) : new JSONArray();
    }

    public List<AdobeLibraryRepresentation> getRepresentations() {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation getFirstRepresentationOfType(String str) {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation getPrimaryRepresentation() {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation getRepresentationWithId(String str) {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation addRepresentationWithContentType(String str, String str2) throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation addRepresentationWithContentType(String str, String str2, String str3, boolean z, String str4, Integer num, Integer num2, boolean z2) throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public AdobeLibraryRepresentation removeRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public void removeAllRepresentations() throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public long getCreated() {
        return AdobeDCXUtils.getLongVal(getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey));
    }

    public long getModified() {
        return AdobeDCXUtils.getLongVal(getNodeDictValueForKey(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey));
    }

    public void setName(String str) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public void addTag(String str) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public void addTags(List<String> list) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public void removeTag(String str) {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public void elementRepresentationsChanged() {
        AdobeStorageErrorUtils.verifyState(false, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
    }

    public AdobeDCXElement getDCXElement() throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "Method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return null;
    }

    public boolean releaseDCXElement(AdobeDCXElement adobeDCXElement) throws AdobeLibraryException {
        AdobeStorageErrorUtils.verifyState(false, "Method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model.");
        return false;
    }

    public void updateTimestampOnRemove() {
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AdobeLibraryElement)) {
            return false;
        }
        return AdobeDCXUtils.areStringsEqual(getElementId(), ((AdobeLibraryElement) obj).getElementId());
    }
}
