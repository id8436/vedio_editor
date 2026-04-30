package com.dropbox.core.v2.teampolicies;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum OfficeAddInPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    public class Serializer extends UnionSerializer<OfficeAddInPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(OfficeAddInPolicy officeAddInPolicy, g gVar) throws IOException {
            switch (officeAddInPolicy) {
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
        public OfficeAddInPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            OfficeAddInPolicy officeAddInPolicy;
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
                officeAddInPolicy = OfficeAddInPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                officeAddInPolicy = OfficeAddInPolicy.ENABLED;
            } else {
                officeAddInPolicy = OfficeAddInPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return officeAddInPolicy;
        }
    }
}
