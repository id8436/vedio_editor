package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperMemberPolicy {
    ANYONE_WITH_LINK,
    ONLY_TEAM,
    TEAM_AND_EXPLICITLY_SHARED,
    OTHER;

    class Serializer extends UnionSerializer<PaperMemberPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperMemberPolicy paperMemberPolicy, g gVar) throws IOException {
            switch (paperMemberPolicy) {
                case ANYONE_WITH_LINK:
                    gVar.b("anyone_with_link");
                    break;
                case ONLY_TEAM:
                    gVar.b("only_team");
                    break;
                case TEAM_AND_EXPLICITLY_SHARED:
                    gVar.b("team_and_explicitly_shared");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperMemberPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperMemberPolicy paperMemberPolicy;
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
            if ("anyone_with_link".equals(tag)) {
                paperMemberPolicy = PaperMemberPolicy.ANYONE_WITH_LINK;
            } else if ("only_team".equals(tag)) {
                paperMemberPolicy = PaperMemberPolicy.ONLY_TEAM;
            } else if ("team_and_explicitly_shared".equals(tag)) {
                paperMemberPolicy = PaperMemberPolicy.TEAM_AND_EXPLICITLY_SHARED;
            } else {
                paperMemberPolicy = PaperMemberPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperMemberPolicy;
        }
    }
}
