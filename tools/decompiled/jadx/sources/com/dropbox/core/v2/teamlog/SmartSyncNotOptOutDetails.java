package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SmartSyncOptOutPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SmartSyncNotOptOutDetails {
    protected final SmartSyncOptOutPolicy newValue;
    protected final SmartSyncOptOutPolicy previousValue;

    public SmartSyncNotOptOutDetails(SmartSyncOptOutPolicy smartSyncOptOutPolicy, SmartSyncOptOutPolicy smartSyncOptOutPolicy2) {
        if (smartSyncOptOutPolicy == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = smartSyncOptOutPolicy;
        if (smartSyncOptOutPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = smartSyncOptOutPolicy2;
    }

    public SmartSyncOptOutPolicy getPreviousValue() {
        return this.previousValue;
    }

    public SmartSyncOptOutPolicy getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SmartSyncNotOptOutDetails smartSyncNotOptOutDetails = (SmartSyncNotOptOutDetails) obj;
            return (this.previousValue == smartSyncNotOptOutDetails.previousValue || this.previousValue.equals(smartSyncNotOptOutDetails.previousValue)) && (this.newValue == smartSyncNotOptOutDetails.newValue || this.newValue.equals(smartSyncNotOptOutDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SmartSyncNotOptOutDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SmartSyncNotOptOutDetails smartSyncNotOptOutDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            SmartSyncOptOutPolicy.Serializer.INSTANCE.serialize(smartSyncNotOptOutDetails.previousValue, gVar);
            gVar.a("new_value");
            SmartSyncOptOutPolicy.Serializer.INSTANCE.serialize(smartSyncNotOptOutDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SmartSyncNotOptOutDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SmartSyncOptOutPolicy smartSyncOptOutPolicyDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SmartSyncOptOutPolicy smartSyncOptOutPolicyDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        smartSyncOptOutPolicyDeserialize2 = SmartSyncOptOutPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        smartSyncOptOutPolicyDeserialize = SmartSyncOptOutPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (smartSyncOptOutPolicyDeserialize2 == null) {
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (smartSyncOptOutPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SmartSyncNotOptOutDetails smartSyncNotOptOutDetails = new SmartSyncNotOptOutDetails(smartSyncOptOutPolicyDeserialize2, smartSyncOptOutPolicyDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return smartSyncNotOptOutDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
