package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.DesktopSessionLogInfo;
import com.dropbox.core.v2.teamlog.MobileSessionLogInfo;
import com.dropbox.core.v2.teamlog.WebSessionLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SessionLogInfo {
    protected final String sessionId;

    public SessionLogInfo(String str) {
        this.sessionId = str;
    }

    public SessionLogInfo() {
        this(null);
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SessionLogInfo sessionLogInfo = (SessionLogInfo) obj;
        return this.sessionId == sessionLogInfo.sessionId || (this.sessionId != null && this.sessionId.equals(sessionLogInfo.sessionId));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SessionLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SessionLogInfo sessionLogInfo, g gVar, boolean z) throws IOException {
            if (sessionLogInfo instanceof WebSessionLogInfo) {
                WebSessionLogInfo.Serializer.INSTANCE.serialize((WebSessionLogInfo) sessionLogInfo, gVar, z);
                return;
            }
            if (sessionLogInfo instanceof DesktopSessionLogInfo) {
                DesktopSessionLogInfo.Serializer.INSTANCE.serialize((DesktopSessionLogInfo) sessionLogInfo, gVar, z);
                return;
            }
            if (sessionLogInfo instanceof MobileSessionLogInfo) {
                MobileSessionLogInfo.Serializer.INSTANCE.serialize((MobileSessionLogInfo) sessionLogInfo, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            if (sessionLogInfo.sessionId != null) {
                gVar.a("session_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sessionLogInfo.sessionId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SessionLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SessionLogInfo sessionLogInfoDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                sessionLogInfoDeserialize = new SessionLogInfo(str);
            } else if ("".equals(tag)) {
                sessionLogInfoDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("web".equals(tag)) {
                sessionLogInfoDeserialize = WebSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("desktop".equals(tag)) {
                sessionLogInfoDeserialize = DesktopSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("mobile".equals(tag)) {
                sessionLogInfoDeserialize = MobileSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return sessionLogInfoDeserialize;
        }
    }
}
