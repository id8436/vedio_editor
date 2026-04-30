package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SearchMode {
    FILENAME,
    FILENAME_AND_CONTENT,
    DELETED_FILENAME;

    class Serializer extends UnionSerializer<SearchMode> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SearchMode searchMode, g gVar) throws IOException {
            switch (searchMode) {
                case FILENAME:
                    gVar.b("filename");
                    return;
                case FILENAME_AND_CONTENT:
                    gVar.b("filename_and_content");
                    return;
                case DELETED_FILENAME:
                    gVar.b("deleted_filename");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + searchMode);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SearchMode deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SearchMode searchMode;
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
                searchMode = SearchMode.FILENAME;
            } else if ("filename_and_content".equals(tag)) {
                searchMode = SearchMode.FILENAME_AND_CONTENT;
            } else if ("deleted_filename".equals(tag)) {
                searchMode = SearchMode.DELETED_FILENAME;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return searchMode;
        }
    }
}
