package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DeviceLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceChangeIpDesktopDetails {
    protected final DeviceLogInfo deviceInfo;

    public DeviceChangeIpDesktopDetails(DeviceLogInfo deviceLogInfo) {
        if (deviceLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'deviceInfo' is null");
        }
        this.deviceInfo = deviceLogInfo;
    }

    public DeviceLogInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceInfo});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails = (DeviceChangeIpDesktopDetails) obj;
        return this.deviceInfo == deviceChangeIpDesktopDetails.deviceInfo || this.deviceInfo.equals(deviceChangeIpDesktopDetails.deviceInfo);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DeviceChangeIpDesktopDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("device_info");
            DeviceLogInfo.Serializer.INSTANCE.serialize(deviceChangeIpDesktopDetails.deviceInfo, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceChangeIpDesktopDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DeviceLogInfo deviceLogInfoDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("device_info".equals(strD)) {
                        deviceLogInfoDeserialize = DeviceLogInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (deviceLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"device_info\" missing.");
                }
                DeviceChangeIpDesktopDetails deviceChangeIpDesktopDetails = new DeviceChangeIpDesktopDetails(deviceLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceChangeIpDesktopDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
