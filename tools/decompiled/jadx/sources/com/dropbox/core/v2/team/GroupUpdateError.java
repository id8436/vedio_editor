package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupUpdateError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    GROUP_NAME_ALREADY_USED,
    GROUP_NAME_INVALID,
    EXTERNAL_ID_ALREADY_IN_USE;

    class Serializer extends UnionSerializer<GroupUpdateError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupUpdateError groupUpdateError, g gVar) throws IOException {
            switch (groupUpdateError) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    return;
                case GROUP_NAME_ALREADY_USED:
                    gVar.b("group_name_already_used");
                    return;
                case GROUP_NAME_INVALID:
                    gVar.b("group_name_invalid");
                    return;
                case EXTERNAL_ID_ALREADY_IN_USE:
                    gVar.b("external_id_already_in_use");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupUpdateError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupUpdateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupUpdateError groupUpdateError;
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
                groupUpdateError = GroupUpdateError.GROUP_NOT_FOUND;
            } else if ("other".equals(tag)) {
                groupUpdateError = GroupUpdateError.OTHER;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupUpdateError = GroupUpdateError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("group_name_already_used".equals(tag)) {
                groupUpdateError = GroupUpdateError.GROUP_NAME_ALREADY_USED;
            } else if ("group_name_invalid".equals(tag)) {
                groupUpdateError = GroupUpdateError.GROUP_NAME_INVALID;
            } else if ("external_id_already_in_use".equals(tag)) {
                groupUpdateError = GroupUpdateError.EXTERNAL_ID_ALREADY_IN_USE;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupUpdateError;
        }
    }
}
