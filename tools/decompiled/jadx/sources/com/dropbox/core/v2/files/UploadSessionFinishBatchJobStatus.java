package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.UploadSessionFinishBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadSessionFinishBatchJobStatus {
    public static final UploadSessionFinishBatchJobStatus IN_PROGRESS = new UploadSessionFinishBatchJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private UploadSessionFinishBatchResult completeValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE
    }

    private UploadSessionFinishBatchJobStatus() {
    }

    private UploadSessionFinishBatchJobStatus withTag(Tag tag) {
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
        uploadSessionFinishBatchJobStatus._tag = tag;
        return uploadSessionFinishBatchJobStatus;
    }

    private UploadSessionFinishBatchJobStatus withTagAndComplete(Tag tag, UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
        uploadSessionFinishBatchJobStatus._tag = tag;
        uploadSessionFinishBatchJobStatus.completeValue = uploadSessionFinishBatchResult;
        return uploadSessionFinishBatchJobStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static UploadSessionFinishBatchJobStatus complete(UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        if (uploadSessionFinishBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishBatchJobStatus().withTagAndComplete(Tag.COMPLETE, uploadSessionFinishBatchResult);
    }

    public UploadSessionFinishBatchResult getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishBatchJobStatus)) {
            return false;
        }
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = (UploadSessionFinishBatchJobStatus) obj;
        if (this._tag != uploadSessionFinishBatchJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == uploadSessionFinishBatchJobStatus.completeValue || this.completeValue.equals(uploadSessionFinishBatchJobStatus.completeValue);
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

    class Serializer extends UnionSerializer<UploadSessionFinishBatchJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus, g gVar) throws IOException {
            switch (uploadSessionFinishBatchJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    UploadSessionFinishBatchResult.Serializer.INSTANCE.serialize(uploadSessionFinishBatchJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + uploadSessionFinishBatchJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadSessionFinishBatchJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatusComplete;
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
            if ("in_progress".equals(tag)) {
                uploadSessionFinishBatchJobStatusComplete = UploadSessionFinishBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                uploadSessionFinishBatchJobStatusComplete = UploadSessionFinishBatchJobStatus.complete(UploadSessionFinishBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadSessionFinishBatchJobStatusComplete;
        }
    }
}
