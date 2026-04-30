package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SearchMatchType {
    FILENAME,
    CONTENT,
    BOTH;

    class Serializer extends UnionSerializer<SearchMatchType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SearchMatchType searchMatchType, g gVar) throws IOException {
            switch (searchMatchType) {
                case FILENAME:
                    gVar.b("filename");
                    return;
                case CONTENT:
                    gVar.b("content");
                    return;
                case BOTH:
                    gVar.b("both");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + searchMatchType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SearchMatchType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SearchMatchType searchMatchType;
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
            if ("filename".equals(tag)) {
                searchMatchType = SearchMatchType.FILENAME;
            } else if ("content".equals(tag)) {
                searchMatchType = SearchMatchType.CONTENT;
            } else if ("both".equals(tag)) {
                searchMatchType = SearchMatchType.BOTH;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return searchMatchType;
        }
    }
}
