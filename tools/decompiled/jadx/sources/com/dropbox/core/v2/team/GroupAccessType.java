package com.dropbox.core.v2.team;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupAccessType {
    MEMBER,
    OWNER;

    class Serializer extends UnionSerializer<GroupAccessType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupAccessType groupAccessType, g gVar) throws IOException {
            switch (groupAccessType) {
                case MEMBER:
                    gVar.b("member");
                    return;
                case OWNER:
                    gVar.b(DCXProjectKeys.kDCXKey_Project_owner);
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupAccessType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupAccessType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupAccessType groupAccessType;
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
            if ("member".equals(tag)) {
                groupAccessType = GroupAccessType.MEMBER;
            } else if (DCXProjectKeys.kDCXKey_Project_owner.equals(tag)) {
                groupAccessType = GroupAccessType.OWNER;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupAccessType;
        }
    }
}
