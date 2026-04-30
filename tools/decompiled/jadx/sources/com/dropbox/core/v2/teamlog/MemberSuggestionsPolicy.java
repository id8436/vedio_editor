package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MemberSuggestionsPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    class Serializer extends UnionSerializer<MemberSuggestionsPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberSuggestionsPolicy memberSuggestionsPolicy, g gVar) throws IOException {
            switch (memberSuggestionsPolicy) {
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
        public MemberSuggestionsPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MemberSuggestionsPolicy memberSuggestionsPolicy;
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
                memberSuggestionsPolicy = MemberSuggestionsPolicy.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                memberSuggestionsPolicy = MemberSuggestionsPolicy.ENABLED;
            } else {
                memberSuggestionsPolicy = MemberSuggestionsPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return memberSuggestionsPolicy;
        }
    }
}
