package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.PaperDeploymentPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperChangeDeploymentPolicyDetails {
    protected final PaperDeploymentPolicy newValue;
    protected final PaperDeploymentPolicy previousValue;

    public PaperChangeDeploymentPolicyDetails(PaperDeploymentPolicy paperDeploymentPolicy, PaperDeploymentPolicy paperDeploymentPolicy2) {
        if (paperDeploymentPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperDeploymentPolicy;
        this.previousValue = paperDeploymentPolicy2;
    }

    public PaperChangeDeploymentPolicyDetails(PaperDeploymentPolicy paperDeploymentPolicy) {
        this(paperDeploymentPolicy, null);
    }

    public PaperDeploymentPolicy getNewValue() {
        return this.newValue;
    }

    public PaperDeploymentPolicy getPreviousValue() {
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
            PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails = (PaperChangeDeploymentPolicyDetails) obj;
            if (this.newValue == paperChangeDeploymentPolicyDetails.newValue || this.newValue.equals(paperChangeDeploymentPolicyDetails.newValue)) {
                if (this.previousValue == paperChangeDeploymentPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(paperChangeDeploymentPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<PaperChangeDeploymentPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            PaperDeploymentPolicy.Serializer.INSTANCE.serialize(paperChangeDeploymentPolicyDetails.newValue, gVar);
            if (paperChangeDeploymentPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(PaperDeploymentPolicy.Serializer.INSTANCE).serialize(paperChangeDeploymentPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperChangeDeploymentPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperDeploymentPolicy paperDeploymentPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                PaperDeploymentPolicy paperDeploymentPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        paperDeploymentPolicyDeserialize = PaperDeploymentPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        paperDeploymentPolicy = (PaperDeploymentPolicy) StoneSerializers.nullable(PaperDeploymentPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (paperDeploymentPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails = new PaperChangeDeploymentPolicyDetails(paperDeploymentPolicyDeserialize, paperDeploymentPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperChangeDeploymentPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
