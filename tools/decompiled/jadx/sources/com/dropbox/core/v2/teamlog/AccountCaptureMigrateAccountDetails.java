package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AccountCaptureMigrateAccountDetails {
    protected final String domainName;

    public AccountCaptureMigrateAccountDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'domainName' is null");
        }
        this.domainName = str;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails = (AccountCaptureMigrateAccountDetails) obj;
        return this.domainName == accountCaptureMigrateAccountDetails.domainName || this.domainName.equals(accountCaptureMigrateAccountDetails.domainName);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AccountCaptureMigrateAccountDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("domain_name");
            StoneSerializers.string().serialize(accountCaptureMigrateAccountDetails.domainName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AccountCaptureMigrateAccountDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("domain_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"domain_name\" missing.");
                }
                AccountCaptureMigrateAccountDetails accountCaptureMigrateAccountDetails = new AccountCaptureMigrateAccountDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return accountCaptureMigrateAccountDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
