package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SsoPolicy {
    DISABLED,
    OPTIONAL,
    REQUIRED,
    OTHER;

    public class Serializer extends UnionSerializer<SsoPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SsoPolicy ssoPolicy, g gVar) throws IOException {
            switch (ssoPolicy) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case OPTIONAL:
                    gVar.b("optional");
                    break;
                case REQUIRED:
                    gVar.b("required");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SsoPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SsoPolicy ssoPolicy;
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
            if ("disabled".equals(tag)) {
                ssoPolicy = SsoPolicy.DISABLED;
            } else if ("optional".equals(tag)) {
                ssoPolicy = SsoPolicy.OPTIONAL;
            } else if ("required".equals(tag)) {
                ssoPolicy = SsoPolicy.REQUIRED;
            } else {
                ssoPolicy = SsoPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return ssoPolicy;
        }
    }
}
