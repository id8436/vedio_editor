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
public final class RelocationError {
    private Tag _tag;
    private LookupError fromLookupValue;
    private WriteError fromWriteValue;
    private WriteError toValue;
    public static final RelocationError CANT_COPY_SHARED_FOLDER = new RelocationError().withTag(Tag.CANT_COPY_SHARED_FOLDER);
    public static final RelocationError CANT_NEST_SHARED_FOLDER = new RelocationError().withTag(Tag.CANT_NEST_SHARED_FOLDER);
    public static final RelocationError CANT_MOVE_FOLDER_INTO_ITSELF = new RelocationError().withTag(Tag.CANT_MOVE_FOLDER_INTO_ITSELF);
    public static final RelocationError TOO_MANY_FILES = new RelocationError().withTag(Tag.TOO_MANY_FILES);
    public static final RelocationError DUPLICATED_OR_NESTED_PATHS = new RelocationError().withTag(Tag.DUPLICATED_OR_NESTED_PATHS);
    public static final RelocationError CANT_TRANSFER_OWNERSHIP = new RelocationError().withTag(Tag.CANT_TRANSFER_OWNERSHIP);
    public static final RelocationError OTHER = new RelocationError().withTag(Tag.OTHER);

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
        OTHER
    }

    private RelocationError() {
    }

    private RelocationError withTag(Tag tag) {
        RelocationError relocationError = new RelocationError();
        relocationError._tag = tag;
        return relocationError;
    }

    private RelocationError withTagAndFromLookup(Tag tag, LookupError lookupError) {
        RelocationError relocationError = new RelocationError();
        relocationError._tag = tag;
        relocationError.fromLookupValue = lookupError;
        return relocationError;
    }

    private RelocationError withTagAndFromWrite(Tag tag, WriteError writeError) {
        RelocationError relocationError = new RelocationError();
        relocationError._tag = tag;
        relocationError.fromWriteValue = writeError;
        return relocationError;
    }

    private RelocationError withTagAndTo(Tag tag, WriteError writeError) {
        RelocationError relocationError = new RelocationError();
        relocationError._tag = tag;
        relocationError.toValue = writeError;
        return relocationError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isFromLookup() {
        return this._tag == Tag.FROM_LOOKUP;
    }

    public static RelocationError fromLookup(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationError().withTagAndFromLookup(Tag.FROM_LOOKUP, lookupError);
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

    public static RelocationError fromWrite(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationError().withTagAndFromWrite(Tag.FROM_WRITE, writeError);
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

    public static RelocationError to(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelocationError().withTagAndTo(Tag.TO, writeError);
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.fromLookupValue, this.fromWriteValue, this.toValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof RelocationError)) {
            RelocationError relocationError = (RelocationError) obj;
            if (this._tag != relocationError._tag) {
                return false;
            }
            switch (this._tag) {
                case FROM_LOOKUP:
                    return this.fromLookupValue == relocationError.fromLookupValue || this.fromLookupValue.equals(relocationError.fromLookupValue);
                case FROM_WRITE:
                    return this.fromWriteValue == relocationError.fromWriteValue || this.fromWriteValue.equals(relocationError.fromWriteValue);
                case TO:
                    return this.toValue == relocationError.toValue || this.toValue.equals(relocationError.toValue);
                case CANT_COPY_SHARED_FOLDER:
                case CANT_NEST_SHARED_FOLDER:
                case CANT_MOVE_FOLDER_INTO_ITSELF:
                case TOO_MANY_FILES:
                case DUPLICATED_OR_NESTED_PATHS:
                case CANT_TRANSFER_OWNERSHIP:
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

    class Serializer extends UnionSerializer<RelocationError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelocationError relocationError, g gVar) throws IOException {
            switch (relocationError.tag()) {
                case FROM_LOOKUP:
                    gVar.e();
                    writeTag("from_lookup", gVar);
                    gVar.a("from_lookup");
                    LookupError.Serializer.INSTANCE.serialize(relocationError.fromLookupValue, gVar);
                    gVar.f();
                    break;
                case FROM_WRITE:
                    gVar.e();
                    writeTag("from_write", gVar);
                    gVar.a("from_write");
                    WriteError.Serializer.INSTANCE.serialize(relocationError.fromWriteValue, gVar);
                    gVar.f();
                    break;
                case TO:
                    gVar.e();
                    writeTag("to", gVar);
                    gVar.a("to");
                    WriteError.Serializer.INSTANCE.serialize(relocationError.toValue, gVar);
                    gVar.f();
                    break;
                case CANT_COPY_SHARED_FOLDER:
                    gVar.b("cant_copy_shared_folder");
                    break;
                case CANT_NEST_SHARED_FOLDER:
                    gVar.b("cant_nest_shared_folder");
                    break;
                case CANT_MOVE_FOLDER_INTO_ITSELF:
                    gVar.b("cant_move_folder_into_itself");
                    break;
                case TOO_MANY_FILES:
                    gVar.b("too_many_files");
                    break;
                case DUPLICATED_OR_NESTED_PATHS:
                    gVar.b("duplicated_or_nested_paths");
                    break;
                case CANT_TRANSFER_OWNERSHIP:
                    gVar.b("cant_transfer_ownership");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RelocationError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelocationError relocationErrorFromWrite;
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
                relocationErrorFromWrite = RelocationError.fromLookup(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("from_write".equals(tag)) {
                expectField("from_write", kVar);
                relocationErrorFromWrite = RelocationError.fromWrite(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("to".equals(tag)) {
                expectField("to", kVar);
                relocationErrorFromWrite = RelocationError.to(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("cant_copy_shared_folder".equals(tag)) {
                relocationErrorFromWrite = RelocationError.CANT_COPY_SHARED_FOLDER;
            } else if ("cant_nest_shared_folder".equals(tag)) {
                relocationErrorFromWrite = RelocationError.CANT_NEST_SHARED_FOLDER;
            } else if ("cant_move_folder_into_itself".equals(tag)) {
                relocationErrorFromWrite = RelocationError.CANT_MOVE_FOLDER_INTO_ITSELF;
            } else if ("too_many_files".equals(tag)) {
                relocationErrorFromWrite = RelocationError.TOO_MANY_FILES;
            } else if ("duplicated_or_nested_paths".equals(tag)) {
                relocationErrorFromWrite = RelocationError.DUPLICATED_OR_NESTED_PATHS;
            } else if ("cant_transfer_ownership".equals(tag)) {
                relocationErrorFromWrite = RelocationError.CANT_TRANSFER_OWNERSHIP;
            } else {
                relocationErrorFromWrite = RelocationError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relocationErrorFromWrite;
        }
    }
}
