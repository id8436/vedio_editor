package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MicrosoftOfficeAddinPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    class Serializer extends UnionSerializer<MicrosoftOfficeAddinPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy, g gVar) throws IOException {
            switch (microsoftOfficeAddinPolicy) {
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
        public MicrosoftOfficeAddinPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy;
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
                microsoftOfficeAddinPolicy = MicrosoftOfficeAddinPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                microsoftOfficeAddinPolicy = MicrosoftOfficeAddinPolicy.ENABLED;
            } else {
                microsoftOfficeAddinPolicy = MicrosoftOfficeAddinPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return microsoftOfficeAddinPolicy;
        }
    }
}
