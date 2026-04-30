package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetTeamEventsContinueError {
    BAD_CURSOR,
    OTHER;

    class Serializer extends UnionSerializer<GetTeamEventsContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetTeamEventsContinueError getTeamEventsContinueError, g gVar) throws IOException {
            switch (getTeamEventsContinueError) {
                case BAD_CURSOR:
                    gVar.b("bad_cursor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetTeamEventsContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetTeamEventsContinueError getTeamEventsContinueError;
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
            if ("bad_cursor".equals(tag)) {
                getTeamEventsContinueError = GetTeamEventsContinueError.BAD_CURSOR;
            } else {
                getTeamEventsContinueError = GetTeamEventsContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getTeamEventsContinueError;
        }
    }
}
