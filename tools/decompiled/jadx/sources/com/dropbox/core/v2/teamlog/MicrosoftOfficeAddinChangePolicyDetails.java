package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.MicrosoftOfficeAddinPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MicrosoftOfficeAddinChangePolicyDetails {
    protected final MicrosoftOfficeAddinPolicy newValue;
    protected final MicrosoftOfficeAddinPolicy previousValue;

    public MicrosoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy, MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy2) {
        if (microsoftOfficeAddinPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = microsoftOfficeAddinPolicy;
        this.previousValue = microsoftOfficeAddinPolicy2;
    }

    public MicrosoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy) {
        this(microsoftOfficeAddinPolicy, null);
    }

    public MicrosoftOfficeAddinPolicy getNewValue() {
        return this.newValue;
    }

    public MicrosoftOfficeAddinPolicy getPreviousValue() {
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
            MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails = (MicrosoftOfficeAddinChangePolicyDetails) obj;
            if (this.newValue == microsoftOfficeAddinChangePolicyDetails.newValue || this.newValue.equals(microsoftOfficeAddinChangePolicyDetails.newValue)) {
                if (this.previousValue == microsoftOfficeAddinChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(microsoftOfficeAddinChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MicrosoftOfficeAddinChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            MicrosoftOfficeAddinPolicy.Serializer.INSTANCE.serialize(microsoftOfficeAddinChangePolicyDetails.newValue, gVar);
            if (microsoftOfficeAddinChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(MicrosoftOfficeAddinPolicy.Serializer.INSTANCE).serialize(microsoftOfficeAddinChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MicrosoftOfficeAddinChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        microsoftOfficeAddinPolicyDeserialize = MicrosoftOfficeAddinPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        microsoftOfficeAddinPolicy = (MicrosoftOfficeAddinPolicy) StoneSerializers.nullable(MicrosoftOfficeAddinPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (microsoftOfficeAddinPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails = new MicrosoftOfficeAddinChangePolicyDetails(microsoftOfficeAddinPolicyDeserialize, microsoftOfficeAddinPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return microsoftOfficeAddinChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
