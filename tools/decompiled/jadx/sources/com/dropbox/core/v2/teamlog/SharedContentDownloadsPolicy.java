package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedContentDownloadsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    class Serializer extends UnionSerializer<SharedContentDownloadsPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedContentDownloadsPolicy sharedContentDownloadsPolicy, g gVar) throws IOException {
            switch (sharedContentDownloadsPolicy) {
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
        public SharedContentDownloadsPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedContentDownloadsPolicy sharedContentDownloadsPolicy;
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
                sharedContentDownloadsPolicy = SharedContentDownloadsPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                sharedContentDownloadsPolicy = SharedContentDownloadsPolicy.ENABLED;
            } else {
                sharedContentDownloadsPolicy = SharedContentDownloadsPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedContentDownloadsPolicy;
        }
    }
}
