package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DeviceUnlinkPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceApprovalsChangeUnlinkActionDetails {
    protected final DeviceUnlinkPolicy newValue;
    protected final DeviceUnlinkPolicy previousValue;

    public DeviceApprovalsChangeUnlinkActionDetails(DeviceUnlinkPolicy deviceUnlinkPolicy, DeviceUnlinkPolicy deviceUnlinkPolicy2) {
        this.newValue = deviceUnlinkPolicy;
        this.previousValue = deviceUnlinkPolicy2;
    }

    public DeviceApprovalsChangeUnlinkActionDetails() {
        this(null, null);
    }

    public DeviceUnlinkPolicy getNewValue() {
        return this.newValue;
    }

    public DeviceUnlinkPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected DeviceUnlinkPolicy newValue = null;
        protected DeviceUnlinkPolicy previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(DeviceUnlinkPolicy deviceUnlinkPolicy) {
            this.newValue = deviceUnlinkPolicy;
            return this;
        }

        public Builder withPreviousValue(DeviceUnlinkPolicy deviceUnlinkPolicy) {
            this.previousValue = deviceUnlinkPolicy;
            return this;
        }

        public DeviceApprovalsChangeUnlinkActionDetails build() {
            return new DeviceApprovalsChangeUnlinkActionDetails(this.newValue, this.previousValue);
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
            DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails = (DeviceApprovalsChangeUnlinkActionDetails) obj;
            if (this.newValue == deviceApprovalsChangeUnlinkActionDetails.newValue || (this.newValue != null && this.newValue.equals(deviceApprovalsChangeUnlinkActionDetails.newValue))) {
                if (this.previousValue == deviceApprovalsChangeUnlinkActionDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(deviceApprovalsChangeUnlinkActionDetails.previousValue)) {
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

    class Serializer extends StructSerializer<DeviceApprovalsChangeUnlinkActionDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (deviceApprovalsChangeUnlinkActionDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(DeviceUnlinkPolicy.Serializer.INSTANCE).serialize(deviceApprovalsChangeUnlinkActionDetails.newValue, gVar);
            }
            if (deviceApprovalsChangeUnlinkActionDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(DeviceUnlinkPolicy.Serializer.INSTANCE).serialize(deviceApprovalsChangeUnlinkActionDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceApprovalsChangeUnlinkActionDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DeviceUnlinkPolicy deviceUnlinkPolicy;
            DeviceUnlinkPolicy deviceUnlinkPolicy2;
            DeviceUnlinkPolicy deviceUnlinkPolicy3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                DeviceUnlinkPolicy deviceUnlinkPolicy4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        DeviceUnlinkPolicy deviceUnlinkPolicy5 = deviceUnlinkPolicy3;
                        deviceUnlinkPolicy2 = (DeviceUnlinkPolicy) StoneSerializers.nullable(DeviceUnlinkPolicy.Serializer.INSTANCE).deserialize(kVar);
                        deviceUnlinkPolicy = deviceUnlinkPolicy5;
                    } else if ("previous_value".equals(strD)) {
                        deviceUnlinkPolicy = (DeviceUnlinkPolicy) StoneSerializers.nullable(DeviceUnlinkPolicy.Serializer.INSTANCE).deserialize(kVar);
                        deviceUnlinkPolicy2 = deviceUnlinkPolicy4;
                    } else {
                        skipValue(kVar);
                        deviceUnlinkPolicy = deviceUnlinkPolicy3;
                        deviceUnlinkPolicy2 = deviceUnlinkPolicy4;
                    }
                    deviceUnlinkPolicy4 = deviceUnlinkPolicy2;
                    deviceUnlinkPolicy3 = deviceUnlinkPolicy;
                }
                DeviceApprovalsChangeUnlinkActionDetails deviceApprovalsChangeUnlinkActionDetails = new DeviceApprovalsChangeUnlinkActionDetails(deviceUnlinkPolicy4, deviceUnlinkPolicy3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceApprovalsChangeUnlinkActionDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
