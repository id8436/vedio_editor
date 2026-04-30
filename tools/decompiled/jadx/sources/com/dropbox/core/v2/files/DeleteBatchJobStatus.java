package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.DeleteBatchError;
import com.dropbox.core.v2.files.DeleteBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DeleteBatchJobStatus {
    public static final DeleteBatchJobStatus IN_PROGRESS = new DeleteBatchJobStatus().withTag(Tag.IN_PROGRESS);
    public static final DeleteBatchJobStatus OTHER = new DeleteBatchJobStatus().withTag(Tag.OTHER);
    private Tag _tag;
    private DeleteBatchResult completeValue;
    private DeleteBatchError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED,
        OTHER
    }

    private DeleteBatchJobStatus() {
    }

    private DeleteBatchJobStatus withTag(Tag tag) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus._tag = tag;
        return deleteBatchJobStatus;
    }

    private DeleteBatchJobStatus withTagAndComplete(Tag tag, DeleteBatchResult deleteBatchResult) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus._tag = tag;
        deleteBatchJobStatus.completeValue = deleteBatchResult;
        return deleteBatchJobStatus;
    }

    private DeleteBatchJobStatus withTagAndFailed(Tag tag, DeleteBatchError deleteBatchError) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus._tag = tag;
        deleteBatchJobStatus.failedValue = deleteBatchError;
        return deleteBatchJobStatus;
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

    public static DeleteBatchJobStatus complete(DeleteBatchResult deleteBatchResult) {
        if (deleteBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteBatchJobStatus().withTagAndComplete(Tag.COMPLETE, deleteBatchResult);
    }

    public DeleteBatchResult getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static DeleteBatchJobStatus failed(DeleteBatchError deleteBatchError) {
        if (deleteBatchError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteBatchJobStatus().withTagAndFailed(Tag.FAILED, deleteBatchError);
    }

    public DeleteBatchError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchJobStatus)) {
            return false;
        }
        DeleteBatchJobStatus deleteBatchJobStatus = (DeleteBatchJobStatus) obj;
        if (this._tag != deleteBatchJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == deleteBatchJobStatus.completeValue || this.completeValue.equals(deleteBatchJobStatus.completeValue);
            case FAILED:
                return this.failedValue == deleteBatchJobStatus.failedValue || this.failedValue.equals(deleteBatchJobStatus.failedValue);
            case OTHER:
                return true;
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

    class Serializer extends UnionSerializer<DeleteBatchJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeleteBatchJobStatus deleteBatchJobStatus, g gVar) throws IOException {
            switch (deleteBatchJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    break;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    DeleteBatchResult.Serializer.INSTANCE.serialize(deleteBatchJobStatus.completeValue, gVar, true);
                    gVar.f();
                    break;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    DeleteBatchError.Serializer.INSTANCE.serialize(deleteBatchJobStatus.failedValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeleteBatchJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeleteBatchJobStatus deleteBatchJobStatusFailed;
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
                deleteBatchJobStatusFailed = DeleteBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                deleteBatchJobStatusFailed = DeleteBatchJobStatus.complete(DeleteBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                deleteBatchJobStatusFailed = DeleteBatchJobStatus.failed(DeleteBatchError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                deleteBatchJobStatusFailed = DeleteBatchJobStatus.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deleteBatchJobStatusFailed;
        }
    }
}
