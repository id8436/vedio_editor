package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DeviceLogInfo;
import com.dropbox.core.v2.teamlog.DeviceType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceLinkFailDetails {
    protected final DeviceLogInfo deviceInfo;
    protected final DeviceType deviceType;

    public DeviceLinkFailDetails(DeviceType deviceType, DeviceLogInfo deviceLogInfo) {
        this.deviceInfo = deviceLogInfo;
        if (deviceType == null) {
            throw new IllegalArgumentException("Required value for 'deviceType' is null");
        }
        this.deviceType = deviceType;
    }

    public DeviceLinkFailDetails(DeviceType deviceType) {
        this(deviceType, null);
    }

    public DeviceType getDeviceType() {
        return this.deviceType;
    }

    public DeviceLogInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceInfo, this.deviceType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceLinkFailDetails deviceLinkFailDetails = (DeviceLinkFailDetails) obj;
            if (this.deviceType == deviceLinkFailDetails.deviceType || this.deviceType.equals(deviceLinkFailDetails.deviceType)) {
                if (this.deviceInfo == deviceLinkFailDetails.deviceInfo) {
                    return true;
                }
                if (this.deviceInfo != null && this.deviceInfo.equals(deviceLinkFailDetails.deviceInfo)) {
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

    class Serializer extends StructSerializer<DeviceLinkFailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceLinkFailDetails deviceLinkFailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("device_type");
            DeviceType.Serializer.INSTANCE.serialize(deviceLinkFailDetails.deviceType, gVar);
            if (deviceLinkFailDetails.deviceInfo != null) {
                gVar.a("device_info");
                StoneSerializers.nullableStruct(DeviceLogInfo.Serializer.INSTANCE).serialize(deviceLinkFailDetails.deviceInfo, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceLinkFailDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DeviceLogInfo deviceLogInfo = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                DeviceType deviceTypeDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("device_type".equals(strD)) {
                        deviceTypeDeserialize = DeviceType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("device_info".equals(strD)) {
                        deviceLogInfo = (DeviceLogInfo) StoneSerializers.nullableStruct(DeviceLogInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (deviceTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"device_type\" missing.");
                }
                DeviceLinkFailDetails deviceLinkFailDetails = new DeviceLinkFailDetails(deviceTypeDeserialize, deviceLogInfo);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceLinkFailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
