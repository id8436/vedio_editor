package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.WriteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SaveCopyReferenceError {
    private Tag _tag;
    private WriteError pathValue;
    public static final SaveCopyReferenceError INVALID_COPY_REFERENCE = new SaveCopyReferenceError().withTag(Tag.INVALID_COPY_REFERENCE);
    public static final SaveCopyReferenceError NO_PERMISSION = new SaveCopyReferenceError().withTag(Tag.NO_PERMISSION);
    public static final SaveCopyReferenceError NOT_FOUND = new SaveCopyReferenceError().withTag(Tag.NOT_FOUND);
    public static final SaveCopyReferenceError TOO_MANY_FILES = new SaveCopyReferenceError().withTag(Tag.TOO_MANY_FILES);
    public static final SaveCopyReferenceError OTHER = new SaveCopyReferenceError().withTag(Tag.OTHER);

    public enum Tag {
        PATH,
        INVALID_COPY_REFERENCE,
        NO_PERMISSION,
        NOT_FOUND,
        TOO_MANY_FILES,
        OTHER
    }

    private SaveCopyReferenceError() {
    }

    private SaveCopyReferenceError withTag(Tag tag) {
        SaveCopyReferenceError saveCopyReferenceError = new SaveCopyReferenceError();
        saveCopyReferenceError._tag = tag;
        return saveCopyReferenceError;
    }

    private SaveCopyReferenceError withTagAndPath(Tag tag, WriteError writeError) {
        SaveCopyReferenceError saveCopyReferenceError = new SaveCopyReferenceError();
        saveCopyReferenceError._tag = tag;
        saveCopyReferenceError.pathValue = writeError;
        return saveCopyReferenceError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static SaveCopyReferenceError path(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SaveCopyReferenceError().withTagAndPath(Tag.PATH, writeError);
    }

    public WriteError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isInvalidCopyReference() {
        return this._tag == Tag.INVALID_COPY_REFERENCE;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isNotFound() {
        return this._tag == Tag.NOT_FOUND;
    }

    public boolean isTooManyFiles() {
        return this._tag == Tag.TOO_MANY_FILES;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof SaveCopyReferenceError)) {
            SaveCopyReferenceError saveCopyReferenceError = (SaveCopyReferenceError) obj;
            if (this._tag != saveCopyReferenceError._tag) {
                return false;
            }
            switch (this._tag) {
                case PATH:
                    return this.pathValue == saveCopyReferenceError.pathValue || this.pathValue.equals(saveCopyReferenceError.pathValue);
                case INVALID_COPY_REFERENCE:
                case NO_PERMISSION:
                case NOT_FOUND:
                case TOO_MANY_FILES:
                case OTHER:
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<SaveCopyReferenceError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SaveCopyReferenceError saveCopyReferenceError, g gVar) throws IOException {
            switch (saveCopyReferenceError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    WriteError.Serializer.INSTANCE.serialize(saveCopyReferenceError.pathValue, gVar);
                    gVar.f();
                    break;
                case INVALID_COPY_REFERENCE:
                    gVar.b("invalid_copy_reference");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case NOT_FOUND:
                    gVar.b("not_found");
                    break;
                case TOO_MANY_FILES:
                    gVar.b("too_many_files");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SaveCopyReferenceError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SaveCopyReferenceError saveCopyReferenceErrorPath;
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
            if ("path".equals(tag)) {
                expectField("path", kVar);
                saveCopyReferenceErrorPath = SaveCopyReferenceError.path(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_copy_reference".equals(tag)) {
                saveCopyReferenceErrorPath = SaveCopyReferenceError.INVALID_COPY_REFERENCE;
            } else if ("no_permission".equals(tag)) {
                saveCopyReferenceErrorPath = SaveCopyReferenceError.NO_PERMISSION;
            } else if ("not_found".equals(tag)) {
                saveCopyReferenceErrorPath = SaveCopyReferenceError.NOT_FOUND;
            } else if ("too_many_files".equals(tag)) {
                saveCopyReferenceErrorPath = SaveCopyReferenceError.TOO_MANY_FILES;
            } else {
                saveCopyReferenceErrorPath = SaveCopyReferenceError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return saveCopyReferenceErrorPath;
        }
    }
}
