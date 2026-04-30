package com.behance.sdk.network;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Random;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
public class BehanceMultipartEntity {
    public static final String CHARSET_ISO_8859 = "ISO-8859-1";
    public static final String CHARSET_UTF8 = "UTF-8";
    public static final String CONTENT_TRANSFER_8BIT = "8bit";
    public static final String CONTENT_TRANSFER_BINARY = "binary";
    public static final String CONTENT_TYPE_APPLICATION_OCTETSTREAM = "application/octet-stream";
    public static final String CONTENT_TYPE_APPLICATION_XHTML = "application/xhtml+xml; charset=ISO-8859-1";
    public static final String CONTENT_TYPE_TEXT_ISO_8859 = "text/plain; charset=ISO-8859-1";
    public static final String CONTENT_TYPE_TEXT_UTF8 = "text/plain; charset=UTF-8";
    private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private ArrayList<BehanceMultiPartData> multiPartDataArrayList;
    ArrayList<BehanceNameValuePair> headers = null;
    private String boundary = generateBoundary();
    private boolean chunked = false;
    private boolean browserCompatible = false;
    private long transferredBytesLength = -1;
    private long totalBytesLength = -1;
    private BehanceMultipartEntityWrapper behanceHttpEntityWrapperCallback = null;

    public String getBoundary() {
        return this.boundary;
    }

    public void setBoundary(String str) {
        this.boundary = str;
    }

    public boolean isChunked() {
        return this.chunked;
    }

    public void setChunked(boolean z) {
        this.chunked = z;
    }

    public void incrementTransferredBytesLength(long j) {
        if (this.transferredBytesLength == -1) {
            this.transferredBytesLength = j;
        } else {
            this.transferredBytesLength += j;
        }
        notifyUploadProgress();
    }

    public BehanceMultipartEntityWrapper getBehanceHttpEntityWrapperCallback() {
        return this.behanceHttpEntityWrapperCallback;
    }

    public void setBehanceHttpEntityWrapperCallback(BehanceMultipartEntityWrapper behanceMultipartEntityWrapper) {
        this.behanceHttpEntityWrapperCallback = behanceMultipartEntityWrapper;
    }

    private static int getSize(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.available();
    }

    public long getTotalBytesLength() {
        if (this.totalBytesLength == -1) {
            this.totalBytesLength = 0L;
            for (BehanceMultiPartData behanceMultiPartData : getMultiPartDataList()) {
                this.totalBytesLength += (long) generateMultiPartFormData(behanceMultiPartData, getBoundary(), isBrowserCompatible()).length;
                if (behanceMultiPartData.getSourcePath() != null) {
                    this.totalBytesLength += new File(behanceMultiPartData.getSourcePath()).length();
                } else if (behanceMultiPartData.getInputStream() != null) {
                    this.totalBytesLength += (long) getSize(behanceMultiPartData.getInputStream());
                } else if (behanceMultiPartData.getData() != null) {
                    this.totalBytesLength += (long) behanceMultiPartData.getData().length;
                }
            }
        }
        return this.totalBytesLength;
    }

