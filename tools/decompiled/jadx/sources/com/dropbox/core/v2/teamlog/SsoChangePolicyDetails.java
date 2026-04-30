package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.SsoPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SsoChangePolicyDetails {
    protected final SsoPolicy newValue;
    protected final SsoPolicy previousValue;

    public SsoChangePolicyDetails(SsoPolicy ssoPolicy, SsoPolicy ssoPolicy2) {
        if (ssoPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = ssoPolicy;
        this.previousValue = ssoPolicy2;
    }

    public SsoChangePolicyDetails(SsoPolicy ssoPolicy) {
        this(ssoPolicy, null);
    }

    public SsoPolicy getNewValue() {
        return this.newValue;
    }

    public SsoPolicy getPreviousValue() {
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
            SsoChangePolicyDetails ssoChangePolicyDetails = (SsoChangePolicyDetails) obj;
            if (this.newValue == ssoChangePolicyDetails.newValue || this.newValue.equals(ssoChangePolicyDetails.newValue)) {
                if (this.previousValue == ssoChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(ssoChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SsoChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoChangePolicyDetails ssoChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            SsoPolicy.Serializer.INSTANCE.serialize(ssoChangePolicyDetails.newValue, gVar);
            if (ssoChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SsoPolicy.Serializer.INSTANCE).serialize(ssoChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SsoPolicy ssoPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SsoPolicy ssoPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        ssoPolicyDeserialize = SsoPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        ssoPolicy = (SsoPolicy) StoneSerializers.nullable(SsoPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (ssoPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SsoChangePolicyDetails ssoChangePolicyDetails = new SsoChangePolicyDetails(ssoPolicyDeserialize, ssoPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
