package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.UserLogInfo;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class NonTeamMemberLogInfo extends UserLogInfo {
    public NonTeamMemberLogInfo(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    public NonTeamMemberLogInfo() {
        this(null, null, null);
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public String getAccountId() {
        return this.accountId;
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public String getEmail() {
        return this.email;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder extends UserLogInfo.Builder {
        protected Builder() {
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withAccountId(String str) {
            super.withAccountId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public Builder withEmail(String str) {
            super.withEmail(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.UserLogInfo.Builder
        public NonTeamMemberLogInfo build() {
            return new NonTeamMemberLogInfo(this.accountId, this.displayName, this.email);
        }
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            NonTeamMemberLogInfo nonTeamMemberLogInfo = (NonTeamMemberLogInfo) obj;
            if ((this.accountId == nonTeamMemberLogInfo.accountId || (this.accountId != null && this.accountId.equals(nonTeamMemberLogInfo.accountId))) && (this.displayName == nonTeamMemberLogInfo.displayName || (this.displayName != null && this.displayName.equals(nonTeamMemberLogInfo.displayName)))) {
                if (this.email == nonTeamMemberLogInfo.email) {
                    return true;
                }
                if (this.email != null && this.email.equals(nonTeamMemberLogInfo.email)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<NonTeamMemberLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(NonTeamMemberLogInfo nonTeamMemberLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("non_team_member", gVar);
            if (nonTeamMemberLogInfo.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(nonTeamMemberLogInfo.accountId, gVar);
            }
            if (nonTeamMemberLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(nonTeamMemberLogInfo.displayName, gVar);
            }
            if (nonTeamMemberLogInfo.email != null) {
                gVar.a("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(nonTeamMemberLogInfo.email, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public NonTeamMemberLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3;
            String str4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("non_team_member".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str5 = null;
                String str6 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        String str7 = str4;
                        str2 = str5;
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str7;
                    } else if ("display_name".equals(strD)) {
                        str3 = str6;
                        str = str4;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("email".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str5;
                        str3 = str6;
                    } else {
                        skipValue(kVar);
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                    }
                    str6 = str3;
                    str5 = str2;
                    str4 = str;
                }
                NonTeamMemberLogInfo nonTeamMemberLogInfo = new NonTeamMemberLogInfo(str6, str5, str4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return nonTeamMemberLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
