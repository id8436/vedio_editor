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
public class UserOrTeamLinkedAppLogInfo extends AppLogInfo {
    public UserOrTeamLinkedAppLogInfo(String str, String str2) {
        super(str, str2);
    }

    public UserOrTeamLinkedAppLogInfo() {
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
        public UserOrTeamLinkedAppLogInfo build() {
            return new UserOrTeamLinkedAppLogInfo(this.appId, this.displayName);
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
            UserOrTeamLinkedAppLogInfo userOrTeamLinkedAppLogInfo = (UserOrTeamLinkedAppLogInfo) obj;
            if (this.appId == userOrTeamLinkedAppLogInfo.appId || (this.appId != null && this.appId.equals(userOrTeamLinkedAppLogInfo.appId))) {
                if (this.displayName == userOrTeamLinkedAppLogInfo.displayName) {
                    return true;
                }
                if (this.displayName != null && this.displayName.equals(userOrTeamLinkedAppLogInfo.displayName)) {
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

    class Serializer extends StructSerializer<UserOrTeamLinkedAppLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserOrTeamLinkedAppLogInfo userOrTeamLinkedAppLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("user_or_team_linked_app", gVar);
            if (userOrTeamLinkedAppLogInfo.appId != null) {
                gVar.a("app_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userOrTeamLinkedAppLogInfo.appId, gVar);
            }
            if (userOrTeamLinkedAppLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userOrTeamLinkedAppLogInfo.displayName, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserOrTeamLinkedAppLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("user_or_team_linked_app".equals(tag)) {
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
                UserOrTeamLinkedAppLogInfo userOrTeamLinkedAppLogInfo = new UserOrTeamLinkedAppLogInfo(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userOrTeamLinkedAppLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
