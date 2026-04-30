package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AccountCaptureAvailability {
    UNAVAILABLE,
    AVAILABLE,
    OTHER;

    class Serializer extends UnionSerializer<AccountCaptureAvailability> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccountCaptureAvailability accountCaptureAvailability, g gVar) throws IOException {
            switch (accountCaptureAvailability) {
                case UNAVAILABLE:
                    gVar.b("unavailable");
                    break;
                case AVAILABLE:
                    gVar.b("available");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccountCaptureAvailability deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccountCaptureAvailability accountCaptureAvailability;
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
            if ("unavailable".equals(tag)) {
                accountCaptureAvailability = AccountCaptureAvailability.UNAVAILABLE;
            } else if ("available".equals(tag)) {
                accountCaptureAvailability = AccountCaptureAvailability.AVAILABLE;
            } else {
                accountCaptureAvailability = AccountCaptureAvailability.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accountCaptureAvailability;
        }
    }
}
