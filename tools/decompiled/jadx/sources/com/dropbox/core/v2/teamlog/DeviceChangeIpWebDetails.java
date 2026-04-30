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
public class DeviceChangeIpWebDetails {
    protected final DeviceLogInfo deviceInfo;
    protected final String userAgent;

    public DeviceChangeIpWebDetails(String str, DeviceLogInfo deviceLogInfo) {
        this.deviceInfo = deviceLogInfo;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'userAgent' is null");
        }
        this.userAgent = str;
    }

    public DeviceChangeIpWebDetails(String str) {
        this(str, null);
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public DeviceLogInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceInfo, this.userAgent});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceChangeIpWebDetails deviceChangeIpWebDetails = (DeviceChangeIpWebDetails) obj;
            if (this.userAgent == deviceChangeIpWebDetails.userAgent || this.userAgent.equals(deviceChangeIpWebDetails.userAgent)) {
                if (this.deviceInfo == deviceChangeIpWebDetails.deviceInfo) {
                    return true;
                }
                if (this.deviceInfo != null && this.deviceInfo.equals(deviceChangeIpWebDetails.deviceInfo)) {
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

    class Serializer extends StructSerializer<DeviceChangeIpWebDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceChangeIpWebDetails deviceChangeIpWebDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user_agent");
            StoneSerializers.string().serialize(deviceChangeIpWebDetails.userAgent, gVar);
            if (deviceChangeIpWebDetails.deviceInfo != null) {
                gVar.a("device_info");
                StoneSerializers.nullableStruct(DeviceLogInfo.Serializer.INSTANCE).serialize(deviceChangeIpWebDetails.deviceInfo, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceChangeIpWebDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DeviceLogInfo deviceLogInfo;
            String strDeserialize;
            DeviceLogInfo deviceLogInfo2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user_agent".equals(strD)) {
                        DeviceLogInfo deviceLogInfo3 = deviceLogInfo2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        deviceLogInfo = deviceLogInfo3;
                    } else if ("device_info".equals(strD)) {
                        deviceLogInfo = (DeviceLogInfo) StoneSerializers.nullableStruct(DeviceLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        deviceLogInfo = deviceLogInfo2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    deviceLogInfo2 = deviceLogInfo;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"user_agent\" missing.");
                }
                DeviceChangeIpWebDetails deviceChangeIpWebDetails = new DeviceChangeIpWebDetails(str, deviceLogInfo2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceChangeIpWebDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
