package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.UploadSessionFinishBatchResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadSessionFinishBatchLaunch {
    public static final UploadSessionFinishBatchLaunch OTHER = new UploadSessionFinishBatchLaunch().withTag(Tag.OTHER);
    private Tag _tag;
    private String asyncJobIdValue;
    private UploadSessionFinishBatchResult completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    private UploadSessionFinishBatchLaunch() {
    }

    private UploadSessionFinishBatchLaunch withTag(Tag tag) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch._tag = tag;
        return uploadSessionFinishBatchLaunch;
    }

    private UploadSessionFinishBatchLaunch withTagAndAsyncJobId(Tag tag, String str) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch._tag = tag;
        uploadSessionFinishBatchLaunch.asyncJobIdValue = str;
        return uploadSessionFinishBatchLaunch;
    }

    private UploadSessionFinishBatchLaunch withTagAndComplete(Tag tag, UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch._tag = tag;
        uploadSessionFinishBatchLaunch.completeValue = uploadSessionFinishBatchResult;
        return uploadSessionFinishBatchLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static UploadSessionFinishBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new UploadSessionFinishBatchLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
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

    public static UploadSessionFinishBatchLaunch complete(UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        if (uploadSessionFinishBatchResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishBatchLaunch().withTagAndComplete(Tag.COMPLETE, uploadSessionFinishBatchResult);
    }

    public UploadSessionFinishBatchResult getCompleteValue() {
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
        if (obj == null || !(obj instanceof UploadSessionFinishBatchLaunch)) {
            return false;
        }
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = (UploadSessionFinishBatchLaunch) obj;
        if (this._tag != uploadSessionFinishBatchLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == uploadSessionFinishBatchLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(uploadSessionFinishBatchLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == uploadSessionFinishBatchLaunch.completeValue || this.completeValue.equals(uploadSessionFinishBatchLaunch.completeValue);
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

    class Serializer extends UnionSerializer<UploadSessionFinishBatchLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch, g gVar) throws IOException {
            switch (uploadSessionFinishBatchLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(uploadSessionFinishBatchLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    break;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    UploadSessionFinishBatchResult.Serializer.INSTANCE.serialize(uploadSessionFinishBatchLaunch.completeValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadSessionFinishBatchLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunchComplete;
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
                uploadSessionFinishBatchLaunchComplete = UploadSessionFinishBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                uploadSessionFinishBatchLaunchComplete = UploadSessionFinishBatchLaunch.complete(UploadSessionFinishBatchResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                uploadSessionFinishBatchLaunchComplete = UploadSessionFinishBatchLaunch.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadSessionFinishBatchLaunchComplete;
        }
    }
}
