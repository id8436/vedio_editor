package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.internal.util.AdobePhotoUtils;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoAssetRevision implements Externalizable {
    private String _GUID;

    public String getGUID() {
        return this._GUID;
    }

    public void setGUID(String str) {
        this._GUID = str;
    }

    public static AdobePhotoAssetRevision create() {
        return new AdobePhotoAssetRevision();
    }

    public AdobePhotoAssetRevision getCopy() {
        return new AdobePhotoAssetRevision(this._GUID, true);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._GUID = (String) objectInput.readObject();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._GUID);
    }

    public AdobePhotoAssetRevision() {
        this._GUID = null;
        this._GUID = AdobePhotoUtils.generateGUID();
    }

    AdobePhotoAssetRevision(String str, boolean z) {
        this._GUID = null;
        if (z) {
            this._GUID = str;
            return;
        }
        Matcher matcher = Pattern.compile("/revisions/([a-zA-Z0-9]+)", 2).matcher(str);
        if (matcher.find()) {
            this._GUID = matcher.group(1);
        }
    }
}
