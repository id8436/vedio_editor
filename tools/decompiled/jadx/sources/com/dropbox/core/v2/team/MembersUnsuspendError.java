package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersUnsuspendError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    UNSUSPEND_NON_SUSPENDED_MEMBER,
    TEAM_LICENSE_LIMIT;

    class Serializer extends UnionSerializer<MembersUnsuspendError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersUnsuspendError membersUnsuspendError, g gVar) throws IOException {
            switch (membersUnsuspendError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    return;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case UNSUSPEND_NON_SUSPENDED_MEMBER:
                    gVar.b("unsuspend_non_suspended_member");
                    return;
                case TEAM_LICENSE_LIMIT:
                    gVar.b("team_license_limit");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersUnsuspendError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersUnsuspendError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersUnsuspendError membersUnsuspendError;
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
                membersUnsuspendError = MembersUnsuspendError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(tag)) {
                membersUnsuspendError = MembersUnsuspendError.USER_NOT_IN_TEAM;
            } else if ("other".equals(tag)) {
                membersUnsuspendError = MembersUnsuspendError.OTHER;
            } else if ("unsuspend_non_suspended_member".equals(tag)) {
                membersUnsuspendError = MembersUnsuspendError.UNSUSPEND_NON_SUSPENDED_MEMBER;
            } else if ("team_license_limit".equals(tag)) {
                membersUnsuspendError = MembersUnsuspendError.TEAM_LICENSE_LIMIT;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersUnsuspendError;
        }
    }
}
