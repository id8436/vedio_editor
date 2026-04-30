package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TwoAccountPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TwoAccountChangePolicyDetails {
    protected final TwoAccountPolicy newValue;
    protected final TwoAccountPolicy previousValue;

    public TwoAccountChangePolicyDetails(TwoAccountPolicy twoAccountPolicy, TwoAccountPolicy twoAccountPolicy2) {
        if (twoAccountPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = twoAccountPolicy;
        this.previousValue = twoAccountPolicy2;
    }

    public TwoAccountChangePolicyDetails(TwoAccountPolicy twoAccountPolicy) {
        this(twoAccountPolicy, null);
    }

    public TwoAccountPolicy getNewValue() {
        return this.newValue;
    }

    public TwoAccountPolicy getPreviousValue() {
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
            TwoAccountChangePolicyDetails twoAccountChangePolicyDetails = (TwoAccountChangePolicyDetails) obj;
            if (this.newValue == twoAccountChangePolicyDetails.newValue || this.newValue.equals(twoAccountChangePolicyDetails.newValue)) {
                if (this.previousValue == twoAccountChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(twoAccountChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<TwoAccountChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TwoAccountChangePolicyDetails twoAccountChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            TwoAccountPolicy.Serializer.INSTANCE.serialize(twoAccountChangePolicyDetails.newValue, gVar);
            if (twoAccountChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(TwoAccountPolicy.Serializer.INSTANCE).serialize(twoAccountChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TwoAccountChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TwoAccountPolicy twoAccountPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TwoAccountPolicy twoAccountPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        twoAccountPolicyDeserialize = TwoAccountPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        twoAccountPolicy = (TwoAccountPolicy) StoneSerializers.nullable(TwoAccountPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (twoAccountPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                TwoAccountChangePolicyDetails twoAccountChangePolicyDetails = new TwoAccountChangePolicyDetails(twoAccountPolicyDeserialize, twoAccountPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return twoAccountChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
