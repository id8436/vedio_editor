package com.dropbox.core.v2.sharing;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AclUpdatePolicy {
    OWNER,
    EDITORS,
    OTHER;

    class Serializer extends UnionSerializer<AclUpdatePolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AclUpdatePolicy aclUpdatePolicy, g gVar) throws IOException {
            switch (aclUpdatePolicy) {
                case OWNER:
                    gVar.b(DCXProjectKeys.kDCXKey_Project_owner);
                    break;
                case EDITORS:
                    gVar.b("editors");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AclUpdatePolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AclUpdatePolicy aclUpdatePolicy;
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
            if (DCXProjectKeys.kDCXKey_Project_owner.equals(tag)) {
                aclUpdatePolicy = AclUpdatePolicy.OWNER;
            } else if ("editors".equals(tag)) {
                aclUpdatePolicy = AclUpdatePolicy.EDITORS;
            } else {
                aclUpdatePolicy = AclUpdatePolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return aclUpdatePolicy;
        }
    }
}
