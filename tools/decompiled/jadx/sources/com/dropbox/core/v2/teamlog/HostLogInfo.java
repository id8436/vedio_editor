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
public class HostLogInfo {
    protected final Long hostId;
    protected final String hostName;

    public HostLogInfo(Long l, String str) {
        this.hostId = l;
        this.hostName = str;
    }

    public HostLogInfo() {
        this(null, null);
    }

    public Long getHostId() {
        return this.hostId;
    }

    public String getHostName() {
        return this.hostName;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected Long hostId = null;
        protected String hostName = null;

        protected Builder() {
        }

        public Builder withHostId(Long l) {
            this.hostId = l;
            return this;
        }

        public Builder withHostName(String str) {
            this.hostName = str;
            return this;
        }

        public HostLogInfo build() {
            return new HostLogInfo(this.hostId, this.hostName);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.hostId, this.hostName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            HostLogInfo hostLogInfo = (HostLogInfo) obj;
            if (this.hostId == hostLogInfo.hostId || (this.hostId != null && this.hostId.equals(hostLogInfo.hostId))) {
                if (this.hostName == hostLogInfo.hostName) {
                    return true;
                }
                if (this.hostName != null && this.hostName.equals(hostLogInfo.hostName)) {
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

    class Serializer extends StructSerializer<HostLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(HostLogInfo hostLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (hostLogInfo.hostId != null) {
                gVar.a("host_id");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize(hostLogInfo.hostId, gVar);
            }
            if (hostLogInfo.hostName != null) {
                gVar.a("host_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(hostLogInfo.hostName, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public HostLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Long l;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("host_id".equals(strD)) {
                        String str3 = str2;
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(kVar);
                        str = str3;
                    } else if ("host_name".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        l = l2;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        l = l2;
                    }
                    l2 = l;
                    str2 = str;
                }
                HostLogInfo hostLogInfo = new HostLogInfo(l2, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return hostLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
