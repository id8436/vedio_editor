package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GoogleSsoPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    class Serializer extends UnionSerializer<GoogleSsoPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GoogleSsoPolicy googleSsoPolicy, g gVar) throws IOException {
            switch (googleSsoPolicy) {
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
        public GoogleSsoPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GoogleSsoPolicy googleSsoPolicy;
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
                googleSsoPolicy = GoogleSsoPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                googleSsoPolicy = GoogleSsoPolicy.ENABLED;
            } else {
                googleSsoPolicy = GoogleSsoPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return googleSsoPolicy;
        }
    }
}
