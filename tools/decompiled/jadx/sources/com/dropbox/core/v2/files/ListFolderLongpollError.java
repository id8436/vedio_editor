package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListFolderLongpollError {
    RESET,
    OTHER;

    class Serializer extends UnionSerializer<ListFolderLongpollError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFolderLongpollError listFolderLongpollError, g gVar) throws IOException {
            switch (listFolderLongpollError) {
                case RESET:
                    gVar.b("reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFolderLongpollError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFolderLongpollError listFolderLongpollError;
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
            if ("reset".equals(tag)) {
                listFolderLongpollError = ListFolderLongpollError.RESET;
            } else {
                listFolderLongpollError = ListFolderLongpollError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFolderLongpollError;
        }
    }
}
