package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderMemberPolicy {
    TEAM,
    ANYONE,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderMemberPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderMemberPolicy sharedFolderMemberPolicy, g gVar) throws IOException {
            switch (sharedFolderMemberPolicy) {
                case TEAM:
                    gVar.b("team");
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
            if ("team".equals(tag)) {
                sharedFolderMemberPolicy = SharedFolderMemberPolicy.TEAM;
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
