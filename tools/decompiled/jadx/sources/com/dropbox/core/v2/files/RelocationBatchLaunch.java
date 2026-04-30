package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.RelocationBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RelocationBatchLaunch {
    public static final RelocationBatchLaunch OTHER = new RelocationBatchLaunch().withTag(Tag.OTHER);
    private Tag _tag;
    private String asyncJobIdValue;
    private RelocationBatchResult completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    private RelocationBatchLaunch() {
    }

    private RelocationBatchLaunch withTag(Tag tag) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch._tag = tag;
        return relocationBatchLaunch;
    }

    private RelocationBatchLaunch withTagAndAsyncJobId(Tag tag, String str) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch._tag = tag;
        relocationBatchLaunch.asyncJobIdValue = str;
        return relocationBatchLaunch;
    }

    private RelocationBatchLaunch withTagAndComplete(Tag tag, RelocationBatchResult relocationBatchResult) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch._tag = tag;
        relocationBatchLaunch.completeValue = relocationBatchResult;
        return relocationBatchLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static RelocationBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new RelocationBatchLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
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

    public static RelocationBatchLaunch complete(RelocationBatchResult relocationBatchResult) {
        if (relocationBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchLaunch().withTagAndComplete(Tag.COMPLETE, relocationBatchResult);
    }

    public RelocationBatchResult getCompleteValue() {
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
        if (obj == null || !(obj instanceof RelocationBatchLaunch)) {
            return false;
        }
        RelocationBatchLaunch relocationBatchLaunch = (RelocationBatchLaunch) obj;
        if (this._tag != relocationBatchLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == relocationBatchLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(relocationBatchLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == relocationBatchLaunch.completeValue || this.completeValue.equals(relocationBatchLaunch.completeValue);
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

    class Serializer extends UnionSerializer<RelocationBatchLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelocationBatchLaunch relocationBatchLaunch, g gVar) throws IOException {
            switch (relocationBatchLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(relocationBatchLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    break;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    RelocationBatchResult.Serializer.INSTANCE.serialize(relocationBatchLaunch.completeValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RelocationBatchLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelocationBatchLaunch relocationBatchLaunchComplete;
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
                relocationBatchLaunchComplete = RelocationBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                relocationBatchLaunchComplete = RelocationBatchLaunch.complete(RelocationBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                relocationBatchLaunchComplete = RelocationBatchLaunch.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relocationBatchLaunchComplete;
        }
    }
}
