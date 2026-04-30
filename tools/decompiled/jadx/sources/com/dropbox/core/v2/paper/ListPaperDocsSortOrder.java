package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListPaperDocsSortOrder {
    ASCENDING,
    DESCENDING,
    OTHER;

    class Serializer extends UnionSerializer<ListPaperDocsSortOrder> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListPaperDocsSortOrder listPaperDocsSortOrder, g gVar) throws IOException {
            switch (listPaperDocsSortOrder) {
                case ASCENDING:
                    gVar.b("ascending");
                    break;
                case DESCENDING:
                    gVar.b("descending");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListPaperDocsSortOrder deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListPaperDocsSortOrder listPaperDocsSortOrder;
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
            if ("ascending".equals(tag)) {
                listPaperDocsSortOrder = ListPaperDocsSortOrder.ASCENDING;
            } else if ("descending".equals(tag)) {
                listPaperDocsSortOrder = ListPaperDocsSortOrder.DESCENDING;
            } else {
                listPaperDocsSortOrder = ListPaperDocsSortOrder.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listPaperDocsSortOrder;
        }
    }
}
