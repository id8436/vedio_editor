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
public final class RelocationBatchError {
    private Tag _tag;
    private LookupError fromLookupValue;
    private WriteError fromWriteValue;
    private WriteError toValue;
    public static final RelocationBatchError CANT_COPY_SHARED_FOLDER = new RelocationBatchError().withTag(Tag.CANT_COPY_SHARED_FOLDER);
    public static final RelocationBatchError CANT_NEST_SHARED_FOLDER = new RelocationBatchError().withTag(Tag.CANT_NEST_SHARED_FOLDER);
    public static final RelocationBatchError CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationBatchError().withTag(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    public static final RelocationBatchError TOO_MANY_FILES = new RelocationBatchError().withTag(Tag.TOO_MANY_FILES);
    public static final RelocationBatchError DUPLICATED_OR_NESTED_PATHS = new RelocationBatchError().withTag(Tag.DUPLICATED_OR_NESTED_PATHS);
    public static final RelocationBatchError CANT_TRANSFER_OWNERSHIP = new RelocationBatchError().withTag(Tag.CANT_TRANSFER_OWNERSHIP);
    public static final RelocationBatchError OTHER = new RelocationBatchError().withTag(Tag.OTHER);
    public static final RelocationBatchError TOO_MANY_WRITE_OPERATIONS = new RelocationBatchError().withTag(Tag.TOO_MANY_WRITE_OPERATIONS);

    public enum Tag {
        FROM_LOOKUP,
        FROM_WRITE,
        TO,
        CANT_COPY_SHARED_FOLDER,
        CANT_NEST_SHARED_FOLDER,
        CANT_MOVE_FOLDER_INTO_ITSELF,
        TOO_MANY_FILES,
        DUPLICATED_OR_NESTED_PATHS,
        CANT_TRANSFER_OWNERSHIP,
        OTHER,
        TOO_MANY_WRITE_OPERATIONS
    }

    private RelocationBatchError() {
    }

    private RelocationBatchError withTag(Tag tag) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError._tag = tag;
        return relocationBatchError;
    }

    private RelocationBatchError withTagAndFromLookup(Tag tag, LookupError lookupError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError._tag = tag;
        relocationBatchError.fromLookupValue = lookupError;
        return relocationBatchError;
    }

    private RelocationBatchError withTagAndFromWrite(Tag tag, WriteError writeError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError._tag = tag;
        relocationBatchError.fromWriteValue = writeError;
        return relocationBatchError;
    }

