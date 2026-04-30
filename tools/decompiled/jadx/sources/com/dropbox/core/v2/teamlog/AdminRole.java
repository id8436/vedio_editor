package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AdminRole {
    USER,
    LIMITED_ADMIN,
    SUPPORT_ADMIN,
    USER_MANAGEMENT_ADMIN,
    TEAM_ADMIN,
    OTHER;

    class Serializer extends UnionSerializer<AdminRole> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AdminRole adminRole, g gVar) throws IOException {
            switch (adminRole) {
                case USER:
                    gVar.b("user");
                    break;
                case LIMITED_ADMIN:
                    gVar.b("limited_admin");
                    break;
                case SUPPORT_ADMIN:
                    gVar.b("support_admin");
                    break;
                case USER_MANAGEMENT_ADMIN:
                    gVar.b("user_management_admin");
                    break;
                case TEAM_ADMIN:
                    gVar.b("team_admin");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AdminRole deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AdminRole adminRole;
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
            if ("user".equals(tag)) {
                adminRole = AdminRole.USER;
            } else if ("limited_admin".equals(tag)) {
                adminRole = AdminRole.LIMITED_ADMIN;
            } else if ("support_admin".equals(tag)) {
                adminRole = AdminRole.SUPPORT_ADMIN;
            } else if ("user_management_admin".equals(tag)) {
                adminRole = AdminRole.USER_MANAGEMENT_ADMIN;
            } else if ("team_admin".equals(tag)) {
                adminRole = AdminRole.TEAM_ADMIN;
            } else {
                adminRole = AdminRole.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return adminRole;
        }
    }
}
