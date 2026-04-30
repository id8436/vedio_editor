package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListTeamAppsError {
    RESET,
    OTHER;

    class Serializer extends UnionSerializer<ListTeamAppsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListTeamAppsError listTeamAppsError, g gVar) throws IOException {
            switch (listTeamAppsError) {
                case RESET:
                    gVar.b("reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListTeamAppsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListTeamAppsError listTeamAppsError;
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
                listTeamAppsError = ListTeamAppsError.RESET;
            } else {
                listTeamAppsError = ListTeamAppsError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listTeamAppsError;
        }
    }
}
