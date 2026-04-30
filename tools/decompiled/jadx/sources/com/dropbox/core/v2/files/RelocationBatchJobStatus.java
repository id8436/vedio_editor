package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.RelocationBatchError;
import com.dropbox.core.v2.files.RelocationBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RelocationBatchJobStatus {
    public static final RelocationBatchJobStatus IN_PROGRESS = new RelocationBatchJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private RelocationBatchResult completeValue;
    private RelocationBatchError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private RelocationBatchJobStatus() {
    }

    private RelocationBatchJobStatus withTag(Tag tag) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus._tag = tag;
        return relocationBatchJobStatus;
    }

    private RelocationBatchJobStatus withTagAndComplete(Tag tag, RelocationBatchResult relocationBatchResult) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus._tag = tag;
        relocationBatchJobStatus.completeValue = relocationBatchResult;
        return relocationBatchJobStatus;
    }

    private RelocationBatchJobStatus withTagAndFailed(Tag tag, RelocationBatchError relocationBatchError) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus._tag = tag;
        relocationBatchJobStatus.failedValue = relocationBatchError;
        return relocationBatchJobStatus;
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

    public static RelocationBatchJobStatus complete(RelocationBatchResult relocationBatchResult) {
        if (relocationBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchJobStatus().withTagAndComplete(Tag.COMPLETE, relocationBatchResult);
    }

    public RelocationBatchResult getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static RelocationBatchJobStatus failed(RelocationBatchError relocationBatchError) {
        if (relocationBatchError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchJobStatus().withTagAndFailed(Tag.FAILED, relocationBatchError);
    }

    public RelocationBatchError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchJobStatus)) {
            return false;
        }
        RelocationBatchJobStatus relocationBatchJobStatus = (RelocationBatchJobStatus) obj;
        if (this._tag != relocationBatchJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == relocationBatchJobStatus.completeValue || this.completeValue.equals(relocationBatchJobStatus.completeValue);
            case FAILED:
                return this.failedValue == relocationBatchJobStatus.failedValue || this.failedValue.equals(relocationBatchJobStatus.failedValue);
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

    class Serializer extends UnionSerializer<RelocationBatchJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelocationBatchJobStatus relocationBatchJobStatus, g gVar) throws IOException {
            switch (relocationBatchJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    RelocationBatchResult.Serializer.INSTANCE.serialize(relocationBatchJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    RelocationBatchError.Serializer.INSTANCE.serialize(relocationBatchJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RelocationBatchJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelocationBatchJobStatus relocationBatchJobStatusFailed;
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
                relocationBatchJobStatusFailed = RelocationBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                relocationBatchJobStatusFailed = RelocationBatchJobStatus.complete(RelocationBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                relocationBatchJobStatusFailed = RelocationBatchJobStatus.failed(RelocationBatchError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relocationBatchJobStatusFailed;
        }
    }
}
