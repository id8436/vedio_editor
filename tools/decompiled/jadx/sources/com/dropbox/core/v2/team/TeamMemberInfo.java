package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.AdminTier;
import com.dropbox.core.v2.team.TeamMemberProfile;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMemberInfo {
    protected final TeamMemberProfile profile;
    protected final AdminTier role;

    public TeamMemberInfo(TeamMemberProfile teamMemberProfile, AdminTier adminTier) {
        if (teamMemberProfile == null) {
            throw new IllegalArgumentException("Required value for 'profile' is null");
        }
        this.profile = teamMemberProfile;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'role' is null");
        }
        this.role = adminTier;
    }

    public TeamMemberProfile getProfile() {
        return this.profile;
    }

    public AdminTier getRole() {
        return this.role;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.profile, this.role});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamMemberInfo teamMemberInfo = (TeamMemberInfo) obj;
            return (this.profile == teamMemberInfo.profile || this.profile.equals(teamMemberInfo.profile)) && (this.role == teamMemberInfo.role || this.role.equals(teamMemberInfo.role));
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
            gVar.a("profile");
            TeamMemberProfile.Serializer.INSTANCE.serialize(teamMemberInfo.profile, gVar);
            gVar.a(AppsGroupsService.APPS_PROP_GROUP_ROLE);
            AdminTier.Serializer.INSTANCE.serialize(teamMemberInfo.role, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AdminTier adminTierDeserialize;
            TeamMemberProfile teamMemberProfileDeserialize;
            AdminTier adminTier = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamMemberProfile teamMemberProfile = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("profile".equals(strD)) {
                        AdminTier adminTier2 = adminTier;
                        teamMemberProfileDeserialize = TeamMemberProfile.Serializer.INSTANCE.deserialize(kVar);
                        adminTierDeserialize = adminTier2;
                    } else if (AppsGroupsService.APPS_PROP_GROUP_ROLE.equals(strD)) {
                        adminTierDeserialize = AdminTier.Serializer.INSTANCE.deserialize(kVar);
                        teamMemberProfileDeserialize = teamMemberProfile;
                    } else {
                        skipValue(kVar);
                        adminTierDeserialize = adminTier;
                        teamMemberProfileDeserialize = teamMemberProfile;
                    }
                    teamMemberProfile = teamMemberProfileDeserialize;
                    adminTier = adminTierDeserialize;
                }
                if (teamMemberProfile == null) {
                    throw new j(kVar, "Required field \"profile\" missing.");
                }
                if (adminTier == null) {
                    throw new j(kVar, "Required field \"role\" missing.");
                }
                TeamMemberInfo teamMemberInfo = new TeamMemberInfo(teamMemberProfile, adminTier);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMemberInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
