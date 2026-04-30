package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TokenFromOAuth1Error {
    INVALID_OAUTH1_TOKEN_INFO,
    APP_ID_MISMATCH,
    OTHER;

    class Serializer extends UnionSerializer<TokenFromOAuth1Error> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TokenFromOAuth1Error tokenFromOAuth1Error, g gVar) throws IOException {
            switch (tokenFromOAuth1Error) {
                case INVALID_OAUTH1_TOKEN_INFO:
                    gVar.b("invalid_oauth1_token_info");
                    break;
                case APP_ID_MISMATCH:
                    gVar.b("app_id_mismatch");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TokenFromOAuth1Error deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TokenFromOAuth1Error tokenFromOAuth1Error;
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
            if ("invalid_oauth1_token_info".equals(tag)) {
                tokenFromOAuth1Error = TokenFromOAuth1Error.INVALID_OAUTH1_TOKEN_INFO;
            } else if ("app_id_mismatch".equals(tag)) {
                tokenFromOAuth1Error = TokenFromOAuth1Error.APP_ID_MISMATCH;
            } else {
                tokenFromOAuth1Error = TokenFromOAuth1Error.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return tokenFromOAuth1Error;
        }
    }
}
