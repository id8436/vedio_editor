package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TokenGetAuthenticatedAdminError {
    MAPPING_NOT_FOUND,
    ADMIN_NOT_ACTIVE,
    OTHER;

    class Serializer extends UnionSerializer<TokenGetAuthenticatedAdminError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TokenGetAuthenticatedAdminError tokenGetAuthenticatedAdminError, g gVar) throws IOException {
            switch (tokenGetAuthenticatedAdminError) {
                case MAPPING_NOT_FOUND:
                    gVar.b("mapping_not_found");
                    break;
                case ADMIN_NOT_ACTIVE:
                    gVar.b("admin_not_active");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TokenGetAuthenticatedAdminError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TokenGetAuthenticatedAdminError tokenGetAuthenticatedAdminError;
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
            if ("mapping_not_found".equals(tag)) {
                tokenGetAuthenticatedAdminError = TokenGetAuthenticatedAdminError.MAPPING_NOT_FOUND;
            } else if ("admin_not_active".equals(tag)) {
                tokenGetAuthenticatedAdminError = TokenGetAuthenticatedAdminError.ADMIN_NOT_ACTIVE;
            } else {
                tokenGetAuthenticatedAdminError = TokenGetAuthenticatedAdminError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return tokenGetAuthenticatedAdminError;
        }
    }
}
