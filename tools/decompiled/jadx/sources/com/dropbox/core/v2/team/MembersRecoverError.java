package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersRecoverError {
    USER_NOT_FOUND,
    USER_UNRECOVERABLE,
    USER_NOT_IN_TEAM,
    TEAM_LICENSE_LIMIT,
    OTHER;

    class Serializer extends UnionSerializer<MembersRecoverError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersRecoverError membersRecoverError, g gVar) throws IOException {
            switch (membersRecoverError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    break;
                case USER_UNRECOVERABLE:
                    gVar.b("user_unrecoverable");
                    break;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
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
        public MembersRecoverError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersRecoverError membersRecoverError;
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
                membersRecoverError = MembersRecoverError.USER_NOT_FOUND;
            } else if ("user_unrecoverable".equals(tag)) {
                membersRecoverError = MembersRecoverError.USER_UNRECOVERABLE;
            } else if ("user_not_in_team".equals(tag)) {
                membersRecoverError = MembersRecoverError.USER_NOT_IN_TEAM;
            } else if ("team_license_limit".equals(tag)) {
                membersRecoverError = MembersRecoverError.TEAM_LICENSE_LIMIT;
            } else {
                membersRecoverError = MembersRecoverError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersRecoverError;
        }
    }
}
