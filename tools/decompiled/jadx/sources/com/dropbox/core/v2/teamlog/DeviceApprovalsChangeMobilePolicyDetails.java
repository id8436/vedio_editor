package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DeviceApprovalsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceApprovalsChangeMobilePolicyDetails {
    protected final DeviceApprovalsPolicy newValue;
    protected final DeviceApprovalsPolicy previousValue;

    public DeviceApprovalsChangeMobilePolicyDetails(DeviceApprovalsPolicy deviceApprovalsPolicy, DeviceApprovalsPolicy deviceApprovalsPolicy2) {
        this.newValue = deviceApprovalsPolicy;
        this.previousValue = deviceApprovalsPolicy2;
    }

    public DeviceApprovalsChangeMobilePolicyDetails() {
        this(null, null);
    }

    public DeviceApprovalsPolicy getNewValue() {
        return this.newValue;
    }

    public DeviceApprovalsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected DeviceApprovalsPolicy newValue = null;
        protected DeviceApprovalsPolicy previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(DeviceApprovalsPolicy deviceApprovalsPolicy) {
            this.newValue = deviceApprovalsPolicy;
            return this;
        }

        public Builder withPreviousValue(DeviceApprovalsPolicy deviceApprovalsPolicy) {
            this.previousValue = deviceApprovalsPolicy;
            return this;
        }

        public DeviceApprovalsChangeMobilePolicyDetails build() {
            return new DeviceApprovalsChangeMobilePolicyDetails(this.newValue, this.previousValue);
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
            DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails = (DeviceApprovalsChangeMobilePolicyDetails) obj;
            if (this.newValue == deviceApprovalsChangeMobilePolicyDetails.newValue || (this.newValue != null && this.newValue.equals(deviceApprovalsChangeMobilePolicyDetails.newValue))) {
                if (this.previousValue == deviceApprovalsChangeMobilePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(deviceApprovalsChangeMobilePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<DeviceApprovalsChangeMobilePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (deviceApprovalsChangeMobilePolicyDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.Serializer.INSTANCE).serialize(deviceApprovalsChangeMobilePolicyDetails.newValue, gVar);
            }
            if (deviceApprovalsChangeMobilePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(DeviceApprovalsPolicy.Serializer.INSTANCE).serialize(deviceApprovalsChangeMobilePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceApprovalsChangeMobilePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DeviceApprovalsPolicy deviceApprovalsPolicy;
            DeviceApprovalsPolicy deviceApprovalsPolicy2;
            DeviceApprovalsPolicy deviceApprovalsPolicy3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                DeviceApprovalsPolicy deviceApprovalsPolicy4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        DeviceApprovalsPolicy deviceApprovalsPolicy5 = deviceApprovalsPolicy3;
                        deviceApprovalsPolicy2 = (DeviceApprovalsPolicy) StoneSerializers.nullable(DeviceApprovalsPolicy.Serializer.INSTANCE).deserialize(kVar);
                        deviceApprovalsPolicy = deviceApprovalsPolicy5;
                    } else if ("previous_value".equals(strD)) {
                        deviceApprovalsPolicy = (DeviceApprovalsPolicy) StoneSerializers.nullable(DeviceApprovalsPolicy.Serializer.INSTANCE).deserialize(kVar);
                        deviceApprovalsPolicy2 = deviceApprovalsPolicy4;
                    } else {
                        skipValue(kVar);
                        deviceApprovalsPolicy = deviceApprovalsPolicy3;
                        deviceApprovalsPolicy2 = deviceApprovalsPolicy4;
                    }
                    deviceApprovalsPolicy4 = deviceApprovalsPolicy2;
                    deviceApprovalsPolicy3 = deviceApprovalsPolicy;
                }
                DeviceApprovalsChangeMobilePolicyDetails deviceApprovalsChangeMobilePolicyDetails = new DeviceApprovalsChangeMobilePolicyDetails(deviceApprovalsPolicy4, deviceApprovalsPolicy3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceApprovalsChangeMobilePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
