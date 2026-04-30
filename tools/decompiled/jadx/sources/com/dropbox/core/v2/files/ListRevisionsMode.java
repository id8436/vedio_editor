package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListRevisionsMode {
    PATH,
    ID,
    OTHER;

    class Serializer extends UnionSerializer<ListRevisionsMode> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListRevisionsMode listRevisionsMode, g gVar) throws IOException {
            switch (listRevisionsMode) {
                case PATH:
                    gVar.b("path");
                    break;
                case ID:
                    gVar.b("id");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListRevisionsMode deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListRevisionsMode listRevisionsMode;
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
                listRevisionsMode = ListRevisionsMode.PATH;
            } else if ("id".equals(tag)) {
                listRevisionsMode = ListRevisionsMode.ID;
            } else {
                listRevisionsMode = ListRevisionsMode.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listRevisionsMode;
        }
    }
}
