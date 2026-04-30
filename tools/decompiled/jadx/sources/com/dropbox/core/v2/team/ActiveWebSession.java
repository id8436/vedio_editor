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
import com.dropbox.core.v2.team.DeviceSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ActiveWebSession extends DeviceSession {
    protected final String browser;
    protected final Date expires;
    protected final String os;
    protected final String userAgent;

    public ActiveWebSession(String str, String str2, String str3, String str4, String str5, String str6, Date date, Date date2, Date date3) {
        super(str, str5, str6, date, date2);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'userAgent' is null");
        }
        this.userAgent = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'os' is null");
        }
        this.os = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'browser' is null");
        }
        this.browser = str4;
        this.expires = LangUtil.truncateMillis(date3);
    }

    public ActiveWebSession(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public String getSessionId() {
        return this.sessionId;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getOs() {
        return this.os;
    }

    public String getBrowser() {
        return this.browser;
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

    public Date getExpires() {
        return this.expires;
    }

    public static Builder newBuilder(String str, String str2, String str3, String str4) {
        return new Builder(str, str2, str3, str4);
    }

    public class Builder extends DeviceSession.Builder {
        protected final String browser;
        protected Date expires;
        protected final String os;
        protected final String userAgent;

        protected Builder(String str, String str2, String str3, String str4) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'userAgent' is null");
            }
            this.userAgent = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'os' is null");
            }
            this.os = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'browser' is null");
            }
            this.browser = str4;
            this.expires = null;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
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
        public ActiveWebSession build() {
            return new ActiveWebSession(this.sessionId, this.userAgent, this.os, this.browser, this.ipAddress, this.country, this.created, this.updated, this.expires);
        }
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.userAgent, this.os, this.browser, this.expires}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.DeviceSession
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ActiveWebSession activeWebSession = (ActiveWebSession) obj;
            if ((this.sessionId == activeWebSession.sessionId || this.sessionId.equals(activeWebSession.sessionId)) && ((this.userAgent == activeWebSession.userAgent || this.userAgent.equals(activeWebSession.userAgent)) && ((this.os == activeWebSession.os || this.os.equals(activeWebSession.os)) && ((this.browser == activeWebSession.browser || this.browser.equals(activeWebSession.browser)) && ((this.ipAddress == activeWebSession.ipAddress || (this.ipAddress != null && this.ipAddress.equals(activeWebSession.ipAddress))) && ((this.country == activeWebSession.country || (this.country != null && this.country.equals(activeWebSession.country))) && ((this.created == activeWebSession.created || (this.created != null && this.created.equals(activeWebSession.created))) && (this.updated == activeWebSession.updated || (this.updated != null && this.updated.equals(activeWebSession.updated)))))))))) {
                if (this.expires == activeWebSession.expires) {
                    return true;
                }
                if (this.expires != null && this.expires.equals(activeWebSession.expires)) {
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

    class Serializer extends StructSerializer<ActiveWebSession> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ActiveWebSession activeWebSession, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(activeWebSession.sessionId, gVar);
            gVar.a("user_agent");
            StoneSerializers.string().serialize(activeWebSession.userAgent, gVar);
            gVar.a("os");
            StoneSerializers.string().serialize(activeWebSession.os, gVar);
            gVar.a("browser");
            StoneSerializers.string().serialize(activeWebSession.browser, gVar);
            if (activeWebSession.ipAddress != null) {
                gVar.a("ip_address");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(activeWebSession.ipAddress, gVar);
            }
            if (activeWebSession.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(activeWebSession.country, gVar);
            }
            if (activeWebSession.created != null) {
                gVar.a("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(activeWebSession.created, gVar);
            }
            if (activeWebSession.updated != null) {
                gVar.a(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(activeWebSession.updated, gVar);
            }
            if (activeWebSession.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(activeWebSession.expires, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ActiveWebSession deserialize(k kVar, boolean z) throws IOException {
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
                Date date3 = null;
                String str = null;
                String str2 = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                String strDeserialize4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        strDeserialize4 = StoneSerializers.string().deserialize(kVar);
                    } else if ("user_agent".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                    } else if ("os".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("browser".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("ip_address".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("created".equals(strD)) {
                        date3 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if (AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED.equals(strD)) {
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize4 == null) {
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"user_agent\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"os\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"browser\" missing.");
                }
                ActiveWebSession activeWebSession = new ActiveWebSession(strDeserialize4, strDeserialize3, strDeserialize2, strDeserialize, str2, str, date3, date2, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return activeWebSession;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
