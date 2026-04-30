package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TeamLinkedAppLogInfo;
import com.dropbox.core.v2.teamlog.UserLinkedAppLogInfo;
import com.dropbox.core.v2.teamlog.UserOrTeamLinkedAppLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AppLogInfo {
    protected final String appId;
    protected final String displayName;

    public AppLogInfo(String str, String str2) {
        this.appId = str;
        this.displayName = str2;
    }

    public AppLogInfo() {
        this(null, null);
    }

    public String getAppId() {
        return this.appId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String appId = null;
        protected String displayName = null;

        protected Builder() {
        }

        public Builder withAppId(String str) {
            this.appId = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public AppLogInfo build() {
            return new AppLogInfo(this.appId, this.displayName);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.displayName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AppLogInfo appLogInfo = (AppLogInfo) obj;
            if (this.appId == appLogInfo.appId || (this.appId != null && this.appId.equals(appLogInfo.appId))) {
                if (this.displayName == appLogInfo.displayName) {
                    return true;
                }
                if (this.displayName != null && this.displayName.equals(appLogInfo.displayName)) {
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

    class Serializer extends StructSerializer<AppLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AppLogInfo appLogInfo, g gVar, boolean z) throws IOException {
            if (appLogInfo instanceof UserOrTeamLinkedAppLogInfo) {
                UserOrTeamLinkedAppLogInfo.Serializer.INSTANCE.serialize((UserOrTeamLinkedAppLogInfo) appLogInfo, gVar, z);
                return;
            }
            if (appLogInfo instanceof UserLinkedAppLogInfo) {
                UserLinkedAppLogInfo.Serializer.INSTANCE.serialize((UserLinkedAppLogInfo) appLogInfo, gVar, z);
                return;
            }
            if (appLogInfo instanceof TeamLinkedAppLogInfo) {
                TeamLinkedAppLogInfo.Serializer.INSTANCE.serialize((TeamLinkedAppLogInfo) appLogInfo, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            if (appLogInfo.appId != null) {
                gVar.a("app_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(appLogInfo.appId, gVar);
            }
            if (appLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(appLogInfo.displayName, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AppLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AppLogInfo appLogInfoDeserialize;
            String str;
            String str2;
            String str3 = null;
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
                appLogInfoDeserialize = new AppLogInfo(str4, str3);
            } else if ("".equals(tag)) {
                appLogInfoDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("user_or_team_linked_app".equals(tag)) {
                appLogInfoDeserialize = UserOrTeamLinkedAppLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("user_linked_app".equals(tag)) {
                appLogInfoDeserialize = UserLinkedAppLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("team_linked_app".equals(tag)) {
                appLogInfoDeserialize = TeamLinkedAppLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return appLogInfoDeserialize;
        }
    }
}
