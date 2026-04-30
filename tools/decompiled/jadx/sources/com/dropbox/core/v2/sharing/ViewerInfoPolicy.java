package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ViewerInfoPolicy {
    ENABLED,
    DISABLED,
    OTHER;

    class Serializer extends UnionSerializer<ViewerInfoPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ViewerInfoPolicy viewerInfoPolicy, g gVar) throws IOException {
            switch (viewerInfoPolicy) {
                case ENABLED:
                    gVar.b(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
                    break;
                case DISABLED:
                    gVar.b("disabled");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ViewerInfoPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ViewerInfoPolicy viewerInfoPolicy;
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
            if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                viewerInfoPolicy = ViewerInfoPolicy.ENABLED;
            } else if ("disabled".equals(tag)) {
                viewerInfoPolicy = ViewerInfoPolicy.DISABLED;
            } else {
                viewerInfoPolicy = ViewerInfoPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return viewerInfoPolicy;
        }
    }
}
