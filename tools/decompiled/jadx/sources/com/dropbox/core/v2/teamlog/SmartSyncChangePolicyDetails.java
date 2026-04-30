package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SmartSyncPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SmartSyncChangePolicyDetails {
    protected final SmartSyncPolicy newValue;
    protected final SmartSyncPolicy previousValue;

    public SmartSyncChangePolicyDetails(SmartSyncPolicy smartSyncPolicy, SmartSyncPolicy smartSyncPolicy2) {
        if (smartSyncPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = smartSyncPolicy;
        this.previousValue = smartSyncPolicy2;
    }

    public SmartSyncChangePolicyDetails(SmartSyncPolicy smartSyncPolicy) {
        this(smartSyncPolicy, null);
    }

    public SmartSyncPolicy getNewValue() {
        return this.newValue;
    }

    public SmartSyncPolicy getPreviousValue() {
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
            SmartSyncChangePolicyDetails smartSyncChangePolicyDetails = (SmartSyncChangePolicyDetails) obj;
            if (this.newValue == smartSyncChangePolicyDetails.newValue || this.newValue.equals(smartSyncChangePolicyDetails.newValue)) {
                if (this.previousValue == smartSyncChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(smartSyncChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SmartSyncChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SmartSyncChangePolicyDetails smartSyncChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            SmartSyncPolicy.Serializer.INSTANCE.serialize(smartSyncChangePolicyDetails.newValue, gVar);
            if (smartSyncChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).serialize(smartSyncChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SmartSyncChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SmartSyncPolicy smartSyncPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SmartSyncPolicy smartSyncPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        smartSyncPolicyDeserialize = SmartSyncPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        smartSyncPolicy = (SmartSyncPolicy) StoneSerializers.nullable(SmartSyncPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (smartSyncPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SmartSyncChangePolicyDetails smartSyncChangePolicyDetails = new SmartSyncChangePolicyDetails(smartSyncPolicyDeserialize, smartSyncPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return smartSyncChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
