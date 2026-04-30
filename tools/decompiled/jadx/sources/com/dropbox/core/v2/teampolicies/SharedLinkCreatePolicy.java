package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedLinkCreatePolicy {
    DEFAULT_PUBLIC,
    DEFAULT_TEAM_ONLY,
    TEAM_ONLY,
    OTHER;

    class Serializer extends UnionSerializer<SharedLinkCreatePolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkCreatePolicy sharedLinkCreatePolicy, g gVar) throws IOException {
            switch (sharedLinkCreatePolicy) {
                case DEFAULT_PUBLIC:
                    gVar.b("default_public");
                    break;
                case DEFAULT_TEAM_ONLY:
                    gVar.b("default_team_only");
                    break;
                case TEAM_ONLY:
                    gVar.b("team_only");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkCreatePolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedLinkCreatePolicy sharedLinkCreatePolicy;
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
            if ("default_public".equals(tag)) {
                sharedLinkCreatePolicy = SharedLinkCreatePolicy.DEFAULT_PUBLIC;
            } else if ("default_team_only".equals(tag)) {
                sharedLinkCreatePolicy = SharedLinkCreatePolicy.DEFAULT_TEAM_ONLY;
            } else if ("team_only".equals(tag)) {
                sharedLinkCreatePolicy = SharedLinkCreatePolicy.TEAM_ONLY;
            } else {
                sharedLinkCreatePolicy = SharedLinkCreatePolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedLinkCreatePolicy;
        }
    }
}
