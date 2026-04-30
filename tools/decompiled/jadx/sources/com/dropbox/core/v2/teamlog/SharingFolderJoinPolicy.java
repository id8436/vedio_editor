package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingFolderJoinPolicy {
    FROM_ANYONE,
    FROM_TEAM_ONLY,
    OTHER;

    class Serializer extends UnionSerializer<SharingFolderJoinPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingFolderJoinPolicy sharingFolderJoinPolicy, g gVar) throws IOException {
            switch (sharingFolderJoinPolicy) {
                case FROM_ANYONE:
                    gVar.b("from_anyone");
                    break;
                case FROM_TEAM_ONLY:
                    gVar.b("from_team_only");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingFolderJoinPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingFolderJoinPolicy sharingFolderJoinPolicy;
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
            if ("from_anyone".equals(tag)) {
                sharingFolderJoinPolicy = SharingFolderJoinPolicy.FROM_ANYONE;
            } else if ("from_team_only".equals(tag)) {
                sharingFolderJoinPolicy = SharingFolderJoinPolicy.FROM_TEAM_ONLY;
            } else {
                sharingFolderJoinPolicy = SharingFolderJoinPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingFolderJoinPolicy;
        }
    }
}
