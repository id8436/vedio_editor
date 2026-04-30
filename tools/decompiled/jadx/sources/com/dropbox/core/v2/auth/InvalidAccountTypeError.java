package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum InvalidAccountTypeError {
    ENDPOINT,
    FEATURE,
    OTHER;

    public class Serializer extends UnionSerializer<InvalidAccountTypeError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InvalidAccountTypeError invalidAccountTypeError, g gVar) throws IOException {
            switch (invalidAccountTypeError) {
                case ENDPOINT:
                    gVar.b("endpoint");
                    break;
                case FEATURE:
                    gVar.b("feature");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public InvalidAccountTypeError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            InvalidAccountTypeError invalidAccountTypeError;
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
            if ("endpoint".equals(tag)) {
                invalidAccountTypeError = InvalidAccountTypeError.ENDPOINT;
            } else if ("feature".equals(tag)) {
                invalidAccountTypeError = InvalidAccountTypeError.FEATURE;
            } else {
                invalidAccountTypeError = InvalidAccountTypeError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return invalidAccountTypeError;
        }
    }
}
