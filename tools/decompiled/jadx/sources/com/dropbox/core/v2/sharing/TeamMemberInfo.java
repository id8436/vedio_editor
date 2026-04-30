package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMemberInfo {
    protected final String displayName;
    protected final String memberId;
    protected final Team teamInfo;

    public TeamMemberInfo(Team team, String str, String str2) {
        if (team == null) {
            throw new IllegalArgumentException("Required value for 'teamInfo' is null");
        }
        this.teamInfo = team;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.displayName = str;
        this.memberId = str2;
    }

    public TeamMemberInfo(Team team, String str) {
        this(team, str, null);
    }

    public Team getTeamInfo() {
        return this.teamInfo;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamInfo, this.displayName, this.memberId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamMemberInfo teamMemberInfo = (TeamMemberInfo) obj;
            if ((this.teamInfo == teamMemberInfo.teamInfo || this.teamInfo.equals(teamMemberInfo.teamInfo)) && (this.displayName == teamMemberInfo.displayName || this.displayName.equals(teamMemberInfo.displayName))) {
                if (this.memberId == teamMemberInfo.memberId) {
                    return true;
                }
                if (this.memberId != null && this.memberId.equals(teamMemberInfo.memberId)) {
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

    class Serializer extends StructSerializer<TeamMemberInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMemberInfo teamMemberInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_info");
            Team.Serializer.INSTANCE.serialize(teamMemberInfo.teamInfo, gVar);
            gVar.a("display_name");
            StoneSerializers.string().serialize(teamMemberInfo.displayName, gVar);
            if (teamMemberInfo.memberId != null) {
                gVar.a("member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberInfo.memberId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            Team teamDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                Team team = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_info".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = str3;
                        teamDeserialize = Team.Serializer.INSTANCE.deserialize(kVar);
                        str = str4;
                    } else if ("display_name".equals(strD)) {
                        teamDeserialize = team;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("member_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                        teamDeserialize = team;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                        teamDeserialize = team;
                    }
                    team = teamDeserialize;
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (team == null) {
                    throw new j(kVar, "Required field \"team_info\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"display_name\" missing.");
                }
                TeamMemberInfo teamMemberInfo = new TeamMemberInfo(team, str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMemberInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
