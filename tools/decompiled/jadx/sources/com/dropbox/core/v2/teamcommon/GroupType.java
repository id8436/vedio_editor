package com.dropbox.core.v2.teamcommon;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupType {
    TEAM,
    USER_MANAGED,
    OTHER;

    public class Serializer extends UnionSerializer<GroupType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupType groupType, g gVar) throws IOException {
            switch (groupType) {
                case TEAM:
                    gVar.b("team");
                    break;
                case USER_MANAGED:
                    gVar.b("user_managed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupType groupType;
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
                groupType = GroupType.TEAM;
            } else if ("user_managed".equals(tag)) {
                groupType = GroupType.USER_MANAGED;
            } else {
                groupType = GroupType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupType;
        }
    }
}
