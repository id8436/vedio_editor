package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetMetadataError {
    private Tag _tag;
    private LookupError pathValue;

    public enum Tag {
        PATH
    }

    private GetMetadataError() {
    }

    private GetMetadataError withTag(Tag tag) {
        GetMetadataError getMetadataError = new GetMetadataError();
        getMetadataError._tag = tag;
        return getMetadataError;
    }

    private GetMetadataError withTagAndPath(Tag tag, LookupError lookupError) {
        GetMetadataError getMetadataError = new GetMetadataError();
        getMetadataError._tag = tag;
        getMetadataError.pathValue = lookupError;
        return getMetadataError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static GetMetadataError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetMetadataError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
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
        if (obj == null || !(obj instanceof GetMetadataError)) {
            return false;
        }
        GetMetadataError getMetadataError = (GetMetadataError) obj;
        if (this._tag != getMetadataError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == getMetadataError.pathValue || this.pathValue.equals(getMetadataError.pathValue);
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

    class Serializer extends UnionSerializer<GetMetadataError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetMetadataError getMetadataError, g gVar) throws IOException {
            switch (getMetadataError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(getMetadataError.pathValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + getMetadataError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetMetadataError deserialize(k kVar) throws IOException {
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
                GetMetadataError getMetadataErrorPath = GetMetadataError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
                if (!z) {
                    skipFields(kVar);
                    expectEndObject(kVar);
                }
                return getMetadataErrorPath;
            }
            throw new j(kVar, "Unknown tag: " + tag);
        }
    }
}
