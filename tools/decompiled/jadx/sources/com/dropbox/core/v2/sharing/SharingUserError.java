package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingUserError {
    EMAIL_UNVERIFIED,
    OTHER;

    class Serializer extends UnionSerializer<SharingUserError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingUserError sharingUserError, g gVar) throws IOException {
            switch (sharingUserError) {
                case EMAIL_UNVERIFIED:
                    gVar.b("email_unverified");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingUserError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingUserError sharingUserError;
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
            if ("email_unverified".equals(tag)) {
                sharingUserError = SharingUserError.EMAIL_UNVERIFIED;
            } else {
                sharingUserError = SharingUserError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingUserError;
        }
    }
}
