package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupsGetInfoError {
    GROUP_NOT_ON_TEAM,
    OTHER;

    class Serializer extends UnionSerializer<GroupsGetInfoError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupsGetInfoError groupsGetInfoError, g gVar) throws IOException {
            switch (groupsGetInfoError) {
                case GROUP_NOT_ON_TEAM:
                    gVar.b("group_not_on_team");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupsGetInfoError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupsGetInfoError groupsGetInfoError;
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
            if ("group_not_on_team".equals(tag)) {
                groupsGetInfoError = GroupsGetInfoError.GROUP_NOT_ON_TEAM;
            } else {
                groupsGetInfoError = GroupsGetInfoError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupsGetInfoError;
        }
    }
}
