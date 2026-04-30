package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedLinkPolicy {
    ANYONE,
    TEAM,
    MEMBERS,
    OTHER;

    class Serializer extends UnionSerializer<SharedLinkPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkPolicy sharedLinkPolicy, g gVar) throws IOException {
            switch (sharedLinkPolicy) {
                case ANYONE:
                    gVar.b("anyone");
                    break;
                case TEAM:
                    gVar.b("team");
                    break;
                case MEMBERS:
                    gVar.b("members");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedLinkPolicy sharedLinkPolicy;
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
            if ("anyone".equals(tag)) {
                sharedLinkPolicy = SharedLinkPolicy.ANYONE;
            } else if ("team".equals(tag)) {
                sharedLinkPolicy = SharedLinkPolicy.TEAM;
            } else if ("members".equals(tag)) {
                sharedLinkPolicy = SharedLinkPolicy.MEMBERS;
            } else {
                sharedLinkPolicy = SharedLinkPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedLinkPolicy;
        }
    }
}
