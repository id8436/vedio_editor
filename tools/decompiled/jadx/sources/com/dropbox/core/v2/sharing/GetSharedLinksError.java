package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetSharedLinksError {
    public static final GetSharedLinksError OTHER = new GetSharedLinksError().withTag(Tag.OTHER);
    private Tag _tag;
    private String pathValue;

    public enum Tag {
        PATH,
        OTHER
    }

    private GetSharedLinksError() {
    }

    private GetSharedLinksError withTag(Tag tag) {
        GetSharedLinksError getSharedLinksError = new GetSharedLinksError();
        getSharedLinksError._tag = tag;
        return getSharedLinksError;
    }

    private GetSharedLinksError withTagAndPath(Tag tag, String str) {
        GetSharedLinksError getSharedLinksError = new GetSharedLinksError();
        getSharedLinksError._tag = tag;
        getSharedLinksError.pathValue = str;
        return getSharedLinksError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static GetSharedLinksError path(String str) {
        return new GetSharedLinksError().withTagAndPath(Tag.PATH, str);
    }

    public static GetSharedLinksError path() {
        return path(null);
    }

    public String getPathValue() {
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
        if (obj == null || !(obj instanceof GetSharedLinksError)) {
            return false;
        }
        GetSharedLinksError getSharedLinksError = (GetSharedLinksError) obj;
        if (this._tag != getSharedLinksError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == getSharedLinksError.pathValue || (this.pathValue != null && this.pathValue.equals(getSharedLinksError.pathValue));
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

    class Serializer extends UnionSerializer<GetSharedLinksError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetSharedLinksError getSharedLinksError, g gVar) throws IOException {
            switch (getSharedLinksError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    StoneSerializers.nullable(StoneSerializers.string()).serialize(getSharedLinksError.pathValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetSharedLinksError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetSharedLinksError getSharedLinksErrorPath;
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
                String str = null;
                if (kVar.c() != o.END_OBJECT) {
                    expectField("path", kVar);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                }
                if (str == null) {
                    getSharedLinksErrorPath = GetSharedLinksError.path();
                } else {
                    getSharedLinksErrorPath = GetSharedLinksError.path(str);
                }
            } else {
                getSharedLinksErrorPath = GetSharedLinksError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getSharedLinksErrorPath;
        }
    }
}
