package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceLogInfo {
    protected final String appVersion;
    protected final String deviceId;
    protected final String deviceType;
    protected final String displayName;
    protected final String ipAddress;
    protected final Boolean isEmmManaged;
    protected final String lastActivity;
    protected final String macAddress;
    protected final String osVersion;
    protected final String platform;

    public DeviceLogInfo(String str, String str2, Boolean bool, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.deviceId = str;
        this.displayName = str2;
        this.isEmmManaged = bool;
        this.platform = str3;
        this.macAddress = str4;
        this.osVersion = str5;
        this.deviceType = str6;
        this.ipAddress = str7;
        this.lastActivity = str8;
        this.appVersion = str9;
    }

    public DeviceLogInfo() {
        this(null, null, null, null, null, null, null, null, null, null);
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public Boolean getIsEmmManaged() {
        return this.isEmmManaged;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getMacAddress() {
        return this.macAddress;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getDeviceType() {
        return this.deviceType;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getLastActivity() {
        return this.lastActivity;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String deviceId = null;
        protected String displayName = null;
        protected Boolean isEmmManaged = null;
        protected String platform = null;
        protected String macAddress = null;
        protected String osVersion = null;
        protected String deviceType = null;
        protected String ipAddress = null;
        protected String lastActivity = null;
        protected String appVersion = null;

        protected Builder() {
        }

        public Builder withDeviceId(String str) {
            this.deviceId = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withIsEmmManaged(Boolean bool) {
            this.isEmmManaged = bool;
            return this;
        }

        public Builder withPlatform(String str) {
            this.platform = str;
            return this;
        }

        public Builder withMacAddress(String str) {
            this.macAddress = str;
            return this;
        }

        public Builder withOsVersion(String str) {
            this.osVersion = str;
            return this;
        }

        public Builder withDeviceType(String str) {
            this.deviceType = str;
            return this;
        }

        public Builder withIpAddress(String str) {
            this.ipAddress = str;
            return this;
        }

        public Builder withLastActivity(String str) {
            this.lastActivity = str;
            return this;
        }

        public Builder withAppVersion(String str) {
            this.appVersion = str;
            return this;
        }

        public DeviceLogInfo build() {
            return new DeviceLogInfo(this.deviceId, this.displayName, this.isEmmManaged, this.platform, this.macAddress, this.osVersion, this.deviceType, this.ipAddress, this.lastActivity, this.appVersion);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceId, this.displayName, this.isEmmManaged, this.platform, this.macAddress, this.osVersion, this.deviceType, this.ipAddress, this.lastActivity, this.appVersion});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceLogInfo deviceLogInfo = (DeviceLogInfo) obj;
            if ((this.deviceId == deviceLogInfo.deviceId || (this.deviceId != null && this.deviceId.equals(deviceLogInfo.deviceId))) && ((this.displayName == deviceLogInfo.displayName || (this.displayName != null && this.displayName.equals(deviceLogInfo.displayName))) && ((this.isEmmManaged == deviceLogInfo.isEmmManaged || (this.isEmmManaged != null && this.isEmmManaged.equals(deviceLogInfo.isEmmManaged))) && ((this.platform == deviceLogInfo.platform || (this.platform != null && this.platform.equals(deviceLogInfo.platform))) && ((this.macAddress == deviceLogInfo.macAddress || (this.macAddress != null && this.macAddress.equals(deviceLogInfo.macAddress))) && ((this.osVersion == deviceLogInfo.osVersion || (this.osVersion != null && this.osVersion.equals(deviceLogInfo.osVersion))) && ((this.deviceType == deviceLogInfo.deviceType || (this.deviceType != null && this.deviceType.equals(deviceLogInfo.deviceType))) && ((this.ipAddress == deviceLogInfo.ipAddress || (this.ipAddress != null && this.ipAddress.equals(deviceLogInfo.ipAddress))) && (this.lastActivity == deviceLogInfo.lastActivity || (this.lastActivity != null && this.lastActivity.equals(deviceLogInfo.lastActivity))))))))))) {
                if (this.appVersion == deviceLogInfo.appVersion) {
                    return true;
                }
                if (this.appVersion != null && this.appVersion.equals(deviceLogInfo.appVersion)) {
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

    class Serializer extends StructSerializer<DeviceLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceLogInfo deviceLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (deviceLogInfo.deviceId != null) {
                gVar.a("device_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.deviceId, gVar);
            }
            if (deviceLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.displayName, gVar);
            }
            if (deviceLogInfo.isEmmManaged != null) {
                gVar.a("is_emm_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(deviceLogInfo.isEmmManaged, gVar);
            }
            if (deviceLogInfo.platform != null) {
                gVar.a("platform");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.platform, gVar);
            }
            if (deviceLogInfo.macAddress != null) {
                gVar.a("mac_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.macAddress, gVar);
            }
            if (deviceLogInfo.osVersion != null) {
                gVar.a("os_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.osVersion, gVar);
            }
            if (deviceLogInfo.deviceType != null) {
                gVar.a("device_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.deviceType, gVar);
            }
            if (deviceLogInfo.ipAddress != null) {
                gVar.a("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.ipAddress, gVar);
            }
            if (deviceLogInfo.lastActivity != null) {
                gVar.a("last_activity");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.lastActivity, gVar);
            }
            if (deviceLogInfo.appVersion != null) {
                gVar.a("app_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceLogInfo.appVersion, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                String str6 = null;
                String str7 = null;
                Boolean bool = null;
                String str8 = null;
                String str9 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("device_id".equals(strD)) {
                        str9 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("display_name".equals(strD)) {
                        str8 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("is_emm_managed".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                    } else if ("platform".equals(strD)) {
                        str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("mac_address".equals(strD)) {
                        str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("os_version".equals(strD)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("device_type".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("ip_address".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("last_activity".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("app_version".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                DeviceLogInfo deviceLogInfo = new DeviceLogInfo(str9, str8, bool, str7, str6, str5, str4, str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
