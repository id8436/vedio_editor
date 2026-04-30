package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class AdobePhoto implements Externalizable {
    protected String _internalID = null;
    protected String _GUID = null;
    protected String _href = null;
    protected String _baseHref = null;
    protected Date _creationDate = null;
    protected Date _modificationDate = null;
    protected AdobeCloud _cloud = null;

    public String getInternalID() {
        return this._internalID;
    }

    protected void setInternalID(String str) {
        this._internalID = str;
    }

    public String getGUID() {
        return this._GUID;
    }

    protected void setGUID(String str) {
        this._GUID = str;
    }

    public String getHref() {
        return this._href;
    }

    public void setHref(String str) {
        this._href = str;
    }

    public String getBaseHref() {
        return this._baseHref;
    }

    public void setBaseHref(String str) {
        this._baseHref = str;
    }

    public Date getCreationDate() {
        return new Date(this._creationDate.getTime());
    }

    protected void setCreationDate(Date date) {
        this._creationDate = date;
    }

    public Date getModificationDate() {
        return new Date(this._modificationDate.getTime());
    }

    protected void setModificationDate(Date date) {
        this._modificationDate = date;
    }

    protected AdobeCloud getCloud() {
        return this._cloud;
    }

    protected void setCloud(AdobeCloud adobeCloud) {
        this._cloud = adobeCloud;
    }

    public boolean isEqualToPhoto(AdobePhoto adobePhoto) {
        return this._GUID.equals(adobePhoto._GUID);
    }

    public AdobePhoto getCopy() {
        AdobePhoto adobePhoto = new AdobePhoto();
        adobePhoto._internalID = this._internalID;
        adobePhoto._GUID = this._GUID;
        adobePhoto._href = this._href;
        adobePhoto._baseHref = this._baseHref;
        adobePhoto._creationDate = this._creationDate;
        adobePhoto._modificationDate = this._modificationDate;
        adobePhoto._cloud = this._cloud;
        return adobePhoto;
    }

    @Override // java.io.Externalizable
    @Deprecated
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._internalID = (String) objectInput.readObject();
        this._GUID = (String) objectInput.readObject();
        this._href = (String) objectInput.readObject();
        this._baseHref = (String) objectInput.readObject();
        this._creationDate = (Date) objectInput.readObject();
        this._modificationDate = (Date) objectInput.readObject();
        this._cloud = (AdobeCloud) objectInput.readObject();
    }

    @Override // java.io.Externalizable
    @Deprecated
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._internalID);
        objectOutput.writeObject(this._GUID);
        objectOutput.writeObject(this._href);
        objectOutput.writeObject(this._baseHref);
        objectOutput.writeObject(this._creationDate);
        objectOutput.writeObject(this._modificationDate);
        objectOutput.writeObject(this._cloud);
    }

    protected AdobePhotoSession getSession() {
        return (AdobePhotoSession) this._cloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypePhoto);
    }
}
