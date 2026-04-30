package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.FileMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SaveUrlResult {
    private Tag _tag;
    private String asyncJobIdValue;
    private FileMetadata completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    private SaveUrlResult() {
    }

    private SaveUrlResult withTag(Tag tag) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult._tag = tag;
        return saveUrlResult;
    }

    private SaveUrlResult withTagAndAsyncJobId(Tag tag, String str) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult._tag = tag;
        saveUrlResult.asyncJobIdValue = str;
        return saveUrlResult;
    }

    private SaveUrlResult withTagAndComplete(Tag tag, FileMetadata fileMetadata) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult._tag = tag;
        saveUrlResult.completeValue = fileMetadata;
        return saveUrlResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static SaveUrlResult asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new SaveUrlResult().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
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

    public static SaveUrlResult complete(FileMetadata fileMetadata) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SaveUrlResult().withTagAndComplete(Tag.COMPLETE, fileMetadata);
    }

    public FileMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SaveUrlResult)) {
            return false;
        }
        SaveUrlResult saveUrlResult = (SaveUrlResult) obj;
        if (this._tag != saveUrlResult._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == saveUrlResult.asyncJobIdValue || this.asyncJobIdValue.equals(saveUrlResult.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == saveUrlResult.completeValue || this.completeValue.equals(saveUrlResult.completeValue);
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

    class Serializer extends UnionSerializer<SaveUrlResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SaveUrlResult saveUrlResult, g gVar) throws IOException {
            switch (saveUrlResult.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(saveUrlResult.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    FileMetadata.Serializer.INSTANCE.serialize(saveUrlResult.completeValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + saveUrlResult.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SaveUrlResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SaveUrlResult saveUrlResultComplete;
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
                saveUrlResultComplete = SaveUrlResult.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                saveUrlResultComplete = SaveUrlResult.complete(FileMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return saveUrlResultComplete;
        }
    }
}
