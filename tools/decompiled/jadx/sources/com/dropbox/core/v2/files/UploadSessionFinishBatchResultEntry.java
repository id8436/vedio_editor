package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.UploadSessionFinishError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadSessionFinishBatchResultEntry {
    private Tag _tag;
    private UploadSessionFinishError failureValue;
    private FileMetadata successValue;

    public enum Tag {
        SUCCESS,
        FAILURE
    }

    private UploadSessionFinishBatchResultEntry() {
    }

    private UploadSessionFinishBatchResultEntry withTag(Tag tag) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry._tag = tag;
        return uploadSessionFinishBatchResultEntry;
    }

    private UploadSessionFinishBatchResultEntry withTagAndSuccess(Tag tag, FileMetadata fileMetadata) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry._tag = tag;
        uploadSessionFinishBatchResultEntry.successValue = fileMetadata;
        return uploadSessionFinishBatchResultEntry;
    }

    private UploadSessionFinishBatchResultEntry withTagAndFailure(Tag tag, UploadSessionFinishError uploadSessionFinishError) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry._tag = tag;
        uploadSessionFinishBatchResultEntry.failureValue = uploadSessionFinishError;
        return uploadSessionFinishBatchResultEntry;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static UploadSessionFinishBatchResultEntry success(FileMetadata fileMetadata) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishBatchResultEntry().withTagAndSuccess(Tag.SUCCESS, fileMetadata);
    }

    public FileMetadata getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isFailure() {
        return this._tag == Tag.FAILURE;
    }

    public static UploadSessionFinishBatchResultEntry failure(UploadSessionFinishError uploadSessionFinishError) {
        if (uploadSessionFinishError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishBatchResultEntry().withTagAndFailure(Tag.FAILURE, uploadSessionFinishError);
    }

    public UploadSessionFinishError getFailureValue() {
        if (this._tag != Tag.FAILURE) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this._tag.name());
        }
        return this.failureValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.failureValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishBatchResultEntry)) {
            return false;
        }
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = (UploadSessionFinishBatchResultEntry) obj;
        if (this._tag != uploadSessionFinishBatchResultEntry._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == uploadSessionFinishBatchResultEntry.successValue || this.successValue.equals(uploadSessionFinishBatchResultEntry.successValue);
            case FAILURE:
                return this.failureValue == uploadSessionFinishBatchResultEntry.failureValue || this.failureValue.equals(uploadSessionFinishBatchResultEntry.failureValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<UploadSessionFinishBatchResultEntry> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry, g gVar) throws IOException {
            switch (uploadSessionFinishBatchResultEntry.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    FileMetadata.Serializer.INSTANCE.serialize(uploadSessionFinishBatchResultEntry.successValue, gVar, true);
                    gVar.f();
                    return;
                case FAILURE:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, gVar);
                    gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    UploadSessionFinishError.Serializer.INSTANCE.serialize(uploadSessionFinishBatchResultEntry.failureValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + uploadSessionFinishBatchResultEntry.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadSessionFinishBatchResultEntry deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntryFailure;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                uploadSessionFinishBatchResultEntryFailure = UploadSessionFinishBatchResultEntry.success(FileMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL.equals(tag)) {
                expectField(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, kVar);
                uploadSessionFinishBatchResultEntryFailure = UploadSessionFinishBatchResultEntry.failure(UploadSessionFinishError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadSessionFinishBatchResultEntryFailure;
        }
    }
}
