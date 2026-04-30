package com.adobe.creativesdk.foundation.internal.net;

import android.os.Handler;
import android.text.TextUtils;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class AdobeMultiPartData {
    private static final String FORM_DATA = "form-data";
    private String contentDisposition = FORM_DATA;
    private String contentID;
    private String contentType;
    private byte[] data;
    private String httpFormFieldName;
    private InputStream inputStream;
    private String name;
    OnProgressCallback progressCallback;
    Handler progressHandler;
    private String sourcePath;

    public interface OnProgressCallback {
        void progress(long j, long j2);
    }

    public Handler getProgressHandler() {
        return this.progressHandler;
    }

    public void setProgressHandler(Handler handler) {
        this.progressHandler = handler;
    }

    public OnProgressCallback getProgressCallback() {
        return this.progressCallback;
    }

    public void setProgressCallback(OnProgressCallback onProgressCallback) {
        this.progressCallback = onProgressCallback;
    }

    public String getContentDisposition() {
        return this.contentDisposition;
    }

    public void setContentDisposition(String str) {
        if (TextUtils.isEmpty(str)) {
            str = FORM_DATA;
        }
        this.contentDisposition = str;
    }

    public String getHttpFormFieldName() {
        return this.httpFormFieldName;
    }

    public void setHttpFormFieldName(String str) {
        this.httpFormFieldName = str;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public String getSourcePath() {
        return this.sourcePath;
    }

    public void setSourcePath(String str) {
        this.sourcePath = str;
    }

    public String getContentID() {
        return this.contentID;
    }

    public void setContentID(String str) {
        this.contentID = str;
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }
}
