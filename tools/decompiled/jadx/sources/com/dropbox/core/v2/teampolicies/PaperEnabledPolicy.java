package com.dropbox.core.v2.teampolicies;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperEnabledPolicy {
    DISABLED,
    ENABLED,
    UNSPECIFIED,
    OTHER;

    public class Serializer extends UnionSerializer<PaperEnabledPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperEnabledPolicy paperEnabledPolicy, g gVar) throws IOException {
            switch (paperEnabledPolicy) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case ENABLED:
                    gVar.b(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
                    break;
                case UNSPECIFIED:
                    gVar.b("unspecified");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperEnabledPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperEnabledPolicy paperEnabledPolicy;
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
                paperEnabledPolicy = PaperEnabledPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                paperEnabledPolicy = PaperEnabledPolicy.ENABLED;
            } else if ("unspecified".equals(tag)) {
                paperEnabledPolicy = PaperEnabledPolicy.UNSPECIFIED;
            } else {
                paperEnabledPolicy = PaperEnabledPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperEnabledPolicy;
        }
    }
}
