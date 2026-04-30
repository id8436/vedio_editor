package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListMemberAppsError {
    MEMBER_NOT_FOUND,
    OTHER;

    class Serializer extends UnionSerializer<ListMemberAppsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListMemberAppsError listMemberAppsError, g gVar) throws IOException {
            switch (listMemberAppsError) {
                case MEMBER_NOT_FOUND:
                    gVar.b("member_not_found");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListMemberAppsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListMemberAppsError listMemberAppsError;
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
            if ("member_not_found".equals(tag)) {
                listMemberAppsError = ListMemberAppsError.MEMBER_NOT_FOUND;
            } else {
                listMemberAppsError = ListMemberAppsError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listMemberAppsError;
        }
    }
}
