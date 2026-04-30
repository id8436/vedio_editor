package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersSetPermissionsError {
    USER_NOT_FOUND,
    LAST_ADMIN,
    USER_NOT_IN_TEAM,
    CANNOT_SET_PERMISSIONS,
    TEAM_LICENSE_LIMIT,
    OTHER;

    class Serializer extends UnionSerializer<MembersSetPermissionsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersSetPermissionsError membersSetPermissionsError, g gVar) throws IOException {
            switch (membersSetPermissionsError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    break;
                case LAST_ADMIN:
                    gVar.b("last_admin");
                    break;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    break;
                case CANNOT_SET_PERMISSIONS:
                    gVar.b("cannot_set_permissions");
                    break;
                case TEAM_LICENSE_LIMIT:
                    gVar.b("team_license_limit");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersSetPermissionsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersSetPermissionsError membersSetPermissionsError;
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
            if ("user_not_found".equals(tag)) {
                membersSetPermissionsError = MembersSetPermissionsError.USER_NOT_FOUND;
            } else if ("last_admin".equals(tag)) {
                membersSetPermissionsError = MembersSetPermissionsError.LAST_ADMIN;
            } else if ("user_not_in_team".equals(tag)) {
                membersSetPermissionsError = MembersSetPermissionsError.USER_NOT_IN_TEAM;
            } else if ("cannot_set_permissions".equals(tag)) {
                membersSetPermissionsError = MembersSetPermissionsError.CANNOT_SET_PERMISSIONS;
            } else if ("team_license_limit".equals(tag)) {
                membersSetPermissionsError = MembersSetPermissionsError.TEAM_LICENSE_LIMIT;
            } else {
                membersSetPermissionsError = MembersSetPermissionsError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersSetPermissionsError;
        }
    }
}
