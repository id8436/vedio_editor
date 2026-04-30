package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.DesktopPlatform;
import com.dropbox.core.v2.team.DeviceSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class DesktopClientSession extends DeviceSession {
    protected final DesktopPlatform clientType;
    protected final String clientVersion;
    protected final String hostName;
    protected final boolean isDeleteOnUnlinkSupported;
    protected final String platform;

    public DesktopClientSession(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z, String str5, String str6, Date date, Date date2) {
        super(str, str5, str6, date, date2);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'hostName' is null");
        }
        this.hostName = str2;
        if (desktopPlatform == null) {
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        this.clientType = desktopPlatform;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'clientVersion' is null");
        }
        this.clientVersion = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'platform' is null");
        }
        this.platform = str4;
        this.isDeleteOnUnlinkSupported = z;
    }

    public DesktopClientSession(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
        this(str, str2, desktopPlatform, str3, str4, z, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String getSessionId() {
        return this.sessionId;
    }

    public String getHostName() {
        return this.hostName;
    }

    public DesktopPlatform getClientType() {
        return this.clientType;
    }

    public String getClientVersion() {
        return this.clientVersion;
    }

    public String getPlatform() {
        return this.platform;
    }

    public boolean getIsDeleteOnUnlinkSupported() {
        return this.isDeleteOnUnlinkSupported;
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String getIpAddress() {
        return this.ipAddress;
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String getCountry() {
        return this.country;
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public Date getCreated() {
        return this.created;
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public Date getUpdated() {
        return this.updated;
    }

    public static Builder newBuilder(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
        return new Builder(str, str2, desktopPlatform, str3, str4, z);
    }

    public class Builder extends DeviceSession.Builder {
        protected final DesktopPlatform clientType;
        protected final String clientVersion;
        protected final String hostName;
        protected final boolean isDeleteOnUnlinkSupported;
        protected final String platform;

        protected Builder(String str, String str2, DesktopPlatform desktopPlatform, String str3, String str4, boolean z) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'hostName' is null");
            }
            this.hostName = str2;
            if (desktopPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = desktopPlatform;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'clientVersion' is null");
            }
            this.clientVersion = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'platform' is null");
            }
            this.platform = str4;
            this.isDeleteOnUnlinkSupported = z;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withIpAddress(String str) {
            super.withIpAddress(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withCountry(String str) {
            super.withCountry(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withCreated(Date date) {
            super.withCreated(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public Builder withUpdated(Date date) {
            super.withUpdated(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.DeviceSession.Builder
        public DesktopClientSession build() {
            return new DesktopClientSession(this.sessionId, this.hostName, this.clientType, this.clientVersion, this.platform, this.isDeleteOnUnlinkSupported, this.ipAddress, this.country, this.created, this.updated);
        }
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.hostName, this.clientType, this.clientVersion, this.platform, Boolean.valueOf(this.isDeleteOnUnlinkSupported)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DesktopClientSession desktopClientSession = (DesktopClientSession) obj;
            if ((this.sessionId == desktopClientSession.sessionId || this.sessionId.equals(desktopClientSession.sessionId)) && ((this.hostName == desktopClientSession.hostName || this.hostName.equals(desktopClientSession.hostName)) && ((this.clientType == desktopClientSession.clientType || this.clientType.equals(desktopClientSession.clientType)) && ((this.clientVersion == desktopClientSession.clientVersion || this.clientVersion.equals(desktopClientSession.clientVersion)) && ((this.platform == desktopClientSession.platform || this.platform.equals(desktopClientSession.platform)) && this.isDeleteOnUnlinkSupported == desktopClientSession.isDeleteOnUnlinkSupported && ((this.ipAddress == desktopClientSession.ipAddress || (this.ipAddress != null && this.ipAddress.equals(desktopClientSession.ipAddress))) && ((this.country == desktopClientSession.country || (this.country != null && this.country.equals(desktopClientSession.country))) && (this.created == desktopClientSession.created || (this.created != null && this.created.equals(desktopClientSession.created)))))))))) {
                if (this.updated == desktopClientSession.updated) {
                    return true;
                }
                if (this.updated != null && this.updated.equals(desktopClientSession.updated)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DesktopClientSession> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DesktopClientSession desktopClientSession, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(desktopClientSession.sessionId, gVar);
            gVar.a("host_name");
            StoneSerializers.string().serialize(desktopClientSession.hostName, gVar);
            gVar.a("client_type");
            DesktopPlatform.Serializer.INSTANCE.serialize(desktopClientSession.clientType, gVar);
            gVar.a("client_version");
            StoneSerializers.string().serialize(desktopClientSession.clientVersion, gVar);
            gVar.a("platform");
            StoneSerializers.string().serialize(desktopClientSession.platform, gVar);
            gVar.a("is_delete_on_unlink_supported");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(desktopClientSession.isDeleteOnUnlinkSupported), gVar);
            if (desktopClientSession.ipAddress != null) {
                gVar.a("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(desktopClientSession.ipAddress, gVar);
            }
            if (desktopClientSession.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(desktopClientSession.country, gVar);
            }
            if (desktopClientSession.created != null) {
                gVar.a("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(desktopClientSession.created, gVar);
            }
            if (desktopClientSession.updated != null) {
                gVar.a(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(desktopClientSession.updated, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DesktopClientSession deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date2 = null;
                String str = null;
                String str2 = null;
                Boolean bool = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                DesktopPlatform desktopPlatformDeserialize = null;
                String strDeserialize3 = null;
                String strDeserialize4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        strDeserialize4 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("host_name".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("client_type".equals(strD)) {
                        desktopPlatformDeserialize = DesktopPlatform.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("client_version".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("platform".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_delete_on_unlink_supported".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("ip_address".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("created".equals(strD)) {
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if (AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED.equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize4 == null) {
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"host_name\" missing.");
                }
                if (desktopPlatformDeserialize == null) {
                    throw new j(kVar, "Required field \"client_type\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"client_version\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"platform\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_delete_on_unlink_supported\" missing.");
                }
                DesktopClientSession desktopClientSession = new DesktopClientSession(strDeserialize4, strDeserialize3, desktopPlatformDeserialize, strDeserialize2, strDeserialize, bool.booleanValue(), str2, str, date2, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return desktopClientSession;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
