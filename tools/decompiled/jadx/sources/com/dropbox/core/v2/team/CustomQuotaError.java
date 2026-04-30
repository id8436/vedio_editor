package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum CustomQuotaError {
    TOO_MANY_USERS,
    OTHER;

    class Serializer extends UnionSerializer<CustomQuotaError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(CustomQuotaError customQuotaError, g gVar) throws IOException {
            switch (customQuotaError) {
                case TOO_MANY_USERS:
                    gVar.b("too_many_users");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public CustomQuotaError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            CustomQuotaError customQuotaError;
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
            if ("too_many_users".equals(tag)) {
                customQuotaError = CustomQuotaError.TOO_MANY_USERS;
            } else {
                customQuotaError = CustomQuotaError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return customQuotaError;
        }
    }
}
