package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.RolloutMethod;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceApprovalsChangeOverageActionDetails {
    protected final RolloutMethod newValue;
    protected final RolloutMethod previousValue;

    public DeviceApprovalsChangeOverageActionDetails(RolloutMethod rolloutMethod, RolloutMethod rolloutMethod2) {
        this.newValue = rolloutMethod;
        this.previousValue = rolloutMethod2;
    }

    public DeviceApprovalsChangeOverageActionDetails() {
        this(null, null);
    }

    public RolloutMethod getNewValue() {
        return this.newValue;
    }

    public RolloutMethod getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected RolloutMethod newValue = null;
        protected RolloutMethod previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(RolloutMethod rolloutMethod) {
            this.newValue = rolloutMethod;
            return this;
        }

        public Builder withPreviousValue(RolloutMethod rolloutMethod) {
            this.previousValue = rolloutMethod;
            return this;
        }

        public DeviceApprovalsChangeOverageActionDetails build() {
            return new DeviceApprovalsChangeOverageActionDetails(this.newValue, this.previousValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails = (DeviceApprovalsChangeOverageActionDetails) obj;
            if (this.newValue == deviceApprovalsChangeOverageActionDetails.newValue || (this.newValue != null && this.newValue.equals(deviceApprovalsChangeOverageActionDetails.newValue))) {
                if (this.previousValue == deviceApprovalsChangeOverageActionDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(deviceApprovalsChangeOverageActionDetails.previousValue)) {
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

    class Serializer extends StructSerializer<DeviceApprovalsChangeOverageActionDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (deviceApprovalsChangeOverageActionDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).serialize(deviceApprovalsChangeOverageActionDetails.newValue, gVar);
            }
            if (deviceApprovalsChangeOverageActionDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).serialize(deviceApprovalsChangeOverageActionDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceApprovalsChangeOverageActionDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            RolloutMethod rolloutMethod;
            RolloutMethod rolloutMethod2;
            RolloutMethod rolloutMethod3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                RolloutMethod rolloutMethod4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        RolloutMethod rolloutMethod5 = rolloutMethod3;
                        rolloutMethod2 = (RolloutMethod) StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).deserialize(kVar);
                        rolloutMethod = rolloutMethod5;
                    } else if ("previous_value".equals(strD)) {
                        rolloutMethod = (RolloutMethod) StoneSerializers.nullable(RolloutMethod.Serializer.INSTANCE).deserialize(kVar);
                        rolloutMethod2 = rolloutMethod4;
                    } else {
                        skipValue(kVar);
                        rolloutMethod = rolloutMethod3;
                        rolloutMethod2 = rolloutMethod4;
                    }
                    rolloutMethod4 = rolloutMethod2;
                    rolloutMethod3 = rolloutMethod;
                }
                DeviceApprovalsChangeOverageActionDetails deviceApprovalsChangeOverageActionDetails = new DeviceApprovalsChangeOverageActionDetails(rolloutMethod4, rolloutMethod3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceApprovalsChangeOverageActionDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
