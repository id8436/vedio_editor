package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderCreateError {
    INVALID_FOLDER_NAME,
    FOLDER_NAME_ALREADY_USED,
    FOLDER_NAME_RESERVED,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderCreateError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderCreateError teamFolderCreateError, g gVar) throws IOException {
            switch (teamFolderCreateError) {
                case INVALID_FOLDER_NAME:
                    gVar.b("invalid_folder_name");
                    break;
                case FOLDER_NAME_ALREADY_USED:
                    gVar.b("folder_name_already_used");
                    break;
                case FOLDER_NAME_RESERVED:
                    gVar.b("folder_name_reserved");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderCreateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderCreateError teamFolderCreateError;
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
            if ("invalid_folder_name".equals(tag)) {
                teamFolderCreateError = TeamFolderCreateError.INVALID_FOLDER_NAME;
            } else if ("folder_name_already_used".equals(tag)) {
                teamFolderCreateError = TeamFolderCreateError.FOLDER_NAME_ALREADY_USED;
            } else if ("folder_name_reserved".equals(tag)) {
                teamFolderCreateError = TeamFolderCreateError.FOLDER_NAME_RESERVED;
            } else {
                teamFolderCreateError = TeamFolderCreateError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderCreateError;
        }
    }
}
