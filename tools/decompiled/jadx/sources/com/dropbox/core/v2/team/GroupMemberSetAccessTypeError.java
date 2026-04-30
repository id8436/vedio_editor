package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupMemberSetAccessTypeError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    MEMBER_NOT_IN_GROUP,
    USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;

    class Serializer extends UnionSerializer<GroupMemberSetAccessTypeError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupMemberSetAccessTypeError groupMemberSetAccessTypeError, g gVar) throws IOException {
            switch (groupMemberSetAccessTypeError) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    return;
                case MEMBER_NOT_IN_GROUP:
                    gVar.b("member_not_in_group");
                    return;
                case USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:
                    gVar.b("user_cannot_be_manager_of_company_managed_group");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupMemberSetAccessTypeError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupMemberSetAccessTypeError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupMemberSetAccessTypeError groupMemberSetAccessTypeError;
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
            if ("group_not_found".equals(tag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.GROUP_NOT_FOUND;
            } else if ("other".equals(tag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.OTHER;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("member_not_in_group".equals(tag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.MEMBER_NOT_IN_GROUP;
            } else if ("user_cannot_be_manager_of_company_managed_group".equals(tag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupMemberSetAccessTypeError;
        }
    }
}
