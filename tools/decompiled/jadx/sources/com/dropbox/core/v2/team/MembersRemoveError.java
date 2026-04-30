package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersRemoveError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER,
    REMOVE_LAST_ADMIN,
    REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER,
    REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER,
    TRANSFER_DEST_USER_NOT_FOUND,
    TRANSFER_DEST_USER_NOT_IN_TEAM,
    TRANSFER_ADMIN_USER_NOT_FOUND,
    TRANSFER_ADMIN_USER_NOT_IN_TEAM,
    UNSPECIFIED_TRANSFER_ADMIN_ID,
    TRANSFER_ADMIN_IS_NOT_ADMIN,
    CANNOT_KEEP_ACCOUNT_AND_TRANSFER,
    CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA,
    EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED;

    class Serializer extends UnionSerializer<MembersRemoveError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersRemoveError membersRemoveError, g gVar) throws IOException {
            switch (membersRemoveError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    return;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case REMOVE_LAST_ADMIN:
                    gVar.b("remove_last_admin");
                    return;
                case REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:
                    gVar.b("removed_and_transfer_dest_should_differ");
                    return;
                case REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:
                    gVar.b("removed_and_transfer_admin_should_differ");
                    return;
                case TRANSFER_DEST_USER_NOT_FOUND:
                    gVar.b("transfer_dest_user_not_found");
                    return;
                case TRANSFER_DEST_USER_NOT_IN_TEAM:
                    gVar.b("transfer_dest_user_not_in_team");
                    return;
                case TRANSFER_ADMIN_USER_NOT_FOUND:
                    gVar.b("transfer_admin_user_not_found");
                    return;
                case TRANSFER_ADMIN_USER_NOT_IN_TEAM:
                    gVar.b("transfer_admin_user_not_in_team");
                    return;
                case UNSPECIFIED_TRANSFER_ADMIN_ID:
                    gVar.b("unspecified_transfer_admin_id");
                    return;
                case TRANSFER_ADMIN_IS_NOT_ADMIN:
                    gVar.b("transfer_admin_is_not_admin");
                    return;
                case CANNOT_KEEP_ACCOUNT_AND_TRANSFER:
                    gVar.b("cannot_keep_account_and_transfer");
                    return;
                case CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:
                    gVar.b("cannot_keep_account_and_delete_data");
                    return;
                case EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:
                    gVar.b("email_address_too_long_to_be_disabled");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersRemoveError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersRemoveError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersRemoveError membersRemoveError;
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
                membersRemoveError = MembersRemoveError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(tag)) {
                membersRemoveError = MembersRemoveError.USER_NOT_IN_TEAM;
            } else if ("other".equals(tag)) {
                membersRemoveError = MembersRemoveError.OTHER;
            } else if ("remove_last_admin".equals(tag)) {
                membersRemoveError = MembersRemoveError.REMOVE_LAST_ADMIN;
            } else if ("removed_and_transfer_dest_should_differ".equals(tag)) {
                membersRemoveError = MembersRemoveError.REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER;
            } else if ("removed_and_transfer_admin_should_differ".equals(tag)) {
                membersRemoveError = MembersRemoveError.REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER;
            } else if ("transfer_dest_user_not_found".equals(tag)) {
                membersRemoveError = MembersRemoveError.TRANSFER_DEST_USER_NOT_FOUND;
            } else if ("transfer_dest_user_not_in_team".equals(tag)) {
                membersRemoveError = MembersRemoveError.TRANSFER_DEST_USER_NOT_IN_TEAM;
            } else if ("transfer_admin_user_not_found".equals(tag)) {
                membersRemoveError = MembersRemoveError.TRANSFER_ADMIN_USER_NOT_FOUND;
            } else if ("transfer_admin_user_not_in_team".equals(tag)) {
                membersRemoveError = MembersRemoveError.TRANSFER_ADMIN_USER_NOT_IN_TEAM;
            } else if ("unspecified_transfer_admin_id".equals(tag)) {
                membersRemoveError = MembersRemoveError.UNSPECIFIED_TRANSFER_ADMIN_ID;
            } else if ("transfer_admin_is_not_admin".equals(tag)) {
                membersRemoveError = MembersRemoveError.TRANSFER_ADMIN_IS_NOT_ADMIN;
            } else if ("cannot_keep_account_and_transfer".equals(tag)) {
                membersRemoveError = MembersRemoveError.CANNOT_KEEP_ACCOUNT_AND_TRANSFER;
            } else if ("cannot_keep_account_and_delete_data".equals(tag)) {
                membersRemoveError = MembersRemoveError.CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA;
            } else if ("email_address_too_long_to_be_disabled".equals(tag)) {
                membersRemoveError = MembersRemoveError.EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersRemoveError;
        }
    }
}
