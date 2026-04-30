package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DeviceLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceUnlinkDetails {
    protected final boolean deleteData;
    protected final DeviceLogInfo deviceInfo;

    public DeviceUnlinkDetails(DeviceLogInfo deviceLogInfo, boolean z) {
        if (deviceLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'deviceInfo' is null");
        }
        this.deviceInfo = deviceLogInfo;
        this.deleteData = z;
    }

    public DeviceLogInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public boolean getDeleteData() {
        return this.deleteData;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceInfo, Boolean.valueOf(this.deleteData)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceUnlinkDetails deviceUnlinkDetails = (DeviceUnlinkDetails) obj;
            return (this.deviceInfo == deviceUnlinkDetails.deviceInfo || this.deviceInfo.equals(deviceUnlinkDetails.deviceInfo)) && this.deleteData == deviceUnlinkDetails.deleteData;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DeviceUnlinkDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceUnlinkDetails deviceUnlinkDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("device_info");
            DeviceLogInfo.Serializer.INSTANCE.serialize(deviceUnlinkDetails.deviceInfo, gVar);
            gVar.a("delete_data");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(deviceUnlinkDetails.deleteData), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceUnlinkDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            DeviceLogInfo deviceLogInfoDeserialize;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                DeviceLogInfo deviceLogInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("device_info".equals(strD)) {
                        Boolean bool2 = bool;
                        deviceLogInfoDeserialize = DeviceLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("delete_data".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        deviceLogInfoDeserialize = deviceLogInfo;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        deviceLogInfoDeserialize = deviceLogInfo;
                    }
                    deviceLogInfo = deviceLogInfoDeserialize;
                    bool = boolDeserialize;
                }
                if (deviceLogInfo == null) {
                    throw new j(kVar, "Required field \"device_info\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"delete_data\" missing.");
                }
                DeviceUnlinkDetails deviceUnlinkDetails = new DeviceUnlinkDetails(deviceLogInfo, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceUnlinkDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
