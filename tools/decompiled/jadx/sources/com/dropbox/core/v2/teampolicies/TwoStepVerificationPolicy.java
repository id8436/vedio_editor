package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TwoStepVerificationPolicy {
    REQUIRE_TFA_ENABLE,
    REQUIRE_TFA_DISABLE,
    OTHER;

    public class Serializer extends UnionSerializer<TwoStepVerificationPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TwoStepVerificationPolicy twoStepVerificationPolicy, g gVar) throws IOException {
            switch (twoStepVerificationPolicy) {
                case REQUIRE_TFA_ENABLE:
                    gVar.b("require_tfa_enable");
                    break;
                case REQUIRE_TFA_DISABLE:
                    gVar.b("require_tfa_disable");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TwoStepVerificationPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TwoStepVerificationPolicy twoStepVerificationPolicy;
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
            if ("require_tfa_enable".equals(tag)) {
                twoStepVerificationPolicy = TwoStepVerificationPolicy.REQUIRE_TFA_ENABLE;
            } else if ("require_tfa_disable".equals(tag)) {
                twoStepVerificationPolicy = TwoStepVerificationPolicy.REQUIRE_TFA_DISABLE;
            } else {
                twoStepVerificationPolicy = TwoStepVerificationPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return twoStepVerificationPolicy;
        }
    }
}
