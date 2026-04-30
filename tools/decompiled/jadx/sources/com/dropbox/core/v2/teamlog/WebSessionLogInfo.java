package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class WebSessionLogInfo extends SessionLogInfo {
    public WebSessionLogInfo(String str) {
        super(str);
    }

    public WebSessionLogInfo() {
        this(null);
    }

    @Override // com.dropbox.core.v2.teamlog.SessionLogInfo
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.v2.teamlog.SessionLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.teamlog.SessionLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        WebSessionLogInfo webSessionLogInfo = (WebSessionLogInfo) obj;
        return this.sessionId == webSessionLogInfo.sessionId || (this.sessionId != null && this.sessionId.equals(webSessionLogInfo.sessionId));
    }

    @Override // com.dropbox.core.v2.teamlog.SessionLogInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.teamlog.SessionLogInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<WebSessionLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(WebSessionLogInfo webSessionLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("web", gVar);
            if (webSessionLogInfo.sessionId != null) {
                gVar.a("session_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(webSessionLogInfo.sessionId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public WebSessionLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("web".equals(tag)) {
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
                WebSessionLogInfo webSessionLogInfo = new WebSessionLogInfo(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return webSessionLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
