package com.behance.sdk.s3;

import android.content.Context;
import android.support.annotation.NonNull;
import com.behance.sdk.s3.responses.multipart.GenerateSignedUrlResponse;
import com.behance.sdk.s3.responses.multipart.InitiateMultipartUploadResponse;
import com.behance.sdk.s3.responses.multipart.UploadCompletionResponse;
import com.behance.sdk.webservices.OkHttpHelper;
import com.behance.sdk.webservices.apis.AssetUploadApi;
import d.bd;
import d.bf;
import d.g;
import d.i;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public class MultipartUploader {
    public static final long CHUNK_SIZE = 5242880;
    private BehanceS3UtilCallbacks callback;
    private Context context;
    private File file;
    private File[] fileChunks;
    private int id;
    private InitiateMultipartUploadResponse initiateMultipartUploadResponse;
    private g stepOneCall;
    private ArrayList<GenerateSignedUrlResponse> signedUrls = new ArrayList<>();
    private int uploadsCompleted = 0;
    private ArrayList<g> asyncCalls = new ArrayList<>();

    MultipartUploader(Context context, int i, File file, BehanceS3UtilCallbacks behanceS3UtilCallbacks) {
        this.context = context;
        this.id = i;
        this.file = file;
        this.callback = behanceS3UtilCallbacks;
    }

    void beginUpload() throws IOException {
        stepOne();
    }

    private void stepOne() throws IOException {
        this.stepOneCall = AssetUploadApi.initiateMultipartUpload(FilenameUtils.getExtension(this.file.getAbsolutePath()));
        this.stepOneCall.a(new i() { // from class: com.behance.sdk.s3.MultipartUploader.1
            @Override // d.i
            public void onFailure(@NonNull g gVar, @NonNull IOException iOException) {
                MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: network error."), MultipartUploader.this.id);
            }

            @Override // d.i
            public void onResponse(@NonNull g gVar, @NonNull bd bdVar) throws IOException {
                if (!bdVar.c()) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not initiate multipart upload."), MultipartUploader.this.id);
                    return;
                }
                bf bfVarF = bdVar.f();
                if (bfVarF == null) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not open response body for multipart initiation."), MultipartUploader.this.id);
                    return;
                }
                InitiateMultipartUploadResponse initiateMultipartUploadResponse = (InitiateMultipartUploadResponse) OkHttpHelper.getGson().fromJson(bfVarF.f(), InitiateMultipartUploadResponse.class);
                if (initiateMultipartUploadResponse == null) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not parse response body for multipart initiation."), MultipartUploader.this.id);
                } else {
                    MultipartUploader.this.initiateMultipartUploadResponse = initiateMultipartUploadResponse;
                    MultipartUploader.this.sendParts();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendParts() throws IOException {
        createFileChunks();
        for (int i = 0; i < this.fileChunks.length; i++) {
            stepTwo(i + 1);
        }
    }

    private void createFileChunks() throws IOException {
        long length = this.file.length();
        int i = (int) (length / CHUNK_SIZE);
        if (length % CHUNK_SIZE != 0) {
            i++;
        }
        this.fileChunks = new File[i];
        FileInputStream fileInputStream = new FileInputStream(this.file);
        byte[] bArr = new byte[5242880];
        for (int i2 = 0; i2 < i; i2++) {
            File file = new File(this.context.getCacheDir(), "chunk-" + i2);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileInputStream.read(bArr);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            this.fileChunks[i2] = file;
        }
    }

    private void stepTwo(int i) throws IOException {
        if (this.initiateMultipartUploadResponse == null) {
            this.callback.onUploadError(new Exception("MultipartUploader: Step two failure."), this.id);
            return;
        }
        g gVarGenerateSignedUrlForPart = AssetUploadApi.generateSignedUrlForPart(this.initiateMultipartUploadResponse.getUploadId(), this.initiateMultipartUploadResponse.getObject().getKey(), i);
        this.asyncCalls.add(gVarGenerateSignedUrlForPart);
        gVarGenerateSignedUrlForPart.a(new i() { // from class: com.behance.sdk.s3.MultipartUploader.2
            @Override // d.i
            public void onFailure(@NonNull g gVar, @NonNull IOException iOException) {
                MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: network error."), MultipartUploader.this.id);
            }

            @Override // d.i
            public void onResponse(@NonNull g gVar, @NonNull bd bdVar) throws IOException {
                if (!bdVar.c()) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not generate signed url for part."), MultipartUploader.this.id);
                    return;
                }
                bf bfVarF = bdVar.f();
                if (bfVarF == null) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not open response body on signed url for part."), MultipartUploader.this.id);
                    return;
                }
                GenerateSignedUrlResponse generateSignedUrlResponse = (GenerateSignedUrlResponse) OkHttpHelper.getGson().fromJson(bfVarF.f(), GenerateSignedUrlResponse.class);
                if (generateSignedUrlResponse == null) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Could not parse response body on signed url for part."), MultipartUploader.this.id);
                } else {
                    MultipartUploader.this.signedUrlComplete(generateSignedUrlResponse);
                }
            }
        });
    }

    private void stepThree(GenerateSignedUrlResponse generateSignedUrlResponse, File file) throws IOException {
        g gVarUploadChunkToS3 = AssetUploadApi.uploadChunkToS3(generateSignedUrlResponse.getUri(), file);
        this.asyncCalls.add(gVarUploadChunkToS3);
        gVarUploadChunkToS3.a(new i() { // from class: com.behance.sdk.s3.MultipartUploader.3
            @Override // d.i
            public void onFailure(@NonNull g gVar, @NonNull IOException iOException) {
                MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Network error."), MultipartUploader.this.id);
            }

            @Override // d.i
            public void onResponse(@NonNull g gVar, @NonNull bd bdVar) throws IOException {
                if (!bdVar.c()) {
                    MultipartUploader.this.callback.onUploadError(new Exception("MultipartUploader: Unable to upload part."), MultipartUploader.this.id);
                } else {
                    MultipartUploader.this.partUploadComplete();
                }
            }
        });
    }

    private void stepFour() throws IOException {
        bd bdVarCompleteMultipartUpload = AssetUploadApi.completeMultipartUpload(this.initiateMultipartUploadResponse.getUploadId(), this.initiateMultipartUploadResponse.getObject().getKey());
        if (!bdVarCompleteMultipartUpload.c()) {
            this.callback.onUploadError(new Exception("MultipartUploader: Unable to complete multipart upload."), this.id);
            return;
        }
        bf bfVarF = bdVarCompleteMultipartUpload.f();
        if (bfVarF == null) {
            this.callback.onUploadError(new Exception("MultipartUploader: Unable to open response body for multipart upload."), this.id);
            return;
        }
        UploadCompletionResponse uploadCompletionResponse = (UploadCompletionResponse) OkHttpHelper.getGson().fromJson(bfVarF.f(), UploadCompletionResponse.class);
        if (uploadCompletionResponse == null) {
            this.callback.onUploadError(new Exception("MultipartUploader: Unable to parse response body for multipart upload."), this.id);
        } else {
            this.callback.onUploadComplete(uploadCompletionResponse.getSignedObject().getLocation(), this.id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signedUrlComplete(GenerateSignedUrlResponse generateSignedUrlResponse) throws IOException {
        this.signedUrls.add(generateSignedUrlResponse);
        if (this.signedUrls.size() == this.fileChunks.length) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.signedUrls.size()) {
                    stepThree(this.signedUrls.get(i2), this.fileChunks[i2]);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void partUploadComplete() throws IOException {
        this.uploadsCompleted++;
        this.callback.onUploadProgress(this.uploadsCompleted / this.fileChunks.length, this.id);
        if (this.uploadsCompleted == this.fileChunks.length) {
            stepFour();
        }
    }

    public void cancel() {
        if (this.stepOneCall != null) {
            this.stepOneCall.b();
        }
        for (g gVar : this.asyncCalls) {
            if (gVar != null) {
                gVar.b();
            }
        }
    }
}
