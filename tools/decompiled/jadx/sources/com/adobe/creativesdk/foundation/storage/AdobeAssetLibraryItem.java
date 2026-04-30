package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import java.lang.ref.WeakReference;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AdobeAssetLibraryItem {
    protected Date creationDate;
    protected String itemID;
    protected WeakReference<AdobeAssetLibrary> library;
    protected Date modificationDate;
    protected String name;
    protected String renditionName;

    public String getName() {
        return this.name;
    }

    public String getItemID() {
        return this.itemID;
    }

    public Date getCreationDate() {
        return new Date(this.creationDate.getTime());
    }

    public Date getModificationDate() {
        return new Date(this.modificationDate.getTime());
    }

    public AdobeAssetLibrary getLibrary() {
        return this.library.get();
    }

    protected String getRenditionName() {
        return this.renditionName;
    }

    protected void setName(String str) {
        this.name = str;
    }

    protected void setItemID(String str) {
        this.itemID = str;
    }

    protected void setCreationDate(Date date) {
        this.creationDate = date;
    }

    protected void setModificationDate(Date date) {
        this.modificationDate = date;
    }

    protected void setLibrary(WeakReference<AdobeAssetLibrary> weakReference) {
        this.library = weakReference;
    }

    protected void setRenditionName(String str) {
        this.renditionName = str;
    }

    public boolean isEqualToAssetLibraryItem(AdobeAssetLibraryItem adobeAssetLibraryItem) {
        if (this.itemID == null || adobeAssetLibraryItem == null) {
            return false;
        }
        return this.itemID.equals(adobeAssetLibraryItem.itemID);
    }

    protected AdobeAssetLibraryItem(AdobeDCXManifestNode adobeDCXManifestNode, String str, AdobeAssetLibrary adobeAssetLibrary) {
        Date date = new Date(AdobeDCXUtils.getLongVal(adobeDCXManifestNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey)));
        Date date2 = new Date(AdobeDCXUtils.getLongVal(adobeDCXManifestNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)));
        this.name = adobeDCXManifestNode.getName();
        this.renditionName = str;
        this.itemID = adobeDCXManifestNode.getNodeId();
        this.creationDate = date;
        this.modificationDate = date2;
        this.library = new WeakReference<>(adobeAssetLibrary);
    }

    public String nameOrIdForDisplay() {
        if (this.name != null) {
            return this.name;
        }
        if (this.renditionName != null) {
            return this.renditionName;
        }
        return this.itemID;
    }
}
