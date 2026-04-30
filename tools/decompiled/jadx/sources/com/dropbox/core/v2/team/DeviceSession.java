package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceSession {
    protected final String country;
    protected final Date created;
    protected final String ipAddress;
    protected final String sessionId;
    protected final Date updated;

    public DeviceSession(String str, String str2, String str3, Date date, Date date2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sessionId' is null");
        }
        this.sessionId = str;
        this.ipAddress = str2;
        this.country = str3;
        this.created = LangUtil.truncateMillis(date);
        this.updated = LangUtil.truncateMillis(date2);
    }

    public DeviceSession(String str) {
        this(str, null, null, null, null);
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getCountry() {
        return this.country;
    }

    public Date getCreated() {
        return this.created;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected String country;
        protected Date created;
        protected String ipAddress;
        protected final String sessionId;
        protected Date updated;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sessionId' is null");
            }
            this.sessionId = str;
            this.ipAddress = null;
            this.country = null;
            this.created = null;
            this.updated = null;
        }

        public Builder withIpAddress(String str) {
            this.ipAddress = str;
            return this;
        }

        public Builder withCountry(String str) {
            this.country = str;
            return this;
        }

        public Builder withCreated(Date date) {
            this.created = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withUpdated(Date date) {
            this.updated = LangUtil.truncateMillis(date);
            return this;
        }

        public DeviceSession build() {
            return new DeviceSession(this.sessionId, this.ipAddress, this.country, this.created, this.updated);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId, this.ipAddress, this.country, this.created, this.updated});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeviceSession deviceSession = (DeviceSession) obj;
            if ((this.sessionId == deviceSession.sessionId || this.sessionId.equals(deviceSession.sessionId)) && ((this.ipAddress == deviceSession.ipAddress || (this.ipAddress != null && this.ipAddress.equals(deviceSession.ipAddress))) && ((this.country == deviceSession.country || (this.country != null && this.country.equals(deviceSession.country))) && (this.created == deviceSession.created || (this.created != null && this.created.equals(deviceSession.created)))))) {
                if (this.updated == deviceSession.updated) {
                    return true;
                }
                if (this.updated != null && this.updated.equals(deviceSession.updated)) {
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

    class Serializer extends StructSerializer<DeviceSession> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeviceSession deviceSession, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(deviceSession.sessionId, gVar);
            if (deviceSession.ipAddress != null) {
                gVar.a("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceSession.ipAddress, gVar);
            }
            if (deviceSession.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deviceSession.country, gVar);
            }
            if (deviceSession.created != null) {
                gVar.a("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(deviceSession.created, gVar);
            }
            if (deviceSession.updated != null) {
                gVar.a(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(deviceSession.updated, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeviceSession deserialize(k kVar, boolean z) throws IOException {
            String tag;
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
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("ip_address".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("created".equals(strD)) {
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if (AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED.equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                DeviceSession deviceSession = new DeviceSession(strDeserialize, str2, str, date2, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deviceSession;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
