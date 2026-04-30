package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AccountCapturePolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AccountCaptureChangePolicyDetails {
    protected final AccountCapturePolicy newValue;
    protected final AccountCapturePolicy previousValue;

    public AccountCaptureChangePolicyDetails(AccountCapturePolicy accountCapturePolicy, AccountCapturePolicy accountCapturePolicy2) {
        if (accountCapturePolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = accountCapturePolicy;
        this.previousValue = accountCapturePolicy2;
    }

    public AccountCaptureChangePolicyDetails(AccountCapturePolicy accountCapturePolicy) {
        this(accountCapturePolicy, null);
    }

    public AccountCapturePolicy getNewValue() {
        return this.newValue;
    }

    public AccountCapturePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails = (AccountCaptureChangePolicyDetails) obj;
            if (this.newValue == accountCaptureChangePolicyDetails.newValue || this.newValue.equals(accountCaptureChangePolicyDetails.newValue)) {
                if (this.previousValue == accountCaptureChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(accountCaptureChangePolicyDetails.previousValue)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AccountCaptureChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            AccountCapturePolicy.Serializer.INSTANCE.serialize(accountCaptureChangePolicyDetails.newValue, gVar);
            if (accountCaptureChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(AccountCapturePolicy.Serializer.INSTANCE).serialize(accountCaptureChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AccountCaptureChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AccountCapturePolicy accountCapturePolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                AccountCapturePolicy accountCapturePolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        accountCapturePolicyDeserialize = AccountCapturePolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        accountCapturePolicy = (AccountCapturePolicy) StoneSerializers.nullable(AccountCapturePolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (accountCapturePolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                AccountCaptureChangePolicyDetails accountCaptureChangePolicyDetails = new AccountCaptureChangePolicyDetails(accountCapturePolicyDeserialize, accountCapturePolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return accountCaptureChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
