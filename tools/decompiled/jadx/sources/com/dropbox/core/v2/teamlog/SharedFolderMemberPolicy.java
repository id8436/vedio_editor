package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderMemberPolicy {
    TEAM_ONLY,
    ANYONE,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderMemberPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderMemberPolicy sharedFolderMemberPolicy, g gVar) throws IOException {
            switch (sharedFolderMemberPolicy) {
                case TEAM_ONLY:
                    gVar.b("team_only");
                    break;
                case ANYONE:
                    gVar.b("anyone");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedFolderMemberPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderMemberPolicy sharedFolderMemberPolicy;
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
            if ("team_only".equals(tag)) {
                sharedFolderMemberPolicy = SharedFolderMemberPolicy.TEAM_ONLY;
            } else if ("anyone".equals(tag)) {
                sharedFolderMemberPolicy = SharedFolderMemberPolicy.ANYONE;
            } else {
                sharedFolderMemberPolicy = SharedFolderMemberPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderMemberPolicy;
        }
    }
}
