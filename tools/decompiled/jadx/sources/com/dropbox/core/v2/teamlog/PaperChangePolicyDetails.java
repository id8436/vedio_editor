package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.PaperEnabledPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperChangePolicyDetails {
    protected final PaperEnabledPolicy newValue;
    protected final PaperEnabledPolicy previousValue;

    public PaperChangePolicyDetails(PaperEnabledPolicy paperEnabledPolicy, PaperEnabledPolicy paperEnabledPolicy2) {
        if (paperEnabledPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperEnabledPolicy;
        this.previousValue = paperEnabledPolicy2;
    }

    public PaperChangePolicyDetails(PaperEnabledPolicy paperEnabledPolicy) {
        this(paperEnabledPolicy, null);
    }

    public PaperEnabledPolicy getNewValue() {
        return this.newValue;
    }

    public PaperEnabledPolicy getPreviousValue() {
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
            PaperChangePolicyDetails paperChangePolicyDetails = (PaperChangePolicyDetails) obj;
            if (this.newValue == paperChangePolicyDetails.newValue || this.newValue.equals(paperChangePolicyDetails.newValue)) {
                if (this.previousValue == paperChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(paperChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<PaperChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperChangePolicyDetails paperChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            PaperEnabledPolicy.Serializer.INSTANCE.serialize(paperChangePolicyDetails.newValue, gVar);
            if (paperChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(PaperEnabledPolicy.Serializer.INSTANCE).serialize(paperChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperEnabledPolicy paperEnabledPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                PaperEnabledPolicy paperEnabledPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        paperEnabledPolicyDeserialize = PaperEnabledPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        paperEnabledPolicy = (PaperEnabledPolicy) StoneSerializers.nullable(PaperEnabledPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (paperEnabledPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                PaperChangePolicyDetails paperChangePolicyDetails = new PaperChangePolicyDetails(paperEnabledPolicyDeserialize, paperEnabledPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
