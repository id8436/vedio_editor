package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderListContinueError {
    INVALID_CURSOR,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderListContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderListContinueError teamFolderListContinueError, g gVar) throws IOException {
            switch (teamFolderListContinueError) {
                case INVALID_CURSOR:
                    gVar.b("invalid_cursor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderListContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderListContinueError teamFolderListContinueError;
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
                teamFolderListContinueError = TeamFolderListContinueError.INVALID_CURSOR;
            } else {
                teamFolderListContinueError = TeamFolderListContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderListContinueError;
        }
    }
}
