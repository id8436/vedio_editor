package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupJoinPolicy {
    OPEN,
    REQUEST_TO_JOIN,
    OTHER;

    class Serializer extends UnionSerializer<GroupJoinPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupJoinPolicy groupJoinPolicy, g gVar) throws IOException {
            switch (groupJoinPolicy) {
                case OPEN:
                    gVar.b("open");
                    break;
                case REQUEST_TO_JOIN:
                    gVar.b("request_to_join");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupJoinPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupJoinPolicy groupJoinPolicy;
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
            if ("open".equals(tag)) {
                groupJoinPolicy = GroupJoinPolicy.OPEN;
            } else if ("request_to_join".equals(tag)) {
                groupJoinPolicy = GroupJoinPolicy.REQUEST_TO_JOIN;
            } else {
                groupJoinPolicy = GroupJoinPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupJoinPolicy;
        }
    }
}
