package com.behance.sdk.s3;

import com.behance.sdk.s3.responses.singlepart.GenerateSignedUrlResponse;
import com.behance.sdk.webservices.OkHttpHelper;
import com.behance.sdk.webservices.apis.AssetUploadApi;
import d.an;
import d.bd;
import d.bf;
import d.g;
import d.i;
import java.io.File;
import java.io.IOException;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
class SinglepartUploader {
    private BehanceS3UtilCallbacks callback;
    private File file;
    private int id;
    private g stepOneCall;
    private g stepTwoCall;

    SinglepartUploader(int i, File file, BehanceS3UtilCallbacks behanceS3UtilCallbacks) {
        this.id = i;
        this.file = file;
        this.callback = behanceS3UtilCallbacks;
    }

    void beginUpload() throws IOException {
        stepOne();
    }

    private void stepOne() throws IOException {
        this.stepOneCall = AssetUploadApi.generateSignedUrl(FilenameUtils.getExtension(this.file.getAbsolutePath()));
        this.stepOneCall.a(new i() { // from class: com.behance.sdk.s3.SinglepartUploader.1
            @Override // d.i
            public void onFailure(g gVar, IOException iOException) {
                SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: network error."), SinglepartUploader.this.id);
            }

            @Override // d.i
            public void onResponse(g gVar, bd bdVar) throws IOException {
                if (!bdVar.c()) {
                    SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: Could not generate a signed url."), SinglepartUploader.this.id);
                    return;
                }
                bf bfVarF = bdVar.f();
                if (bfVarF == null) {
                    SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: Could not open response body for signed url."), SinglepartUploader.this.id);
                    return;
                }
                GenerateSignedUrlResponse generateSignedUrlResponse = (GenerateSignedUrlResponse) OkHttpHelper.getGson().fromJson(bfVarF.f(), GenerateSignedUrlResponse.class);
                if (generateSignedUrlResponse == null) {
                    SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: Could not parse response body for signed url."), SinglepartUploader.this.id);
                } else {
                    SinglepartUploader.this.stepTwo(generateSignedUrlResponse);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stepTwo(final GenerateSignedUrlResponse generateSignedUrlResponse) throws IOException {
        String uri = generateSignedUrlResponse.getUri();
        String mimeType = BehanceS3Uploader.getMimeType(uri);
        if (mimeType == null || mimeType.isEmpty()) {
            this.callback.onUploadError(new Exception("SinglepartUploader: Could not resolve file type."), this.id);
        } else {
            this.stepTwoCall = AssetUploadApi.uploadFileToS3(uri, an.a(mimeType), this.file);
            this.stepTwoCall.a(new i() { // from class: com.behance.sdk.s3.SinglepartUploader.2
                @Override // d.i
                public void onFailure(g gVar, IOException iOException) {
                    SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: network error."), SinglepartUploader.this.id);
                }

                @Override // d.i
                public void onResponse(g gVar, bd bdVar) throws IOException {
                    if (!bdVar.c()) {
                        SinglepartUploader.this.callback.onUploadError(new Exception("SinglepartUploader: Could not successfully upload asset.."), SinglepartUploader.this.id);
                    } else {
                        SinglepartUploader.this.callback.onUploadComplete(generateSignedUrlResponse.getSignedObject().getLocation(), SinglepartUploader.this.id);
                    }
                }
            });
        }
    }

    public void cancel() {
        if (this.stepOneCall != null) {
            this.stepOneCall.b();
        }
        if (this.stepTwoCall != null) {
            this.stepTwoCall.b();
        }
    }
}
