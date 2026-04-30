package com.dropbox.core.v2.userscommon;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AccountType {
    BASIC,
    PRO,
    BUSINESS;

    public class Serializer extends UnionSerializer<AccountType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccountType accountType, g gVar) throws IOException {
            switch (accountType) {
                case BASIC:
                    gVar.b("basic");
                    return;
                case PRO:
                    gVar.b("pro");
                    return;
                case BUSINESS:
                    gVar.b("business");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + accountType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccountType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccountType accountType;
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
            if ("basic".equals(tag)) {
                accountType = AccountType.BASIC;
            } else if ("pro".equals(tag)) {
                accountType = AccountType.PRO;
            } else if ("business".equals(tag)) {
                accountType = AccountType.BUSINESS;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accountType;
        }
    }
}
