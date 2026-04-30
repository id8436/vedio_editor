package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetAccountError {
    NO_ACCOUNT,
    OTHER;

    class Serializer extends UnionSerializer<GetAccountError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetAccountError getAccountError, g gVar) throws IOException {
            switch (getAccountError) {
                case NO_ACCOUNT:
                    gVar.b("no_account");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetAccountError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetAccountError getAccountError;
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
            if ("no_account".equals(tag)) {
                getAccountError = GetAccountError.NO_ACCOUNT;
            } else {
                getAccountError = GetAccountError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getAccountError;
        }
    }
}
