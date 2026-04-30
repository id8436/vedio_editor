package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderTeamSharedDropboxError {
    DISALLOWED,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderTeamSharedDropboxError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError, g gVar) throws IOException {
            switch (teamFolderTeamSharedDropboxError) {
                case DISALLOWED:
                    gVar.b("disallowed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderTeamSharedDropboxError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError;
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
            if ("disallowed".equals(tag)) {
                teamFolderTeamSharedDropboxError = TeamFolderTeamSharedDropboxError.DISALLOWED;
            } else {
                teamFolderTeamSharedDropboxError = TeamFolderTeamSharedDropboxError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderTeamSharedDropboxError;
        }
    }
}
