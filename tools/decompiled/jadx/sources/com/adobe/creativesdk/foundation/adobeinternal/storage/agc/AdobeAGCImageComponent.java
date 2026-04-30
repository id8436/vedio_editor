package com.adobe.creativesdk.foundation.adobeinternal.storage.agc;

import android.support.annotation.NonNull;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAGCImageComponent {
    private String _contentType;
    private byte[] _data;
    private AdobeAssetFile _file;
    private String _href;
    private String _sourcePath;

    public AdobeAGCImageComponent(byte[] bArr, String str, String str2) {
        this._data = bArr;
        this._href = str;
        this._contentType = str2;
        this._file = null;
        this._sourcePath = null;
    }

    public AdobeAGCImageComponent(String str, String str2, String str3) {
        this._data = null;
        this._file = null;
        this._href = str2;
        this._contentType = str3;
        this._sourcePath = str;
    }

    public AdobeAGCImageComponent(@NonNull AdobeAssetFile adobeAssetFile) {
        this._href = adobeAssetFile.getHref().toString();
        this._data = null;
        this._file = adobeAssetFile;
    }

    public String getDescription() {
        String str;
        if (getData() != null) {
            str = "data";
        } else if (getFile() != null) {
            str = "file";
        } else {
            str = "invalid";
        }
        return String.format("{ href: \"%s\", type: \"%s\", contentType: \"%s\" }", getHref(), str, getContentType());
    }

    public String getHref() {
        return this._href;
    }

    public byte[] getData() {
        return this._data;
    }

    public AdobeAssetFile getFile() {
        return this._file;
    }

    public String getContentType() {
        return this._contentType;
    }

    public String getSourcePath() {
        return this._sourcePath;
    }
}
