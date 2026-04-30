package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderLinkPolicy {
    MEMBERS_ONLY,
    MEMBERS_AND_TEAM,
    ANYONE,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderLinkPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderLinkPolicy sharedFolderLinkPolicy, g gVar) throws IOException {
            switch (sharedFolderLinkPolicy) {
                case MEMBERS_ONLY:
                    gVar.b("members_only");
                    break;
                case MEMBERS_AND_TEAM:
                    gVar.b("members_and_team");
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
        public SharedFolderLinkPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderLinkPolicy sharedFolderLinkPolicy;
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
            if ("members_only".equals(tag)) {
                sharedFolderLinkPolicy = SharedFolderLinkPolicy.MEMBERS_ONLY;
            } else if ("members_and_team".equals(tag)) {
                sharedFolderLinkPolicy = SharedFolderLinkPolicy.MEMBERS_AND_TEAM;
            } else if ("anyone".equals(tag)) {
                sharedFolderLinkPolicy = SharedFolderLinkPolicy.ANYONE;
            } else {
                sharedFolderLinkPolicy = SharedFolderLinkPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderLinkPolicy;
        }
    }
}
