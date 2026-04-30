package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.SaveUrlError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SaveUrlJobStatus {
    public static final SaveUrlJobStatus IN_PROGRESS = new SaveUrlJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private FileMetadata completeValue;
    private SaveUrlError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private SaveUrlJobStatus() {
    }

    private SaveUrlJobStatus withTag(Tag tag) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus._tag = tag;
        return saveUrlJobStatus;
    }

    private SaveUrlJobStatus withTagAndComplete(Tag tag, FileMetadata fileMetadata) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus._tag = tag;
        saveUrlJobStatus.completeValue = fileMetadata;
        return saveUrlJobStatus;
    }

    private SaveUrlJobStatus withTagAndFailed(Tag tag, SaveUrlError saveUrlError) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus._tag = tag;
        saveUrlJobStatus.failedValue = saveUrlError;
        return saveUrlJobStatus;
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

    public static SaveUrlJobStatus complete(FileMetadata fileMetadata) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SaveUrlJobStatus().withTagAndComplete(Tag.COMPLETE, fileMetadata);
    }

    public FileMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static SaveUrlJobStatus failed(SaveUrlError saveUrlError) {
        if (saveUrlError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SaveUrlJobStatus().withTagAndFailed(Tag.FAILED, saveUrlError);
    }

    public SaveUrlError getFailedValue() {
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
        if (obj == null || !(obj instanceof SaveUrlJobStatus)) {
            return false;
        }
        SaveUrlJobStatus saveUrlJobStatus = (SaveUrlJobStatus) obj;
        if (this._tag != saveUrlJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == saveUrlJobStatus.completeValue || this.completeValue.equals(saveUrlJobStatus.completeValue);
            case FAILED:
                return this.failedValue == saveUrlJobStatus.failedValue || this.failedValue.equals(saveUrlJobStatus.failedValue);
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

    class Serializer extends UnionSerializer<SaveUrlJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SaveUrlJobStatus saveUrlJobStatus, g gVar) throws IOException {
            switch (saveUrlJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    FileMetadata.Serializer.INSTANCE.serialize(saveUrlJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    SaveUrlError.Serializer.INSTANCE.serialize(saveUrlJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + saveUrlJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SaveUrlJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SaveUrlJobStatus saveUrlJobStatusFailed;
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
                saveUrlJobStatusFailed = SaveUrlJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                saveUrlJobStatusFailed = SaveUrlJobStatus.complete(FileMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                saveUrlJobStatusFailed = SaveUrlJobStatus.failed(SaveUrlError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return saveUrlJobStatusFailed;
        }
    }
}
