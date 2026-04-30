package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.ExtendedVersionHistoryPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ExtendedVersionHistoryChangePolicyDetails {
    protected final ExtendedVersionHistoryPolicy newValue;
    protected final ExtendedVersionHistoryPolicy previousValue;

    public ExtendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy, ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy2) {
        if (extendedVersionHistoryPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = extendedVersionHistoryPolicy;
        this.previousValue = extendedVersionHistoryPolicy2;
    }

    public ExtendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy) {
        this(extendedVersionHistoryPolicy, null);
    }

    public ExtendedVersionHistoryPolicy getNewValue() {
        return this.newValue;
    }

    public ExtendedVersionHistoryPolicy getPreviousValue() {
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
            ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails = (ExtendedVersionHistoryChangePolicyDetails) obj;
            if (this.newValue == extendedVersionHistoryChangePolicyDetails.newValue || this.newValue.equals(extendedVersionHistoryChangePolicyDetails.newValue)) {
                if (this.previousValue == extendedVersionHistoryChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(extendedVersionHistoryChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<ExtendedVersionHistoryChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            ExtendedVersionHistoryPolicy.Serializer.INSTANCE.serialize(extendedVersionHistoryChangePolicyDetails.newValue, gVar);
            if (extendedVersionHistoryChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(ExtendedVersionHistoryPolicy.Serializer.INSTANCE).serialize(extendedVersionHistoryChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ExtendedVersionHistoryChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ExtendedVersionHistoryPolicy extendedVersionHistoryPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        extendedVersionHistoryPolicyDeserialize = ExtendedVersionHistoryPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        extendedVersionHistoryPolicy = (ExtendedVersionHistoryPolicy) StoneSerializers.nullable(ExtendedVersionHistoryPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (extendedVersionHistoryPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails = new ExtendedVersionHistoryChangePolicyDetails(extendedVersionHistoryPolicyDeserialize, extendedVersionHistoryPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return extendedVersionHistoryChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
