package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.DeleteBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DeleteBatchLaunch {
    public static final DeleteBatchLaunch OTHER = new DeleteBatchLaunch().withTag(Tag.OTHER);
    private Tag _tag;
    private String asyncJobIdValue;
    private DeleteBatchResult completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    private DeleteBatchLaunch() {
    }

    private DeleteBatchLaunch withTag(Tag tag) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch._tag = tag;
        return deleteBatchLaunch;
    }

    private DeleteBatchLaunch withTagAndAsyncJobId(Tag tag, String str) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch._tag = tag;
        deleteBatchLaunch.asyncJobIdValue = str;
        return deleteBatchLaunch;
    }

    private DeleteBatchLaunch withTagAndComplete(Tag tag, DeleteBatchResult deleteBatchResult) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch._tag = tag;
        deleteBatchLaunch.completeValue = deleteBatchResult;
        return deleteBatchLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static DeleteBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new DeleteBatchLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static DeleteBatchLaunch complete(DeleteBatchResult deleteBatchResult) {
        if (deleteBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteBatchLaunch().withTagAndComplete(Tag.COMPLETE, deleteBatchResult);
    }

    public DeleteBatchResult getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchLaunch)) {
            return false;
        }
        DeleteBatchLaunch deleteBatchLaunch = (DeleteBatchLaunch) obj;
        if (this._tag != deleteBatchLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == deleteBatchLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(deleteBatchLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == deleteBatchLaunch.completeValue || this.completeValue.equals(deleteBatchLaunch.completeValue);
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

    class Serializer extends UnionSerializer<DeleteBatchLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeleteBatchLaunch deleteBatchLaunch, g gVar) throws IOException {
            switch (deleteBatchLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(deleteBatchLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    break;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    DeleteBatchResult.Serializer.INSTANCE.serialize(deleteBatchLaunch.completeValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeleteBatchLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeleteBatchLaunch deleteBatchLaunchComplete;
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
            if ("async_job_id".equals(tag)) {
                expectField("async_job_id", kVar);
                deleteBatchLaunchComplete = DeleteBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                deleteBatchLaunchComplete = DeleteBatchLaunch.complete(DeleteBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                deleteBatchLaunchComplete = DeleteBatchLaunch.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deleteBatchLaunchComplete;
        }
    }
}
