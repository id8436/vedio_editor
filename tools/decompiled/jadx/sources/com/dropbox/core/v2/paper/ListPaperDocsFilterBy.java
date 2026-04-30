package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListPaperDocsFilterBy {
    DOCS_ACCESSED,
    DOCS_CREATED,
    OTHER;

    class Serializer extends UnionSerializer<ListPaperDocsFilterBy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListPaperDocsFilterBy listPaperDocsFilterBy, g gVar) throws IOException {
            switch (listPaperDocsFilterBy) {
                case DOCS_ACCESSED:
                    gVar.b("docs_accessed");
                    break;
                case DOCS_CREATED:
                    gVar.b("docs_created");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListPaperDocsFilterBy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListPaperDocsFilterBy listPaperDocsFilterBy;
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
            if ("docs_accessed".equals(tag)) {
                listPaperDocsFilterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
            } else if ("docs_created".equals(tag)) {
                listPaperDocsFilterBy = ListPaperDocsFilterBy.DOCS_CREATED;
            } else {
                listPaperDocsFilterBy = ListPaperDocsFilterBy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listPaperDocsFilterBy;
        }
    }
}
