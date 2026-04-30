package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.DeviceSession;
import com.dropbox.core.v2.team.MobileClientPlatform;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MobileClientSession extends DeviceSession {
    protected final MobileClientPlatform clientType;
    protected final String clientVersion;
    protected final String deviceName;
    protected final String lastCarrier;
    protected final String osVersion;

    public MobileClientSession(String str, String str2, MobileClientPlatform mobileClientPlatform, String str3, String str4, Date date, Date date2, String str5, String str6, String str7) {
        super(str, str3, str4, date, date2);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'deviceName' is null");
        }
        this.deviceName = str2;
        if (mobileClientPlatform == null) {
            throw new IllegalArgumentException("Required value for 'clientType' is null");
        }
        this.clientType = mobileClientPlatform;
        this.clientVersion = str5;
        this.osVersion = str6;
        this.lastCarrier = str7;
    }

    public MobileClientSession(String str, String str2, MobileClientPlatform mobileClientPlatform) {
        this(str, str2, mobileClientPlatform, null, null, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String getSessionId() {
        return this.sessionId;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    public MobileClientPlatform getClientType() {
        return this.clientType;
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

    public String getClientVersion() {
        return this.clientVersion;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getLastCarrier() {
        return this.lastCarrier;
    }

    public static Builder newBuilder(String str, String str2, MobileClientPlatform mobileClientPlatform) {
        return new Builder(str, str2, mobileClientPlatform);
    }

    public class Builder extends DeviceSession.Builder {
        protected final MobileClientPlatform clientType;
        protected String clientVersion;
        protected final String deviceName;
        protected String lastCarrier;
        protected String osVersion;

        protected Builder(String str, String str2, MobileClientPlatform mobileClientPlatform) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'deviceName' is null");
            }
            this.deviceName = str2;
            if (mobileClientPlatform == null) {
                throw new IllegalArgumentException("Required value for 'clientType' is null");
            }
            this.clientType = mobileClientPlatform;
            this.clientVersion = null;
            this.osVersion = null;
            this.lastCarrier = null;
        }

        public Builder withClientVersion(String str) {
            this.clientVersion = str;
            return this;
        }

        public Builder withOsVersion(String str) {
            this.osVersion = str;
            return this;
        }

        public Builder withLastCarrier(String str) {
            this.lastCarrier = str;
            return this;
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
        public MobileClientSession build() {
            return new MobileClientSession(this.sessionId, this.deviceName, this.clientType, this.ipAddress, this.country, this.created, this.updated, this.clientVersion, this.osVersion, this.lastCarrier);
        }
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deviceName, this.clientType, this.clientVersion, this.osVersion, this.lastCarrier}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MobileClientSession mobileClientSession = (MobileClientSession) obj;
            if ((this.sessionId == mobileClientSession.sessionId || this.sessionId.equals(mobileClientSession.sessionId)) && ((this.deviceName == mobileClientSession.deviceName || this.deviceName.equals(mobileClientSession.deviceName)) && ((this.clientType == mobileClientSession.clientType || this.clientType.equals(mobileClientSession.clientType)) && ((this.ipAddress == mobileClientSession.ipAddress || (this.ipAddress != null && this.ipAddress.equals(mobileClientSession.ipAddress))) && ((this.country == mobileClientSession.country || (this.country != null && this.country.equals(mobileClientSession.country))) && ((this.created == mobileClientSession.created || (this.created != null && this.created.equals(mobileClientSession.created))) && ((this.updated == mobileClientSession.updated || (this.updated != null && this.updated.equals(mobileClientSession.updated))) && ((this.clientVersion == mobileClientSession.clientVersion || (this.clientVersion != null && this.clientVersion.equals(mobileClientSession.clientVersion))) && (this.osVersion == mobileClientSession.osVersion || (this.osVersion != null && this.osVersion.equals(mobileClientSession.osVersion))))))))))) {
                if (this.lastCarrier == mobileClientSession.lastCarrier) {
                    return true;
                }
                if (this.lastCarrier != null && this.lastCarrier.equals(mobileClientSession.lastCarrier)) {
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

    class Serializer extends StructSerializer<MobileClientSession> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MobileClientSession mobileClientSession, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(mobileClientSession.sessionId, gVar);
            gVar.a("device_name");
            StoneSerializers.string().serialize(mobileClientSession.deviceName, gVar);
            gVar.a("client_type");
            MobileClientPlatform.Serializer.INSTANCE.serialize(mobileClientSession.clientType, gVar);
            if (mobileClientSession.ipAddress != null) {
                gVar.a("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(mobileClientSession.ipAddress, gVar);
            }
            if (mobileClientSession.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(mobileClientSession.country, gVar);
            }
            if (mobileClientSession.created != null) {
                gVar.a("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(mobileClientSession.created, gVar);
            }
            if (mobileClientSession.updated != null) {
                gVar.a(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(mobileClientSession.updated, gVar);
            }
            if (mobileClientSession.clientVersion != null) {
                gVar.a("client_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(mobileClientSession.clientVersion, gVar);
            }
            if (mobileClientSession.osVersion != null) {
                gVar.a("os_version");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(mobileClientSession.osVersion, gVar);
            }
            if (mobileClientSession.lastCarrier != null) {
                gVar.a("last_carrier");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(mobileClientSession.lastCarrier, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MobileClientSession deserialize(k kVar, boolean z) throws IOException {
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
                Date date = null;
                Date date2 = null;
                String str4 = null;
                String str5 = null;
                MobileClientPlatform mobileClientPlatformDeserialize = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("device_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("client_type".equals(strD)) {
                        mobileClientPlatformDeserialize = MobileClientPlatform.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("ip_address".equals(strD)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("created".equals(strD)) {
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if (AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED.equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if ("client_version".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("os_version".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("last_carrier".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"device_name\" missing.");
                }
                if (mobileClientPlatformDeserialize == null) {
                    throw new j(kVar, "Required field \"client_type\" missing.");
                }
                MobileClientSession mobileClientSession = new MobileClientSession(strDeserialize2, strDeserialize, mobileClientPlatformDeserialize, str5, str4, date2, date, str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return mobileClientSession;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
