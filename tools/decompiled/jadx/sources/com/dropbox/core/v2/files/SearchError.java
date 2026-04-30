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
public final class SearchError {
    public static final SearchError OTHER = new SearchError().withTag(Tag.OTHER);
    private Tag _tag;
    private LookupError pathValue;

    public enum Tag {
        PATH,
        OTHER
    }

    private SearchError() {
    }

    private SearchError withTag(Tag tag) {
        SearchError searchError = new SearchError();
        searchError._tag = tag;
        return searchError;
    }

    private SearchError withTagAndPath(Tag tag, LookupError lookupError) {
        SearchError searchError = new SearchError();
        searchError._tag = tag;
        searchError.pathValue = lookupError;
        return searchError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static SearchError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SearchError().withTagAndPath(Tag.PATH, lookupError);
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
        if (obj == null || !(obj instanceof SearchError)) {
            return false;
        }
        SearchError searchError = (SearchError) obj;
        if (this._tag != searchError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == searchError.pathValue || this.pathValue.equals(searchError.pathValue);
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

    class Serializer extends UnionSerializer<SearchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SearchError searchError, g gVar) throws IOException {
            switch (searchError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(searchError.pathValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SearchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SearchError searchErrorPath;
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
                searchErrorPath = SearchError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                searchErrorPath = SearchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return searchErrorPath;
        }
    }
}
