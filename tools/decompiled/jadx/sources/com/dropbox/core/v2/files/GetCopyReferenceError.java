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
public final class GetCopyReferenceError {
    public static final GetCopyReferenceError OTHER = new GetCopyReferenceError().withTag(Tag.OTHER);
    private Tag _tag;
    private LookupError pathValue;

    public enum Tag {
        PATH,
        OTHER
    }

    private GetCopyReferenceError() {
    }

    private GetCopyReferenceError withTag(Tag tag) {
        GetCopyReferenceError getCopyReferenceError = new GetCopyReferenceError();
        getCopyReferenceError._tag = tag;
        return getCopyReferenceError;
    }

    private GetCopyReferenceError withTagAndPath(Tag tag, LookupError lookupError) {
        GetCopyReferenceError getCopyReferenceError = new GetCopyReferenceError();
        getCopyReferenceError._tag = tag;
        getCopyReferenceError.pathValue = lookupError;
        return getCopyReferenceError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static GetCopyReferenceError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetCopyReferenceError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
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
        if (obj == null || !(obj instanceof GetCopyReferenceError)) {
            return false;
        }
        GetCopyReferenceError getCopyReferenceError = (GetCopyReferenceError) obj;
        if (this._tag != getCopyReferenceError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == getCopyReferenceError.pathValue || this.pathValue.equals(getCopyReferenceError.pathValue);
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

    class Serializer extends UnionSerializer<GetCopyReferenceError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetCopyReferenceError getCopyReferenceError, g gVar) throws IOException {
            switch (getCopyReferenceError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(getCopyReferenceError.pathValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetCopyReferenceError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetCopyReferenceError getCopyReferenceErrorPath;
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
                getCopyReferenceErrorPath = GetCopyReferenceError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                getCopyReferenceErrorPath = GetCopyReferenceError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getCopyReferenceErrorPath;
        }
    }
}
