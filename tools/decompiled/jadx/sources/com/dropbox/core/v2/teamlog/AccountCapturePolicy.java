package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AccountCapturePolicy {
    DISABLED,
    INVITED_USERS,
    ALL_USERS,
    OTHER;

    class Serializer extends UnionSerializer<AccountCapturePolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccountCapturePolicy accountCapturePolicy, g gVar) throws IOException {
            switch (accountCapturePolicy) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case INVITED_USERS:
                    gVar.b("invited_users");
                    break;
                case ALL_USERS:
                    gVar.b("all_users");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccountCapturePolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccountCapturePolicy accountCapturePolicy;
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
                accountCapturePolicy = AccountCapturePolicy.DISABLED;
            } else if ("invited_users".equals(tag)) {
                accountCapturePolicy = AccountCapturePolicy.INVITED_USERS;
            } else if ("all_users".equals(tag)) {
                accountCapturePolicy = AccountCapturePolicy.ALL_USERS;
            } else {
                accountCapturePolicy = AccountCapturePolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accountCapturePolicy;
        }
    }
}
