package com.behance.sdk.s3;

import android.content.Context;
import android.support.annotation.NonNull;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BehanceS3Uploader {
    private BehanceS3UtilCallbacks callbacks;
    private Context context;

    @NonNull
    private File file;
    private int id;
    private MultipartUploader multipartUploader;
    private SinglepartUploader singlepartUploader;

    public BehanceS3Uploader(Context context, int i, @NonNull String str, BehanceS3UtilCallbacks behanceS3UtilCallbacks) {
        this.context = context;
        this.id = i;
        this.file = new File(str);
        this.callbacks = behanceS3UtilCallbacks;
    }

    public void upload() {
        try {
            if (this.file.length() >= MultipartUploader.CHUNK_SIZE) {
                uploadMultipart();
            } else {
                uploadSinglepart();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void uploadMultipart() throws IOException {
        this.multipartUploader = new MultipartUploader(this.context, this.id, this.file, this.callbacks);
        this.multipartUploader.beginUpload();
    }

    private void uploadSinglepart() throws IOException {
        this.singlepartUploader = new SinglepartUploader(this.id, this.file, this.callbacks);
        this.singlepartUploader.beginUpload();
    }

    public void cancel() {
        if (this.multipartUploader != null) {
            this.multipartUploader.cancel();
        }
        if (this.singlepartUploader != null) {
            this.singlepartUploader.cancel();
        }
    }

    static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl == null) {
            return null;
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
    }
}
