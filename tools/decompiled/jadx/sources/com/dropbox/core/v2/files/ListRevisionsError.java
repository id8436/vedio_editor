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
public final class ListRevisionsError {
    public static final ListRevisionsError OTHER = new ListRevisionsError().withTag(Tag.OTHER);
    private Tag _tag;
    private LookupError pathValue;

    public enum Tag {
        PATH,
        OTHER
    }

    private ListRevisionsError() {
    }

    private ListRevisionsError withTag(Tag tag) {
        ListRevisionsError listRevisionsError = new ListRevisionsError();
        listRevisionsError._tag = tag;
        return listRevisionsError;
    }

    private ListRevisionsError withTagAndPath(Tag tag, LookupError lookupError) {
        ListRevisionsError listRevisionsError = new ListRevisionsError();
        listRevisionsError._tag = tag;
        listRevisionsError.pathValue = lookupError;
        return listRevisionsError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static ListRevisionsError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListRevisionsError().withTagAndPath(Tag.PATH, lookupError);
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
        if (obj == null || !(obj instanceof ListRevisionsError)) {
            return false;
        }
        ListRevisionsError listRevisionsError = (ListRevisionsError) obj;
        if (this._tag != listRevisionsError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == listRevisionsError.pathValue || this.pathValue.equals(listRevisionsError.pathValue);
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

    class Serializer extends UnionSerializer<ListRevisionsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListRevisionsError listRevisionsError, g gVar) throws IOException {
            switch (listRevisionsError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(listRevisionsError.pathValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListRevisionsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListRevisionsError listRevisionsErrorPath;
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
                listRevisionsErrorPath = ListRevisionsError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                listRevisionsErrorPath = ListRevisionsError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listRevisionsErrorPath;
        }
    }
}
