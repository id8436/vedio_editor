package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AccountCaptureAvailability;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AccountCaptureChangeAvailabilityDetails {
    protected final AccountCaptureAvailability newValue;
    protected final AccountCaptureAvailability previousValue;

    public AccountCaptureChangeAvailabilityDetails(AccountCaptureAvailability accountCaptureAvailability, AccountCaptureAvailability accountCaptureAvailability2) {
        if (accountCaptureAvailability == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = accountCaptureAvailability;
        this.previousValue = accountCaptureAvailability2;
    }

    public AccountCaptureChangeAvailabilityDetails(AccountCaptureAvailability accountCaptureAvailability) {
        this(accountCaptureAvailability, null);
    }

    public AccountCaptureAvailability getNewValue() {
        return this.newValue;
    }

    public AccountCaptureAvailability getPreviousValue() {
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
            AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails = (AccountCaptureChangeAvailabilityDetails) obj;
            if (this.newValue == accountCaptureChangeAvailabilityDetails.newValue || this.newValue.equals(accountCaptureChangeAvailabilityDetails.newValue)) {
                if (this.previousValue == accountCaptureChangeAvailabilityDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(accountCaptureChangeAvailabilityDetails.previousValue)) {
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

    class Serializer extends StructSerializer<AccountCaptureChangeAvailabilityDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            AccountCaptureAvailability.Serializer.INSTANCE.serialize(accountCaptureChangeAvailabilityDetails.newValue, gVar);
            if (accountCaptureChangeAvailabilityDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(AccountCaptureAvailability.Serializer.INSTANCE).serialize(accountCaptureChangeAvailabilityDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AccountCaptureChangeAvailabilityDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AccountCaptureAvailability accountCaptureAvailability = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                AccountCaptureAvailability accountCaptureAvailabilityDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        accountCaptureAvailabilityDeserialize = AccountCaptureAvailability.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        accountCaptureAvailability = (AccountCaptureAvailability) StoneSerializers.nullable(AccountCaptureAvailability.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (accountCaptureAvailabilityDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                AccountCaptureChangeAvailabilityDetails accountCaptureChangeAvailabilityDetails = new AccountCaptureChangeAvailabilityDetails(accountCaptureAvailabilityDeserialize, accountCaptureAvailability);
                if (!z) {
                    expectEndObject(kVar);
                }
                return accountCaptureChangeAvailabilityDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
