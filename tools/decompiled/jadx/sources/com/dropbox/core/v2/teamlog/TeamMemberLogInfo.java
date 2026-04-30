package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.UserLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMemberLogInfo extends UserLogInfo {
    protected final String memberExternalId;
    protected final String teamMemberId;

    public TeamMemberLogInfo(String str, String str2, String str3, String str4, String str5) {
        super(str, str2, str3);
        this.teamMemberId = str4;
        if (str5 != null && str5.length() > 64) {
            throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
        }
        this.memberExternalId = str5;
    }

    public TeamMemberLogInfo() {
        this(null, null, null, null, null);
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

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public String getMemberExternalId() {
        return this.memberExternalId;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder extends UserLogInfo.Builder {
        protected String teamMemberId = null;
        protected String memberExternalId = null;

        protected Builder() {
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }

        public Builder withMemberExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
            }
            this.memberExternalId = str;
            return this;
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
        public TeamMemberLogInfo build() {
            return new TeamMemberLogInfo(this.accountId, this.displayName, this.email, this.teamMemberId, this.memberExternalId);
        }
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.memberExternalId}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.teamlog.UserLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamMemberLogInfo teamMemberLogInfo = (TeamMemberLogInfo) obj;
            if ((this.accountId == teamMemberLogInfo.accountId || (this.accountId != null && this.accountId.equals(teamMemberLogInfo.accountId))) && ((this.displayName == teamMemberLogInfo.displayName || (this.displayName != null && this.displayName.equals(teamMemberLogInfo.displayName))) && ((this.email == teamMemberLogInfo.email || (this.email != null && this.email.equals(teamMemberLogInfo.email))) && (this.teamMemberId == teamMemberLogInfo.teamMemberId || (this.teamMemberId != null && this.teamMemberId.equals(teamMemberLogInfo.teamMemberId)))))) {
                if (this.memberExternalId == teamMemberLogInfo.memberExternalId) {
                    return true;
                }
                if (this.memberExternalId != null && this.memberExternalId.equals(teamMemberLogInfo.memberExternalId)) {
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

    class Serializer extends StructSerializer<TeamMemberLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMemberLogInfo teamMemberLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("team_member", gVar);
            if (teamMemberLogInfo.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberLogInfo.accountId, gVar);
            }
            if (teamMemberLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberLogInfo.displayName, gVar);
            }
            if (teamMemberLogInfo.email != null) {
                gVar.a("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberLogInfo.email, gVar);
            }
            if (teamMemberLogInfo.teamMemberId != null) {
                gVar.a("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberLogInfo.teamMemberId, gVar);
            }
            if (teamMemberLogInfo.memberExternalId != null) {
                gVar.a("member_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberLogInfo.memberExternalId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("team_member".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("display_name".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("email".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("team_member_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("member_external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                TeamMemberLogInfo teamMemberLogInfo = new TeamMemberLogInfo(str5, str4, str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMemberLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
