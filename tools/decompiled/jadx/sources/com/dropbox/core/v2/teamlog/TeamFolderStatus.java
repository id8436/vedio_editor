package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamFolderStatus {
    ARCHIVE,
    UNARCHIVE,
    OTHER;

    class Serializer extends UnionSerializer<TeamFolderStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderStatus teamFolderStatus, g gVar) throws IOException {
            switch (teamFolderStatus) {
                case ARCHIVE:
                    gVar.b(AdobeStorageSession.AdobeStorageSessionArchiveServiceTag);
                    break;
                case UNARCHIVE:
                    gVar.b("unarchive");
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
            if (AdobeStorageSession.AdobeStorageSessionArchiveServiceTag.equals(tag)) {
                teamFolderStatus = TeamFolderStatus.ARCHIVE;
            } else if ("unarchive".equals(tag)) {
                teamFolderStatus = TeamFolderStatus.UNARCHIVE;
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
