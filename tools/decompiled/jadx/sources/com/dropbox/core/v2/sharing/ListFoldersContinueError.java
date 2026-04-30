package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListFoldersContinueError {
    INVALID_CURSOR,
    OTHER;

    class Serializer extends UnionSerializer<ListFoldersContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFoldersContinueError listFoldersContinueError, g gVar) throws IOException {
            switch (listFoldersContinueError) {
                case INVALID_CURSOR:
                    gVar.b("invalid_cursor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFoldersContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFoldersContinueError listFoldersContinueError;
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
            if ("invalid_cursor".equals(tag)) {
                listFoldersContinueError = ListFoldersContinueError.INVALID_CURSOR;
            } else {
                listFoldersContinueError = ListFoldersContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFoldersContinueError;
        }
    }
}
