package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderJoinPolicy {
    FROM_TEAM_ONLY,
    FROM_ANYONE,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderJoinPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderJoinPolicy sharedFolderJoinPolicy, g gVar) throws IOException {
            switch (sharedFolderJoinPolicy) {
                case FROM_TEAM_ONLY:
                    gVar.b("from_team_only");
                    break;
                case FROM_ANYONE:
                    gVar.b("from_anyone");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedFolderJoinPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderJoinPolicy sharedFolderJoinPolicy;
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
            if ("from_team_only".equals(tag)) {
                sharedFolderJoinPolicy = SharedFolderJoinPolicy.FROM_TEAM_ONLY;
            } else if ("from_anyone".equals(tag)) {
                sharedFolderJoinPolicy = SharedFolderJoinPolicy.FROM_ANYONE;
            } else {
                sharedFolderJoinPolicy = SharedFolderJoinPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderJoinPolicy;
        }
    }
}