    private RelocationBatchError withTagAndTo(Tag tag, WriteError writeError) {
        RelocationBatchError relocationBatchError = new RelocationBatchError();
        relocationBatchError._tag = tag;
        relocationBatchError.toValue = writeError;
        return relocationBatchError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isFromLookup() {
        return this._tag == Tag.FROM_LOOKUP;
    }

    public static RelocationBatchError fromLookup(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchError().withTagAndFromLookup(Tag.FROM_LOOKUP, lookupError);
    }

    public LookupError getFromLookupValue() {
        if (this._tag != Tag.FROM_LOOKUP) {
            throw new IllegalStateException("Invalid tag: required Tag.FROM_LOOKUP, but was Tag." + this._tag.name());
        }
        return this.fromLookupValue;
    }

    public boolean isFromWrite() {
        return this._tag == Tag.FROM_WRITE;
    }

    public static RelocationBatchError fromWrite(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchError().withTagAndFromWrite(Tag.FROM_WRITE, writeError);
    }

    public WriteError getFromWriteValue() {
        if (this._tag != Tag.FROM_WRITE) {
            throw new IllegalStateException("Invalid tag: required Tag.FROM_WRITE, but was Tag." + this._tag.name());
        }
        return this.fromWriteValue;
    }

    public boolean isTo() {
        return this._tag == Tag.TO;
    }

    public static RelocationBatchError to(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationBatchError().withTagAndTo(Tag.TO, writeError);
    }

    public WriteError getToValue() {
        if (this._tag != Tag.TO) {
            throw new IllegalStateException("Invalid tag: required Tag.TO, but was Tag." + this._tag.name());
        }
        return this.toValue;
    }

    public boolean isCantCopySharedFolder() {
        return this._tag == Tag.CANT_COPY_SHARED_FOLDER;
    }

    public boolean isCantNestSharedFolder() {
        return this._tag == Tag.CANT_NEST_SHARED_FOLDER;
    }

    public boolean isCantMoveFolderIntoItself() {
        return this._tag == Tag.CANT_MOVE_FOLDER_INTO_ITSELF;
    }

    public boolean isTooManyFiles() {
        return this._tag == Tag.TOO_MANY_FILES;
    }

    public boolean isDuplicatedOrNestedPaths() {
        return this._tag == Tag.DUPLICATED_OR_NESTED_PATHS;
    }

    public boolean isCantTransferOwnership() {
        return this._tag == Tag.CANT_TRANSFER_OWNERSHIP;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isTooManyWriteOperations() {
        return this._tag == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.fromLookupValue, this.fromWriteValue, this.toValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof RelocationBatchError)) {
            RelocationBatchError relocationBatchError = (RelocationBatchError) obj;
            if (this._tag != relocationBatchError._tag) {
                return false;
            }
            switch (this._tag) {
                case FROM_LOOKUP:
                    return this.fromLookupValue == relocationBatchError.fromLookupValue || this.fromLookupValue.equals(relocationBatchError.fromLookupValue);
                case FROM_WRITE:
                    return this.fromWriteValue == relocationBatchError.fromWriteValue || this.fromWriteValue.equals(relocationBatchError.fromWriteValue);
                case TO:
                    return this.toValue == relocationBatchError.toValue || this.toValue.equals(relocationBatchError.toValue);
                case CANT_COPY_SHARED_FOLDER:
                case CANT_NEST_SHARED_FOLDER:
                case CANT_MOVE_FOLDER_INTO_ITSELF:
                case TOO_MANY_FILES:
                case DUPLICATED_OR_NESTED_PATHS:
                case CANT_TRANSFER_OWNERSHIP:
                case OTHER:
                case TOO_MANY_WRITE_OPERATIONS:
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

    class Serializer extends UnionSerializer<RelocationBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelocationBatchError relocationBatchError, g gVar) throws IOException {
            switch (relocationBatchError.tag()) {
                case FROM_LOOKUP:
                    gVar.e();
                    writeTag("from_lookup", gVar);
                    gVar.a("from_lookup");
                    LookupError.Serializer.INSTANCE.serialize(relocationBatchError.fromLookupValue, gVar);
                    gVar.f();
                    return;
                case FROM_WRITE:
                    gVar.e();
                    writeTag("from_write", gVar);
                    gVar.a("from_write");
                    WriteError.Serializer.INSTANCE.serialize(relocationBatchError.fromWriteValue, gVar);
                    gVar.f();
                    return;
                case TO:
                    gVar.e();
                    writeTag("to", gVar);
                    gVar.a("to");
                    WriteError.Serializer.INSTANCE.serialize(relocationBatchError.toValue, gVar);
                    gVar.f();
                    return;
                case CANT_COPY_SHARED_FOLDER:
                    gVar.b("cant_copy_shared_folder");
                    return;
                case CANT_NEST_SHARED_FOLDER:
                    gVar.b("cant_nest_shared_folder");
                    return;
                case CANT_MOVE_FOLDER_INTO_ITSELF:
                    gVar.b("cant_move_folder_into_itself");
                    return;
                case TOO_MANY_FILES:
                    gVar.b("too_many_files");
                    return;
                case DUPLICATED_OR_NESTED_PATHS:
                    gVar.b("duplicated_or_nested_paths");
                    return;
                case CANT_TRANSFER_OWNERSHIP:
                    gVar.b("cant_transfer_ownership");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case TOO_MANY_WRITE_OPERATIONS:
                    gVar.b("too_many_write_operations");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RelocationBatchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelocationBatchError relocationBatchErrorFromWrite;
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
            if ("from_lookup".equals(tag)) {
                expectField("from_lookup", kVar);
                relocationBatchErrorFromWrite = RelocationBatchError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("from_write".equals(tag)) {
                expectField("from_write", kVar);
                relocationBatchErrorFromWrite = RelocationBatchError.fromWrite(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("to".equals(tag)) {
                expectField("to", kVar);
                relocationBatchErrorFromWrite = RelocationBatchError.to(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("cant_copy_shared_folder".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.CANT_COPY_SHARED_FOLDER;
            } else if ("cant_nest_shared_folder".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.CANT_NEST_SHARED_FOLDER;
            } else if ("cant_move_folder_into_itself".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.CANT_MOVE_FOLDER_INTO_ITSELF;
            } else if ("too_many_files".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.TOO_MANY_FILES;
            } else if ("duplicated_or_nested_paths".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.DUPLICATED_OR_NESTED_PATHS;
            } else if ("cant_transfer_ownership".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.CANT_TRANSFER_OWNERSHIP;
            } else if ("other".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.OTHER;
            } else if ("too_many_write_operations".equals(tag)) {
                relocationBatchErrorFromWrite = RelocationBatchError.TOO_MANY_WRITE_OPERATIONS;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relocationBatchErrorFromWrite;
        }
    }
}
