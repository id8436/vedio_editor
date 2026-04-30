package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ExtendedVersionHistoryPolicy {
    EXPLICITLY_LIMITED,
    EXPLICITLY_UNLIMITED,
    IMPLICITLY_LIMITED,
    OTHER;

    class Serializer extends UnionSerializer<ExtendedVersionHistoryPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy, g gVar) throws IOException {
            switch (extendedVersionHistoryPolicy) {
                case EXPLICITLY_LIMITED:
                    gVar.b("explicitly_limited");
                    break;
                case EXPLICITLY_UNLIMITED:
                    gVar.b("explicitly_unlimited");
                    break;
                case IMPLICITLY_LIMITED:
                    gVar.b("implicitly_limited");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ExtendedVersionHistoryPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy;
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
            if ("explicitly_limited".equals(tag)) {
                extendedVersionHistoryPolicy = ExtendedVersionHistoryPolicy.EXPLICITLY_LIMITED;
            } else if ("explicitly_unlimited".equals(tag)) {
                extendedVersionHistoryPolicy = ExtendedVersionHistoryPolicy.EXPLICITLY_UNLIMITED;
            } else if ("implicitly_limited".equals(tag)) {
                extendedVersionHistoryPolicy = ExtendedVersionHistoryPolicy.IMPLICITLY_LIMITED;
            } else {
                extendedVersionHistoryPolicy = ExtendedVersionHistoryPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return extendedVersionHistoryPolicy;
        }
    }
}
