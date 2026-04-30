package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TeamMembershipType {
    FULL,
    LIMITED;

    class Serializer extends UnionSerializer<TeamMembershipType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamMembershipType teamMembershipType, g gVar) throws IOException {
            switch (teamMembershipType) {
                case FULL:
                    gVar.b("full");
                    return;
                case LIMITED:
                    gVar.b("limited");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamMembershipType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamMembershipType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamMembershipType teamMembershipType;
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
            if ("full".equals(tag)) {
                teamMembershipType = TeamMembershipType.FULL;
            } else if ("limited".equals(tag)) {
                teamMembershipType = TeamMembershipType.LIMITED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamMembershipType;
        }
    }
}
