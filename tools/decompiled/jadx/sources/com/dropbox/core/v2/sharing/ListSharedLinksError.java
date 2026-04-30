package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListSharedLinksError {
    private Tag _tag;
    private LookupError pathValue;
    public static final ListSharedLinksError RESET = new ListSharedLinksError().withTag(Tag.RESET);
    public static final ListSharedLinksError OTHER = new ListSharedLinksError().withTag(Tag.OTHER);

    public enum Tag {
        PATH,
        RESET,
        OTHER
    }

    private ListSharedLinksError() {
    }

    private ListSharedLinksError withTag(Tag tag) {
        ListSharedLinksError listSharedLinksError = new ListSharedLinksError();
        listSharedLinksError._tag = tag;
        return listSharedLinksError;
    }

    private ListSharedLinksError withTagAndPath(Tag tag, LookupError lookupError) {
        ListSharedLinksError listSharedLinksError = new ListSharedLinksError();
        listSharedLinksError._tag = tag;
        listSharedLinksError.pathValue = lookupError;
        return listSharedLinksError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static ListSharedLinksError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListSharedLinksError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isReset() {
        return this._tag == Tag.RESET;
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
        if (obj == null || !(obj instanceof ListSharedLinksError)) {
            return false;
        }
        ListSharedLinksError listSharedLinksError = (ListSharedLinksError) obj;
        if (this._tag != listSharedLinksError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == listSharedLinksError.pathValue || this.pathValue.equals(listSharedLinksError.pathValue);
            case RESET:
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

    class Serializer extends UnionSerializer<ListSharedLinksError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListSharedLinksError listSharedLinksError, g gVar) throws IOException {
            switch (listSharedLinksError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(listSharedLinksError.pathValue, gVar);
                    gVar.f();
                    break;
                case RESET:
                    gVar.b("reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListSharedLinksError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListSharedLinksError listSharedLinksErrorPath;
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
                listSharedLinksErrorPath = ListSharedLinksError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("reset".equals(tag)) {
                listSharedLinksErrorPath = ListSharedLinksError.RESET;
            } else {
                listSharedLinksErrorPath = ListSharedLinksError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listSharedLinksErrorPath;
        }
    }
}
