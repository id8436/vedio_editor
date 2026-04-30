package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderStatus {
    ACTIVE,
    ARCHIVED,
    ARCHIVE_IN_PROGRESS,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderStatus teamFolderStatus, g gVar) throws IOException {
            switch (teamFolderStatus) {
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
        public TeamFolderStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderStatus teamFolderStatus;
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
                teamFolderStatus = TeamFolderStatus.ACTIVE;
            } else if ("archived".equals(tag)) {
                teamFolderStatus = TeamFolderStatus.ARCHIVED;
            } else if ("archive_in_progress".equals(tag)) {
                teamFolderStatus = TeamFolderStatus.ARCHIVE_IN_PROGRESS;
            } else {
                teamFolderStatus = TeamFolderStatus.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderStatus;
        }
    }
}
