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
public final class RestoreError {
    public static final RestoreError INVALID_REVISION = new RestoreError().withTag(Tag.INVALID_REVISION);
    public static final RestoreError OTHER = new RestoreError().withTag(Tag.OTHER);
    private Tag _tag;
    private LookupError pathLookupValue;
    private WriteError pathWriteValue;

    public enum Tag {
        PATH_LOOKUP,
        PATH_WRITE,
        INVALID_REVISION,
        OTHER
    }

    private RestoreError() {
    }

    private RestoreError withTag(Tag tag) {
        RestoreError restoreError = new RestoreError();
        restoreError._tag = tag;
        return restoreError;
    }

    private RestoreError withTagAndPathLookup(Tag tag, LookupError lookupError) {
        RestoreError restoreError = new RestoreError();
        restoreError._tag = tag;
        restoreError.pathLookupValue = lookupError;
        return restoreError;
    }

    private RestoreError withTagAndPathWrite(Tag tag, WriteError writeError) {
        RestoreError restoreError = new RestoreError();
        restoreError._tag = tag;
        restoreError.pathWriteValue = writeError;
        return restoreError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPathLookup() {
        return this._tag == Tag.PATH_LOOKUP;
    }

    public static RestoreError pathLookup(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RestoreError().withTagAndPathLookup(Tag.PATH_LOOKUP, lookupError);
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

    public static RestoreError pathWrite(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RestoreError().withTagAndPathWrite(Tag.PATH_WRITE, writeError);
    }

    public WriteError getPathWriteValue() {
        if (this._tag != Tag.PATH_WRITE) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH_WRITE, but was Tag." + this._tag.name());
        }
        return this.pathWriteValue;
    }

    public boolean isInvalidRevision() {
        return this._tag == Tag.INVALID_REVISION;
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
        if (obj == null || !(obj instanceof RestoreError)) {
            return false;
        }
        RestoreError restoreError = (RestoreError) obj;
        if (this._tag != restoreError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH_LOOKUP:
                return this.pathLookupValue == restoreError.pathLookupValue || this.pathLookupValue.equals(restoreError.pathLookupValue);
            case PATH_WRITE:
                return this.pathWriteValue == restoreError.pathWriteValue || this.pathWriteValue.equals(restoreError.pathWriteValue);
            case INVALID_REVISION:
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

    class Serializer extends UnionSerializer<RestoreError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RestoreError restoreError, g gVar) throws IOException {
            switch (restoreError.tag()) {
                case PATH_LOOKUP:
                    gVar.e();
                    writeTag("path_lookup", gVar);
                    gVar.a("path_lookup");
                    LookupError.Serializer.INSTANCE.serialize(restoreError.pathLookupValue, gVar);
                    gVar.f();
                    break;
                case PATH_WRITE:
                    gVar.e();
                    writeTag("path_write", gVar);
                    gVar.a("path_write");
                    WriteError.Serializer.INSTANCE.serialize(restoreError.pathWriteValue, gVar);
                    gVar.f();
                    break;
                case INVALID_REVISION:
                    gVar.b("invalid_revision");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RestoreError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RestoreError restoreErrorPathWrite;
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
                restoreErrorPathWrite = RestoreError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("path_write".equals(tag)) {
                expectField("path_write", kVar);
                restoreErrorPathWrite = RestoreError.pathWrite(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_revision".equals(tag)) {
                restoreErrorPathWrite = RestoreError.INVALID_REVISION;
            } else {
                restoreErrorPathWrite = RestoreError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return restoreErrorPathWrite;
        }
    }
}
