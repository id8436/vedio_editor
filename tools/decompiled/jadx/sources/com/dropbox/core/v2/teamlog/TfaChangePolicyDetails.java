package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.TwoStepVerificationPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TfaChangePolicyDetails {
    protected final TwoStepVerificationPolicy newValue;
    protected final TwoStepVerificationPolicy previousValue;

    public TfaChangePolicyDetails(TwoStepVerificationPolicy twoStepVerificationPolicy, TwoStepVerificationPolicy twoStepVerificationPolicy2) {
        if (twoStepVerificationPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = twoStepVerificationPolicy;
        this.previousValue = twoStepVerificationPolicy2;
    }

    public TfaChangePolicyDetails(TwoStepVerificationPolicy twoStepVerificationPolicy) {
        this(twoStepVerificationPolicy, null);
    }

    public TwoStepVerificationPolicy getNewValue() {
        return this.newValue;
    }

    public TwoStepVerificationPolicy getPreviousValue() {
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
            TfaChangePolicyDetails tfaChangePolicyDetails = (TfaChangePolicyDetails) obj;
            if (this.newValue == tfaChangePolicyDetails.newValue || this.newValue.equals(tfaChangePolicyDetails.newValue)) {
                if (this.previousValue == tfaChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(tfaChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<TfaChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TfaChangePolicyDetails tfaChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            TwoStepVerificationPolicy.Serializer.INSTANCE.serialize(tfaChangePolicyDetails.newValue, gVar);
            if (tfaChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(TwoStepVerificationPolicy.Serializer.INSTANCE).serialize(tfaChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TfaChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TwoStepVerificationPolicy twoStepVerificationPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TwoStepVerificationPolicy twoStepVerificationPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        twoStepVerificationPolicyDeserialize = TwoStepVerificationPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        twoStepVerificationPolicy = (TwoStepVerificationPolicy) StoneSerializers.nullable(TwoStepVerificationPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (twoStepVerificationPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                TfaChangePolicyDetails tfaChangePolicyDetails = new TfaChangePolicyDetails(twoStepVerificationPolicyDeserialize, twoStepVerificationPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return tfaChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
