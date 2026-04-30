package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupDeleteError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    GROUP_ALREADY_DELETED;

    class Serializer extends UnionSerializer<GroupDeleteError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupDeleteError groupDeleteError, g gVar) throws IOException {
            switch (groupDeleteError) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    return;
                case GROUP_ALREADY_DELETED:
                    gVar.b("group_already_deleted");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupDeleteError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupDeleteError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupDeleteError groupDeleteError;
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
                groupDeleteError = GroupDeleteError.GROUP_NOT_FOUND;
            } else if ("other".equals(tag)) {
                groupDeleteError = GroupDeleteError.OTHER;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupDeleteError = GroupDeleteError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("group_already_deleted".equals(tag)) {
                groupDeleteError = GroupDeleteError.GROUP_ALREADY_DELETED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupDeleteError;
        }
    }
}
