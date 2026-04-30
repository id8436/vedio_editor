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
public class DeviceDeleteOnUnlinkFailDetails {
    protected final DeviceLogInfo deviceInfo;
    protected final long numFailures;

    public DeviceDeleteOnUnlinkFailDetails(DeviceLogInfo deviceLogInfo, long j) {
        if (deviceLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'deviceInfo' is null");
        }
        this.deviceInfo = deviceLogInfo;
        this.numFailures = j;
    }

    public DeviceLogInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public long getNumFailures() {
        return this.numFailures;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceInfo, Long.valueOf(this.numFailures)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails = (DeviceDeleteOnUnlinkFailDetails) obj;
            return (this.deviceInfo == deviceDeleteOnUnlinkFailDetails.deviceInfo || this.deviceInfo.equals(deviceDeleteOnUnlinkFailDetails.deviceInfo)) && this.numFailures == deviceDeleteOnUnlinkFailDetails.numFailures;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DeviceDeleteOnUnlinkFailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("device_info");
            DeviceLogInfo.Serializer.INSTANCE.serialize(deviceDeleteOnUnlinkFailDetails.deviceInfo, gVar);
            gVar.a("num_failures");
            StoneSerializers.int64().serialize(Long.valueOf(deviceDeleteOnUnlinkFailDetails.numFailures), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceDeleteOnUnlinkFailDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            DeviceLogInfo deviceLogInfoDeserialize;
            Long l = null;
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
                        Long l2 = l;
                        deviceLogInfoDeserialize = DeviceLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("num_failures".equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                        deviceLogInfoDeserialize = deviceLogInfo;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        deviceLogInfoDeserialize = deviceLogInfo;
                    }
                    deviceLogInfo = deviceLogInfoDeserialize;
                    l = lDeserialize;
                }
                if (deviceLogInfo == null) {
                    throw new j(kVar, "Required field \"device_info\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"num_failures\" missing.");
                }
                DeviceDeleteOnUnlinkFailDetails deviceDeleteOnUnlinkFailDetails = new DeviceDeleteOnUnlinkFailDetails(deviceLogInfo, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceDeleteOnUnlinkFailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
