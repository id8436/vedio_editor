package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListFileRequestsError {
    DISABLED_FOR_TEAM,
    OTHER;

    class Serializer extends UnionSerializer<ListFileRequestsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFileRequestsError listFileRequestsError, g gVar) throws IOException {
            switch (listFileRequestsError) {
                case DISABLED_FOR_TEAM:
                    gVar.b("disabled_for_team");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + listFileRequestsError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFileRequestsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFileRequestsError listFileRequestsError;
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
            if ("disabled_for_team".equals(tag)) {
                listFileRequestsError = ListFileRequestsError.DISABLED_FOR_TEAM;
            } else if ("other".equals(tag)) {
                listFileRequestsError = ListFileRequestsError.OTHER;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFileRequestsError;
        }
    }
}