    private String generateBoundary() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        int iNextInt = random.nextInt(11) + 30;
        for (int i = 0; i < iNextInt; i++) {
            sb.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
        }
        return sb.toString();
    }

    public BehanceMultipartEntity() {
        this.multiPartDataArrayList = null;
        this.multiPartDataArrayList = new ArrayList<>();
    }

    public ArrayList<BehanceMultiPartData> getMultiPartDataList() {
        return this.multiPartDataArrayList;
    }

    public ArrayList<BehanceNameValuePair> getMultipartHeaders() {
        ArrayList<BehanceNameValuePair> arrayList = new ArrayList<>();
        if (this.headers != null) {
            arrayList.addAll(this.headers);
        }
        arrayList.add(new BehanceNameValuePair("Content-Type", "multipart/form-data; boundary=" + getBoundary()));
        if (isChunked()) {
            arrayList.add(new BehanceNameValuePair("Transfer-Encoding", HttpHeaderValues.CHUNKED));
        }
        return arrayList;
    }

    public void addCustomMultipartHeader(BehanceNameValuePair behanceNameValuePair) {
        if (this.headers == null) {
            this.headers = new ArrayList<>();
        }
        this.headers.add(behanceNameValuePair);
    }

    public static byte[] generateMultiPartFormData(BehanceMultiPartData behanceMultiPartData, String str, boolean z) {
        StringBuffer stringBuffer = new StringBuffer("");
        stringBuffer.append(String.format("--%s\r\n", str));
        if (behanceMultiPartData.getFileName() != null && behanceMultiPartData.getName() != null) {
            stringBuffer.append(String.format("Content-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\n", behanceMultiPartData.getName(), behanceMultiPartData.getFileName()));
        } else if (behanceMultiPartData.getFileName() != null) {
            stringBuffer.append(String.format("Content-Disposition: form-data; filename=\"%s\"\r\n", behanceMultiPartData.getFileName()));
        } else if (behanceMultiPartData.getName() != null) {
            stringBuffer.append(String.format("Content-Disposition: form-data; name=\"%s\"\r\n", behanceMultiPartData.getName()));
        } else {
            stringBuffer.append("Content-Disposition: form-data;\r\n");
        }
        if (behanceMultiPartData.getContentTransferEncoding() != null && !z) {
            stringBuffer.append(String.format("Content-Transfer-Encoding: %s\r\n", behanceMultiPartData.getContentTransferEncoding()));
        }
        String contentID = behanceMultiPartData.getContentID();
        if (contentID != null && !z) {
            if (contentID.startsWith("cid:")) {
                contentID = contentID.substring(4);
            }
            stringBuffer.append(String.format("Content-ID: <%s>\r\n", contentID));
        }
        if (behanceMultiPartData.getContentType() != null && !z) {
            stringBuffer.append(String.format("Content-Type: %s\r\n", behanceMultiPartData.getContentType()));
        }
        stringBuffer.append("\r\n");
        try {
            return stringBuffer.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void addTextPart(String str, byte[] bArr) {
        addTextPart(str, null, null, bArr);
    }

    public void addTextPart(String str, String str2, String str3, byte[] bArr) {
        BehanceMultiPartData behanceMultiPartData = new BehanceMultiPartData();
        behanceMultiPartData.setName(str);
        behanceMultiPartData.setContentTransferEncoding(str3);
        behanceMultiPartData.setContentType(str2);
        behanceMultiPartData.setData(bArr);
        getMultiPartDataList().add(behanceMultiPartData);
    }

    public void addImagePart(String str, String str2, String str3, String str4, String str5) {
        BehanceMultiPartData behanceMultiPartData = new BehanceMultiPartData();
        behanceMultiPartData.setName(str);
        behanceMultiPartData.setContentTransferEncoding(str4);
        behanceMultiPartData.setContentType(str3);
        behanceMultiPartData.setFileName(str2);
        behanceMultiPartData.setSourcePath(str5);
        getMultiPartDataList().add(behanceMultiPartData);
    }

    public void addImagePart(String str, String str2, String str3, String str4, ByteArrayInputStream byteArrayInputStream) {
        BehanceMultiPartData behanceMultiPartData = new BehanceMultiPartData();
        behanceMultiPartData.setName(str);
        behanceMultiPartData.setContentTransferEncoding(str4);
        behanceMultiPartData.setContentType(str3);
        behanceMultiPartData.setFileName(str2);
        behanceMultiPartData.setInputStream(byteArrayInputStream);
        getMultiPartDataList().add(behanceMultiPartData);
    }

    public boolean isBrowserCompatible() {
        return this.browserCompatible;
    }

    public void setBrowserCompatible(boolean z) {
        this.browserCompatible = z;
    }

    private void notifyUploadProgress() {
        float totalBytesLength = (this.transferredBytesLength / getTotalBytesLength()) * 100.0f;
        if (this.behanceHttpEntityWrapperCallback != null) {
            this.behanceHttpEntityWrapperCallback.onUploadProgressUpdate(totalBytesLength);
        }
    }
}
