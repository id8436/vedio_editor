package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.WriteConflictError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class WriteError {
    private Tag _tag;
    private WriteConflictError conflictValue;
    private String malformedPathValue;
    public static final WriteError NO_WRITE_PERMISSION = new WriteError().withTag(Tag.NO_WRITE_PERMISSION);
    public static final WriteError INSUFFICIENT_SPACE = new WriteError().withTag(Tag.INSUFFICIENT_SPACE);
    public static final WriteError DISALLOWED_NAME = new WriteError().withTag(Tag.DISALLOWED_NAME);
    public static final WriteError TEAM_FOLDER = new WriteError().withTag(Tag.TEAM_FOLDER);
    public static final WriteError OTHER = new WriteError().withTag(Tag.OTHER);

    public enum Tag {
        MALFORMED_PATH,
        CONFLICT,
        NO_WRITE_PERMISSION,
        INSUFFICIENT_SPACE,
        DISALLOWED_NAME,
        TEAM_FOLDER,
        OTHER
    }

    private WriteError() {
    }

    private WriteError withTag(Tag tag) {
        WriteError writeError = new WriteError();
        writeError._tag = tag;
        return writeError;
    }

    private WriteError withTagAndMalformedPath(Tag tag, String str) {
        WriteError writeError = new WriteError();
        writeError._tag = tag;
        writeError.malformedPathValue = str;
        return writeError;
    }

    private WriteError withTagAndConflict(Tag tag, WriteConflictError writeConflictError) {
        WriteError writeError = new WriteError();
        writeError._tag = tag;
        writeError.conflictValue = writeConflictError;
        return writeError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isMalformedPath() {
        return this._tag == Tag.MALFORMED_PATH;
    }

    public static WriteError malformedPath(String str) {
        return new WriteError().withTagAndMalformedPath(Tag.MALFORMED_PATH, str);
    }

    public static WriteError malformedPath() {
        return malformedPath(null);
    }

    public String getMalformedPathValue() {
        if (this._tag != Tag.MALFORMED_PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.MALFORMED_PATH, but was Tag." + this._tag.name());
        }
        return this.malformedPathValue;
    }

    public boolean isConflict() {
        return this._tag == Tag.CONFLICT;
    }

    public static WriteError conflict(WriteConflictError writeConflictError) {
        if (writeConflictError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new WriteError().withTagAndConflict(Tag.CONFLICT, writeConflictError);
    }

    public WriteConflictError getConflictValue() {
        if (this._tag != Tag.CONFLICT) {
            throw new IllegalStateException("Invalid tag: required Tag.CONFLICT, but was Tag." + this._tag.name());
        }
        return this.conflictValue;
    }

    public boolean isNoWritePermission() {
        return this._tag == Tag.NO_WRITE_PERMISSION;
    }

    public boolean isInsufficientSpace() {
        return this._tag == Tag.INSUFFICIENT_SPACE;
    }

    public boolean isDisallowedName() {
        return this._tag == Tag.DISALLOWED_NAME;
    }

    public boolean isTeamFolder() {
        return this._tag == Tag.TEAM_FOLDER;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.malformedPathValue, this.conflictValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof WriteError)) {
            WriteError writeError = (WriteError) obj;
            if (this._tag != writeError._tag) {
                return false;
            }
            switch (this._tag) {
                case MALFORMED_PATH:
                    if (this.malformedPathValue == writeError.malformedPathValue || (this.malformedPathValue != null && this.malformedPathValue.equals(writeError.malformedPathValue))) {
                        z = true;
                    }
                    return z;
                case CONFLICT:
                    return this.conflictValue == writeError.conflictValue || this.conflictValue.equals(writeError.conflictValue);
                case NO_WRITE_PERMISSION:
                case INSUFFICIENT_SPACE:
                case DISALLOWED_NAME:
                case TEAM_FOLDER:
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

    class Serializer extends UnionSerializer<WriteError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(WriteError writeError, g gVar) throws IOException {
            switch (writeError.tag()) {
                case MALFORMED_PATH:
                    gVar.e();
                    writeTag("malformed_path", gVar);
                    gVar.a("malformed_path");
                    StoneSerializers.nullable(StoneSerializers.string()).serialize(writeError.malformedPathValue, gVar);
                    gVar.f();
                    break;
                case CONFLICT:
                    gVar.e();
                    writeTag("conflict", gVar);
                    gVar.a("conflict");
                    WriteConflictError.Serializer.INSTANCE.serialize(writeError.conflictValue, gVar);
                    gVar.f();
                    break;
                case NO_WRITE_PERMISSION:
                    gVar.b("no_write_permission");
                    break;
                case INSUFFICIENT_SPACE:
                    gVar.b("insufficient_space");
                    break;
                case DISALLOWED_NAME:
                    gVar.b("disallowed_name");
                    break;
                case TEAM_FOLDER:
                    gVar.b("team_folder");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public WriteError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            WriteError writeErrorConflict;
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
            if ("malformed_path".equals(tag)) {
                String str = null;
                if (kVar.c() != o.END_OBJECT) {
                    expectField("malformed_path", kVar);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                }
                if (str == null) {
                    writeErrorConflict = WriteError.malformedPath();
                } else {
                    writeErrorConflict = WriteError.malformedPath(str);
                }
            } else if ("conflict".equals(tag)) {
                expectField("conflict", kVar);
                writeErrorConflict = WriteError.conflict(WriteConflictError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("no_write_permission".equals(tag)) {
                writeErrorConflict = WriteError.NO_WRITE_PERMISSION;
            } else if ("insufficient_space".equals(tag)) {
                writeErrorConflict = WriteError.INSUFFICIENT_SPACE;
            } else if ("disallowed_name".equals(tag)) {
                writeErrorConflict = WriteError.DISALLOWED_NAME;
            } else if ("team_folder".equals(tag)) {
                writeErrorConflict = WriteError.TEAM_FOLDER;
            } else {
                writeErrorConflict = WriteError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return writeErrorConflict;
        }
    }
}
