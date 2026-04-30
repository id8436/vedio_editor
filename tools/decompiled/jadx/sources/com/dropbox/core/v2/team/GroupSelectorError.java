package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupSelectorError {
    GROUP_NOT_FOUND,
    OTHER;

    class Serializer extends UnionSerializer<GroupSelectorError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupSelectorError groupSelectorError, g gVar) throws IOException {
            switch (groupSelectorError) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupSelectorError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupSelectorError groupSelectorError;
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
                groupSelectorError = GroupSelectorError.GROUP_NOT_FOUND;
            } else {
                groupSelectorError = GroupSelectorError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupSelectorError;
        }
    }
}
