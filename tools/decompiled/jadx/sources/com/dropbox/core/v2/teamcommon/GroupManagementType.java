package com.dropbox.core.v2.teamcommon;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupManagementType {
    USER_MANAGED,
    COMPANY_MANAGED,
    SYSTEM_MANAGED,
    OTHER;

    public class Serializer extends UnionSerializer<GroupManagementType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupManagementType groupManagementType, g gVar) throws IOException {
            switch (groupManagementType) {
                case USER_MANAGED:
                    gVar.b("user_managed");
                    break;
                case COMPANY_MANAGED:
                    gVar.b("company_managed");
                    break;
                case SYSTEM_MANAGED:
                    gVar.b("system_managed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupManagementType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupManagementType groupManagementType;
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
            if ("user_managed".equals(tag)) {
                groupManagementType = GroupManagementType.USER_MANAGED;
            } else if ("company_managed".equals(tag)) {
                groupManagementType = GroupManagementType.COMPANY_MANAGED;
            } else if ("system_managed".equals(tag)) {
                groupManagementType = GroupManagementType.SYSTEM_MANAGED;
            } else {
                groupManagementType = GroupManagementType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupManagementType;
        }
    }
}
