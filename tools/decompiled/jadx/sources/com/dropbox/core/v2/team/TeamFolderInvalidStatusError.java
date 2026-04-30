package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderInvalidStatusError {
    ACTIVE,
    ARCHIVED,
    ARCHIVE_IN_PROGRESS,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderInvalidStatusError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderInvalidStatusError teamFolderInvalidStatusError, g gVar) throws IOException {
            switch (teamFolderInvalidStatusError) {
                case ACTIVE:
                    gVar.b("active");
                    break;
                case ARCHIVED:
                    gVar.b("archived");
                    break;
                case ARCHIVE_IN_PROGRESS:
                    gVar.b("archive_in_progress");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderInvalidStatusError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderInvalidStatusError teamFolderInvalidStatusError;
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
            if ("active".equals(tag)) {
                teamFolderInvalidStatusError = TeamFolderInvalidStatusError.ACTIVE;
            } else if ("archived".equals(tag)) {
                teamFolderInvalidStatusError = TeamFolderInvalidStatusError.ARCHIVED;
            } else if ("archive_in_progress".equals(tag)) {
                teamFolderInvalidStatusError = TeamFolderInvalidStatusError.ARCHIVE_IN_PROGRESS;
            } else {
                teamFolderInvalidStatusError = TeamFolderInvalidStatusError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderInvalidStatusError;
        }
    }
}
