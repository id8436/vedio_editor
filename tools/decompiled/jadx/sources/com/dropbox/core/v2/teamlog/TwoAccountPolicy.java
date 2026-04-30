package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TwoAccountPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    class Serializer extends UnionSerializer<TwoAccountPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TwoAccountPolicy twoAccountPolicy, g gVar) throws IOException {
            switch (twoAccountPolicy) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case ENABLED:
                    gVar.b(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TwoAccountPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TwoAccountPolicy twoAccountPolicy;
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
                twoAccountPolicy = TwoAccountPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                twoAccountPolicy = TwoAccountPolicy.ENABLED;
            } else {
                twoAccountPolicy = TwoAccountPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return twoAccountPolicy;
        }
    }
}
