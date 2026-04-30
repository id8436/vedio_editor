package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import com.dropbox.core.v2.files.WriteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DeleteError {
    private Tag _tag;
    private LookupError pathLookupValue;
    private WriteError pathWriteValue;
    public static final DeleteError TOO_MANY_WRITE_OPERATIONS = new DeleteError().withTag(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final DeleteError TOO_MANY_FILES = new DeleteError().withTag(Tag.TOO_MANY_FILES);
    public static final DeleteError OTHER = new DeleteError().withTag(Tag.OTHER);

    public enum Tag {
        PATH_LOOKUP,
        PATH_WRITE,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        OTHER
    }

    private DeleteError() {
    }

    private DeleteError withTag(Tag tag) {
        DeleteError deleteError = new DeleteError();
        deleteError._tag = tag;
        return deleteError;
    }

    private DeleteError withTagAndPathLookup(Tag tag, LookupError lookupError) {
        DeleteError deleteError = new DeleteError();
        deleteError._tag = tag;
        deleteError.pathLookupValue = lookupError;
        return deleteError;
    }

    private DeleteError withTagAndPathWrite(Tag tag, WriteError writeError) {
        DeleteError deleteError = new DeleteError();
        deleteError._tag = tag;
        deleteError.pathWriteValue = writeError;
        return deleteError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPathLookup() {
        return this._tag == Tag.PATH_LOOKUP;
    }

    public static DeleteError pathLookup(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteError().withTagAndPathLookup(Tag.PATH_LOOKUP, lookupError);
    }

    public LookupError getPathLookupValue() {
        if (this._tag != Tag.PATH_LOOKUP) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH_LOOKUP, but was Tag." + this._tag.name());
        }
        return this.pathLookupValue;
    }

    public boolean isPathWrite() {
        return this._tag == Tag.PATH_WRITE;
    }

    public static DeleteError pathWrite(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteError().withTagAndPathWrite(Tag.PATH_WRITE, writeError);
    }

    public WriteError getPathWriteValue() {
        if (this._tag != Tag.PATH_WRITE) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH_WRITE, but was Tag." + this._tag.name());
        }
        return this.pathWriteValue;
    }

    public boolean isTooManyWriteOperations() {
        return this._tag == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public boolean isTooManyFiles() {
        return this._tag == Tag.TOO_MANY_FILES;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathLookupValue, this.pathWriteValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteError)) {
            return false;
        }
        DeleteError deleteError = (DeleteError) obj;
        if (this._tag != deleteError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH_LOOKUP:
                return this.pathLookupValue == deleteError.pathLookupValue || this.pathLookupValue.equals(deleteError.pathLookupValue);
            case PATH_WRITE:
                return this.pathWriteValue == deleteError.pathWriteValue || this.pathWriteValue.equals(deleteError.pathWriteValue);
            case TOO_MANY_WRITE_OPERATIONS:
                return true;
            case TOO_MANY_FILES:
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

    class Serializer extends UnionSerializer<DeleteError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeleteError deleteError, g gVar) throws IOException {
            switch (deleteError.tag()) {
                case PATH_LOOKUP:
                    gVar.e();
                    writeTag("path_lookup", gVar);
                    gVar.a("path_lookup");
                    LookupError.Serializer.INSTANCE.serialize(deleteError.pathLookupValue, gVar);
                    gVar.f();
                    break;
                case PATH_WRITE:
                    gVar.e();
                    writeTag("path_write", gVar);
                    gVar.a("path_write");
                    WriteError.Serializer.INSTANCE.serialize(deleteError.pathWriteValue, gVar);
                    gVar.f();
                    break;
                case TOO_MANY_WRITE_OPERATIONS:
                    gVar.b("too_many_write_operations");
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
        public DeleteError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeleteError deleteErrorPathWrite;
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
            if ("path_lookup".equals(tag)) {
                expectField("path_lookup", kVar);
                deleteErrorPathWrite = DeleteError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("path_write".equals(tag)) {
                expectField("path_write", kVar);
                deleteErrorPathWrite = DeleteError.pathWrite(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("too_many_write_operations".equals(tag)) {
                deleteErrorPathWrite = DeleteError.TOO_MANY_WRITE_OPERATIONS;
            } else if ("too_many_files".equals(tag)) {
                deleteErrorPathWrite = DeleteError.TOO_MANY_FILES;
            } else {
                deleteErrorPathWrite = DeleteError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deleteErrorPathWrite;
        }
    }
}
