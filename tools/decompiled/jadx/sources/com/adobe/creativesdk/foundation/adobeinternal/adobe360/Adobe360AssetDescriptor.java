package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360AssetDescriptor {
    private String _name;
    private String _path;
    private String _type;

    private Adobe360AssetDescriptor(String str, String str2, String str3) {
        this._name = str;
        this._type = str2;
        this._path = str3;
    }

    @Deprecated
    public static Adobe360AssetDescriptor createAssetDescriptorWithName(String str, String str2, String str3) {
        return new Adobe360AssetDescriptor(str, str2, str3);
    }

    public static Adobe360AssetDescriptor createAssetDescriptorWithType(String str, String str2) {
        return new Adobe360AssetDescriptor(null, str, str2);
    }

    @Deprecated
    public String getName() {
        return this._name;
    }

    @Deprecated
    public void setName(String str) {
        this._name = str;
    }

    public String getType() {
        return this._type;
    }

    public void setType(String str) {
        this._type = str;
    }

    public String getPath() {
        return this._path;
    }

    public void setPath(String str) {
        this._path = str;
    }

    public Adobe360AssetDescriptor getCopy() {
        return createAssetDescriptorWithType(this._type, this._path);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        try {
            Adobe360AssetDescriptor adobe360AssetDescriptor = (Adobe360AssetDescriptor) obj;
            if (this._path.equals(adobe360AssetDescriptor._path)) {
                if (this._type.equals(adobe360AssetDescriptor._type)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return false;
        }
    }

    public int hashCode() {
        return (this._type + "#" + this._path).hashCode();
    }
}
