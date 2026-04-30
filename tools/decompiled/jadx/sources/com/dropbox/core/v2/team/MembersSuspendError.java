package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersSuspendError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    SUSPEND_INACTIVE_USER,
    SUSPEND_LAST_ADMIN,
    TEAM_LICENSE_LIMIT;

    class Serializer extends UnionSerializer<MembersSuspendError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersSuspendError membersSuspendError, g gVar) throws IOException {
            switch (membersSuspendError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    return;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SUSPEND_INACTIVE_USER:
                    gVar.b("suspend_inactive_user");
                    return;
                case SUSPEND_LAST_ADMIN:
                    gVar.b("suspend_last_admin");
                    return;
                case TEAM_LICENSE_LIMIT:
                    gVar.b("team_license_limit");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersSuspendError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersSuspendError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersSuspendError membersSuspendError;
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
                membersSuspendError = MembersSuspendError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(tag)) {
                membersSuspendError = MembersSuspendError.USER_NOT_IN_TEAM;
            } else if ("other".equals(tag)) {
                membersSuspendError = MembersSuspendError.OTHER;
            } else if ("suspend_inactive_user".equals(tag)) {
                membersSuspendError = MembersSuspendError.SUSPEND_INACTIVE_USER;
            } else if ("suspend_last_admin".equals(tag)) {
                membersSuspendError = MembersSuspendError.SUSPEND_LAST_ADMIN;
            } else if ("team_license_limit".equals(tag)) {
                membersSuspendError = MembersSuspendError.TEAM_LICENSE_LIMIT;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersSuspendError;
        }
    }
}
