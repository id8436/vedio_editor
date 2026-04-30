package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.UploadSessionLookupError;
import com.dropbox.core.v2.files.WriteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadSessionFinishError {
    private Tag _tag;
    private UploadSessionLookupError lookupFailedValue;
    private WriteError pathValue;
    public static final UploadSessionFinishError TOO_MANY_SHARED_FOLDER_TARGETS = new UploadSessionFinishError().withTag(Tag.TOO_MANY_SHARED_FOLDER_TARGETS);
    public static final UploadSessionFinishError TOO_MANY_WRITE_OPERATIONS = new UploadSessionFinishError().withTag(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final UploadSessionFinishError OTHER = new UploadSessionFinishError().withTag(Tag.OTHER);

    public enum Tag {
        LOOKUP_FAILED,
        PATH,
        TOO_MANY_SHARED_FOLDER_TARGETS,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    private UploadSessionFinishError() {
    }

    private UploadSessionFinishError withTag(Tag tag) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError._tag = tag;
        return uploadSessionFinishError;
    }

    private UploadSessionFinishError withTagAndLookupFailed(Tag tag, UploadSessionLookupError uploadSessionLookupError) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError._tag = tag;
        uploadSessionFinishError.lookupFailedValue = uploadSessionLookupError;
        return uploadSessionFinishError;
    }

    private UploadSessionFinishError withTagAndPath(Tag tag, WriteError writeError) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError._tag = tag;
        uploadSessionFinishError.pathValue = writeError;
        return uploadSessionFinishError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isLookupFailed() {
        return this._tag == Tag.LOOKUP_FAILED;
    }

    public static UploadSessionFinishError lookupFailed(UploadSessionLookupError uploadSessionLookupError) {
        if (uploadSessionLookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishError().withTagAndLookupFailed(Tag.LOOKUP_FAILED, uploadSessionLookupError);
    }

    public UploadSessionLookupError getLookupFailedValue() {
        if (this._tag != Tag.LOOKUP_FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.LOOKUP_FAILED, but was Tag." + this._tag.name());
        }
        return this.lookupFailedValue;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static UploadSessionFinishError path(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionFinishError().withTagAndPath(Tag.PATH, writeError);
    }

    public WriteError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isTooManySharedFolderTargets() {
        return this._tag == Tag.TOO_MANY_SHARED_FOLDER_TARGETS;
    }

    public boolean isTooManyWriteOperations() {
        return this._tag == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.lookupFailedValue, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishError)) {
            return false;
        }
        UploadSessionFinishError uploadSessionFinishError = (UploadSessionFinishError) obj;
        if (this._tag != uploadSessionFinishError._tag) {
            return false;
        }
        switch (this._tag) {
            case LOOKUP_FAILED:
                return this.lookupFailedValue == uploadSessionFinishError.lookupFailedValue || this.lookupFailedValue.equals(uploadSessionFinishError.lookupFailedValue);
            case PATH:
                return this.pathValue == uploadSessionFinishError.pathValue || this.pathValue.equals(uploadSessionFinishError.pathValue);
            case TOO_MANY_SHARED_FOLDER_TARGETS:
                return true;
            case TOO_MANY_WRITE_OPERATIONS:
                return true;
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

    class Serializer extends UnionSerializer<UploadSessionFinishError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadSessionFinishError uploadSessionFinishError, g gVar) throws IOException {
            switch (uploadSessionFinishError.tag()) {
                case LOOKUP_FAILED:
                    gVar.e();
                    writeTag("lookup_failed", gVar);
                    gVar.a("lookup_failed");
                    UploadSessionLookupError.Serializer.INSTANCE.serialize(uploadSessionFinishError.lookupFailedValue, gVar);
                    gVar.f();
                    break;
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    WriteError.Serializer.INSTANCE.serialize(uploadSessionFinishError.pathValue, gVar);
                    gVar.f();
                    break;
                case TOO_MANY_SHARED_FOLDER_TARGETS:
                    gVar.b("too_many_shared_folder_targets");
                    break;
                case TOO_MANY_WRITE_OPERATIONS:
                    gVar.b("too_many_write_operations");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadSessionFinishError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadSessionFinishError uploadSessionFinishErrorPath;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("lookup_failed".equals(tag)) {
                expectField("lookup_failed", kVar);
                uploadSessionFinishErrorPath = UploadSessionFinishError.lookupFailed(UploadSessionLookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("path".equals(tag)) {
                expectField("path", kVar);
                uploadSessionFinishErrorPath = UploadSessionFinishError.path(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("too_many_shared_folder_targets".equals(tag)) {
                uploadSessionFinishErrorPath = UploadSessionFinishError.TOO_MANY_SHARED_FOLDER_TARGETS;
            } else if ("too_many_write_operations".equals(tag)) {
                uploadSessionFinishErrorPath = UploadSessionFinishError.TOO_MANY_WRITE_OPERATIONS;
            } else {
                uploadSessionFinishErrorPath = UploadSessionFinishError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadSessionFinishErrorPath;
        }
    }
}
