package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupUserManagementPolicy {
    ADMINS_ONLY,
    ALL_USERS,
    OTHER;

    class Serializer extends UnionSerializer<GroupUserManagementPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupUserManagementPolicy groupUserManagementPolicy, g gVar) throws IOException {
            switch (groupUserManagementPolicy) {
                case ADMINS_ONLY:
                    gVar.b("admins_only");
                    break;
                case ALL_USERS:
                    gVar.b("all_users");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupUserManagementPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupUserManagementPolicy groupUserManagementPolicy;
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
            if ("admins_only".equals(tag)) {
                groupUserManagementPolicy = GroupUserManagementPolicy.ADMINS_ONLY;
            } else if ("all_users".equals(tag)) {
                groupUserManagementPolicy = GroupUserManagementPolicy.ALL_USERS;
            } else {
                groupUserManagementPolicy = GroupUserManagementPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupUserManagementPolicy;
        }
    }
}
