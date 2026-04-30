package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingMemberPolicy {
    ALLOW,
    FORBID,
    OTHER;

    class Serializer extends UnionSerializer<SharingMemberPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingMemberPolicy sharingMemberPolicy, g gVar) throws IOException {
            switch (sharingMemberPolicy) {
                case ALLOW:
                    gVar.b("allow");
                    break;
                case FORBID:
                    gVar.b("forbid");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingMemberPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingMemberPolicy sharingMemberPolicy;
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
            if ("allow".equals(tag)) {
                sharingMemberPolicy = SharingMemberPolicy.ALLOW;
            } else if ("forbid".equals(tag)) {
                sharingMemberPolicy = SharingMemberPolicy.FORBID;
            } else {
                sharingMemberPolicy = SharingMemberPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingMemberPolicy;
        }
    }
}
