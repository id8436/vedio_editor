package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.TeamMemberPolicies;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamGetInfoResult {
    protected final String name;
    protected final long numLicensedUsers;
    protected final long numProvisionedUsers;
    protected final TeamMemberPolicies policies;
    protected final String teamId;

    public TeamGetInfoResult(String str, String str2, long j, long j2, TeamMemberPolicies teamMemberPolicies) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamId' is null");
        }
        this.teamId = str2;
        this.numLicensedUsers = j;
        this.numProvisionedUsers = j2;
        if (teamMemberPolicies == null) {
            throw new IllegalArgumentException("Required value for 'policies' is null");
        }
        this.policies = teamMemberPolicies;
    }

    public String getName() {
        return this.name;
    }

    public String getTeamId() {
        return this.teamId;
    }

    public long getNumLicensedUsers() {
        return this.numLicensedUsers;
    }

    public long getNumProvisionedUsers() {
        return this.numProvisionedUsers;
    }

    public TeamMemberPolicies getPolicies() {
        return this.policies;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.teamId, Long.valueOf(this.numLicensedUsers), Long.valueOf(this.numProvisionedUsers), this.policies});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamGetInfoResult teamGetInfoResult = (TeamGetInfoResult) obj;
            return (this.name == teamGetInfoResult.name || this.name.equals(teamGetInfoResult.name)) && (this.teamId == teamGetInfoResult.teamId || this.teamId.equals(teamGetInfoResult.teamId)) && this.numLicensedUsers == teamGetInfoResult.numLicensedUsers && this.numProvisionedUsers == teamGetInfoResult.numProvisionedUsers && (this.policies == teamGetInfoResult.policies || this.policies.equals(teamGetInfoResult.policies));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamGetInfoResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamGetInfoResult teamGetInfoResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(teamGetInfoResult.name, gVar);
            gVar.a("team_id");
            StoneSerializers.string().serialize(teamGetInfoResult.teamId, gVar);
            gVar.a("num_licensed_users");
            StoneSerializers.uInt32().serialize(Long.valueOf(teamGetInfoResult.numLicensedUsers), gVar);
            gVar.a("num_provisioned_users");
            StoneSerializers.uInt32().serialize(Long.valueOf(teamGetInfoResult.numProvisionedUsers), gVar);
            gVar.a("policies");
            TeamMemberPolicies.Serializer.INSTANCE.serialize(teamGetInfoResult.policies, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamGetInfoResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            TeamMemberPolicies teamMemberPoliciesDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                Long l2 = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        lDeserialize2 = l2;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("team_id".equals(strD)) {
                        lDeserialize2 = l2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("num_licensed_users".equals(strD)) {
                        lDeserialize2 = StoneSerializers.uInt32().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("num_provisioned_users".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else if ("policies".equals(strD)) {
                        teamMemberPoliciesDeserialize = TeamMemberPolicies.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize2 = l2;
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l = lDeserialize;
                    l2 = lDeserialize2;
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"team_id\" missing.");
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"num_licensed_users\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"num_provisioned_users\" missing.");
                }
                if (teamMemberPoliciesDeserialize == null) {
                    throw new j(kVar, "Required field \"policies\" missing.");
                }
                TeamGetInfoResult teamGetInfoResult = new TeamGetInfoResult(strDeserialize2, strDeserialize, l2.longValue(), l.longValue(), teamMemberPoliciesDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamGetInfoResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
