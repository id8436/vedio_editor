package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupCreateError {
    GROUP_NAME_ALREADY_USED,
    GROUP_NAME_INVALID,
    EXTERNAL_ID_ALREADY_IN_USE,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    OTHER;

    class Serializer extends UnionSerializer<GroupCreateError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupCreateError groupCreateError, g gVar) throws IOException {
            switch (groupCreateError) {
                case GROUP_NAME_ALREADY_USED:
                    gVar.b("group_name_already_used");
                    break;
                case GROUP_NAME_INVALID:
                    gVar.b("group_name_invalid");
                    break;
                case EXTERNAL_ID_ALREADY_IN_USE:
                    gVar.b("external_id_already_in_use");
                    break;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupCreateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupCreateError groupCreateError;
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
            if ("group_name_already_used".equals(tag)) {
                groupCreateError = GroupCreateError.GROUP_NAME_ALREADY_USED;
            } else if ("group_name_invalid".equals(tag)) {
                groupCreateError = GroupCreateError.GROUP_NAME_INVALID;
            } else if ("external_id_already_in_use".equals(tag)) {
                groupCreateError = GroupCreateError.EXTERNAL_ID_ALREADY_IN_USE;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupCreateError = GroupCreateError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else {
                groupCreateError = GroupCreateError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupCreateError;
        }
    }
}
