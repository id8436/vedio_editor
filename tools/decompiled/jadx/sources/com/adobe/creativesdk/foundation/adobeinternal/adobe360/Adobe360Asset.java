package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360Asset {
    private Object _data;
    private Adobe360AssetDescriptor _descriptor;

    private Adobe360Asset(Object obj, String str, String str2, String str3) {
        this._data = obj;
        this._descriptor = Adobe360AssetDescriptor.createAssetDescriptorWithName(str, str2, str3);
    }

    private Adobe360Asset(Object obj, Adobe360AssetDescriptor adobe360AssetDescriptor) {
        this._data = obj;
        this._descriptor = adobe360AssetDescriptor;
    }

    public static Adobe360Asset createAssetWithData(Object obj, String str, String str2) {
        return new Adobe360Asset(obj, Adobe360AssetDescriptor.createAssetDescriptorWithType(str, str2));
    }

    @Deprecated
    public static Adobe360Asset createAssetWithData(Object obj, String str, String str2, String str3) {
        return new Adobe360Asset(obj, str, str2, str3);
    }

    public static Adobe360Asset createAssetWithData(Object obj, Adobe360AssetDescriptor adobe360AssetDescriptor) {
        return new Adobe360Asset(obj, adobe360AssetDescriptor.getCopy());
    }

    public Object getData() {
        return this._data;
    }

    public void setData(Object obj) {
        this._data = obj;
    }

    public Adobe360AssetDescriptor getDescriptor() {
        return this._descriptor;
    }

    public void setDescriptor(Adobe360AssetDescriptor adobe360AssetDescriptor) {
        this._descriptor = adobe360AssetDescriptor;
    }

    public Adobe360Asset getCopy() {
        return createAssetWithData(this._data, this._descriptor);
    }
}
