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
public final class CreateFolderError {
    private Tag _tag;
    private WriteError pathValue;

    public enum Tag {
        PATH
    }

    private CreateFolderError() {
    }

    private CreateFolderError withTag(Tag tag) {
        CreateFolderError createFolderError = new CreateFolderError();
        createFolderError._tag = tag;
        return createFolderError;
    }

    private CreateFolderError withTagAndPath(Tag tag, WriteError writeError) {
        CreateFolderError createFolderError = new CreateFolderError();
        createFolderError._tag = tag;
        createFolderError.pathValue = writeError;
        return createFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static CreateFolderError path(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new CreateFolderError().withTagAndPath(Tag.PATH, writeError);
    }

    public WriteError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateFolderError)) {
            return false;
        }
        CreateFolderError createFolderError = (CreateFolderError) obj;
        if (this._tag != createFolderError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == createFolderError.pathValue || this.pathValue.equals(createFolderError.pathValue);
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

    class Serializer extends UnionSerializer<CreateFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(CreateFolderError createFolderError, g gVar) throws IOException {
            switch (createFolderError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    WriteError.Serializer.INSTANCE.serialize(createFolderError.pathValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + createFolderError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public CreateFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
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
                CreateFolderError createFolderErrorPath = CreateFolderError.path(WriteError.Serializer.INSTANCE.deserialize(kVar));
                if (!z) {
                    skipFields(kVar);
                    expectEndObject(kVar);
                }
                return createFolderErrorPath;
            }
            throw new j(kVar, "Unknown tag: " + tag);
        }
    }
}
