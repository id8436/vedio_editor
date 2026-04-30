package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AppLogInfo;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TeamLinkedAppLogInfo extends AppLogInfo {
    public TeamLinkedAppLogInfo(String str, String str2) {
        super(str, str2);
    }

    public TeamLinkedAppLogInfo() {
        this(null, null);
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public String getAppId() {
        return this.appId;
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder extends AppLogInfo.Builder {
        protected Builder() {
        }

        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public Builder withAppId(String str) {
            super.withAppId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.AppLogInfo.Builder
        public TeamLinkedAppLogInfo build() {
            return new TeamLinkedAppLogInfo(this.appId, this.displayName);
        }
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamLinkedAppLogInfo teamLinkedAppLogInfo = (TeamLinkedAppLogInfo) obj;
            if (this.appId == teamLinkedAppLogInfo.appId || (this.appId != null && this.appId.equals(teamLinkedAppLogInfo.appId))) {
                if (this.displayName == teamLinkedAppLogInfo.displayName) {
                    return true;
                }
                if (this.displayName != null && this.displayName.equals(teamLinkedAppLogInfo.displayName)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.teamlog.AppLogInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamLinkedAppLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamLinkedAppLogInfo teamLinkedAppLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("team_linked_app", gVar);
            if (teamLinkedAppLogInfo.appId != null) {
                gVar.a("app_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamLinkedAppLogInfo.appId, gVar);
            }
            if (teamLinkedAppLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamLinkedAppLogInfo.displayName, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamLinkedAppLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("team_linked_app".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("app_id".equals(strD)) {
                        String str5 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str5;
                    } else if ("display_name".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                }
                TeamLinkedAppLogInfo teamLinkedAppLogInfo = new TeamLinkedAppLogInfo(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamLinkedAppLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
