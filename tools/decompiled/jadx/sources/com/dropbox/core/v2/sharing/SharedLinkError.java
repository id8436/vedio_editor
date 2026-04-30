package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedLinkError {
    SHARED_LINK_NOT_FOUND,
    SHARED_LINK_ACCESS_DENIED,
    UNSUPPORTED_LINK_TYPE,
    OTHER;

    class Serializer extends UnionSerializer<SharedLinkError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkError sharedLinkError, g gVar) throws IOException {
            switch (sharedLinkError) {
                case SHARED_LINK_NOT_FOUND:
                    gVar.b("shared_link_not_found");
                    break;
                case SHARED_LINK_ACCESS_DENIED:
                    gVar.b("shared_link_access_denied");
                    break;
                case UNSUPPORTED_LINK_TYPE:
                    gVar.b("unsupported_link_type");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedLinkError sharedLinkError;
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
            if ("shared_link_not_found".equals(tag)) {
                sharedLinkError = SharedLinkError.SHARED_LINK_NOT_FOUND;
            } else if ("shared_link_access_denied".equals(tag)) {
                sharedLinkError = SharedLinkError.SHARED_LINK_ACCESS_DENIED;
            } else if ("unsupported_link_type".equals(tag)) {
                sharedLinkError = SharedLinkError.UNSUPPORTED_LINK_TYPE;
            } else {
                sharedLinkError = SharedLinkError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedLinkError;
        }
    }
}
