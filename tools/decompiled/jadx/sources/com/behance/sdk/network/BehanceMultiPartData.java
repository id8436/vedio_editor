package com.behance.sdk.network;

import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceMultiPartData {
    private String contentID;
    private String contentTransferEncoding;
    private String contentType;
    private byte[] data;
    private String fileName;
    private ByteArrayInputStream inputStream;
    private String name;
    private String sourcePath;

    public ByteArrayInputStream getInputStream() {
        return this.inputStream;
    }

    public void setInputStream(ByteArrayInputStream byteArrayInputStream) {
        this.inputStream = byteArrayInputStream;
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

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getContentTransferEncoding() {
        return this.contentTransferEncoding;
    }

    public void setContentTransferEncoding(String str) {
        this.contentTransferEncoding = str;
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
