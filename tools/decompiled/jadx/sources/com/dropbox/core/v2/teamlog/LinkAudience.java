package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum LinkAudience {
    PUBLIC,
    TEAM,
    MEMBERS,
    OTHER;

    class Serializer extends UnionSerializer<LinkAudience> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LinkAudience linkAudience, g gVar) throws IOException {
            switch (linkAudience) {
                case PUBLIC:
                    gVar.b("public");
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
        public LinkAudience deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LinkAudience linkAudience;
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
            if ("public".equals(tag)) {
                linkAudience = LinkAudience.PUBLIC;
            } else if ("team".equals(tag)) {
                linkAudience = LinkAudience.TEAM;
            } else if ("members".equals(tag)) {
                linkAudience = LinkAudience.MEMBERS;
            } else {
                linkAudience = LinkAudience.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return linkAudience;
        }
    }
}
