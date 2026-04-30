package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersSetProfileError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE,
    NO_NEW_DATA_SPECIFIED,
    EMAIL_RESERVED_FOR_OTHER_USER,
    EXTERNAL_ID_USED_BY_OTHER_USER,
    SET_PROFILE_DISALLOWED,
    PARAM_CANNOT_BE_EMPTY,
    PERSISTENT_ID_DISABLED,
    PERSISTENT_ID_USED_BY_OTHER_USER,
    OTHER;

    class Serializer extends UnionSerializer<MembersSetProfileError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersSetProfileError membersSetProfileError, g gVar) throws IOException {
            switch (membersSetProfileError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    break;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    break;
                case EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:
                    gVar.b("external_id_and_new_external_id_unsafe");
                    break;
                case NO_NEW_DATA_SPECIFIED:
                    gVar.b("no_new_data_specified");
                    break;
                case EMAIL_RESERVED_FOR_OTHER_USER:
                    gVar.b("email_reserved_for_other_user");
                    break;
                case EXTERNAL_ID_USED_BY_OTHER_USER:
                    gVar.b("external_id_used_by_other_user");
                    break;
                case SET_PROFILE_DISALLOWED:
                    gVar.b("set_profile_disallowed");
                    break;
                case PARAM_CANNOT_BE_EMPTY:
                    gVar.b("param_cannot_be_empty");
                    break;
                case PERSISTENT_ID_DISABLED:
                    gVar.b("persistent_id_disabled");
                    break;
                case PERSISTENT_ID_USED_BY_OTHER_USER:
                    gVar.b("persistent_id_used_by_other_user");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersSetProfileError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersSetProfileError membersSetProfileError;
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
                membersSetProfileError = MembersSetProfileError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.USER_NOT_IN_TEAM;
            } else if ("external_id_and_new_external_id_unsafe".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE;
            } else if ("no_new_data_specified".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.NO_NEW_DATA_SPECIFIED;
            } else if ("email_reserved_for_other_user".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.EMAIL_RESERVED_FOR_OTHER_USER;
            } else if ("external_id_used_by_other_user".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.EXTERNAL_ID_USED_BY_OTHER_USER;
            } else if ("set_profile_disallowed".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.SET_PROFILE_DISALLOWED;
            } else if ("param_cannot_be_empty".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.PARAM_CANNOT_BE_EMPTY;
            } else if ("persistent_id_disabled".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.PERSISTENT_ID_DISABLED;
            } else if ("persistent_id_used_by_other_user".equals(tag)) {
                membersSetProfileError = MembersSetProfileError.PERSISTENT_ID_USED_BY_OTHER_USER;
            } else {
                membersSetProfileError = MembersSetProfileError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersSetProfileError;
        }
    }
}
