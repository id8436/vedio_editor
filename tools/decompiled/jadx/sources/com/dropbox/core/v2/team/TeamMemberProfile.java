package com.dropbox.core.v2.team;

import android.support.v4.app.NotificationCompat;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.MemberProfile;
import com.dropbox.core.v2.team.TeamMemberStatus;
import com.dropbox.core.v2.team.TeamMembershipType;
import com.dropbox.core.v2.users.Name;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMemberProfile extends MemberProfile {
    protected final List<String> groups;
    protected final String memberFolderId;

    public TeamMemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3, String str4, String str5, Date date, String str6) {
        super(str, str2, z, teamMemberStatus, name, teamMembershipType, str4, str5, date, str6);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'groups' is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'groups' is null");
            }
        }
        this.groups = list;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
            throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
        }
        this.memberFolderId = str3;
    }

    public TeamMemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
        this(str, str2, z, teamMemberStatus, name, teamMembershipType, list, str3, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String getEmail() {
        return this.email;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public TeamMemberStatus getStatus() {
        return this.status;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public Name getName() {
        return this.name;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public TeamMembershipType getMembershipType() {
        return this.membershipType;
    }

    public List<String> getGroups() {
        return this.groups;
    }

    public String getMemberFolderId() {
        return this.memberFolderId;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String getExternalId() {
        return this.externalId;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String getAccountId() {
        return this.accountId;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public Date getJoinedOn() {
        return this.joinedOn;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String getPersistentId() {
        return this.persistentId;
    }

    public static Builder newBuilder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
        return new Builder(str, str2, z, teamMemberStatus, name, teamMembershipType, list, str3);
    }

    public class Builder extends MemberProfile.Builder {
        protected final List<String> groups;
        protected final String memberFolderId;

        protected Builder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
            super(str, str2, z, teamMemberStatus, name, teamMembershipType);
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'groups' is null");
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'groups' is null");
                }
            }
            this.groups = list;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
            }
            this.memberFolderId = str3;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withExternalId(String str) {
            super.withExternalId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withAccountId(String str) {
            super.withAccountId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withJoinedOn(Date date) {
            super.withJoinedOn(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withPersistentId(String str) {
            super.withPersistentId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public TeamMemberProfile build() {
            return new TeamMemberProfile(this.teamMemberId, this.email, this.emailVerified, this.status, this.name, this.membershipType, this.groups, this.memberFolderId, this.externalId, this.accountId, this.joinedOn, this.persistentId);
        }
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groups, this.memberFolderId}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamMemberProfile teamMemberProfile = (TeamMemberProfile) obj;
            if ((this.teamMemberId == teamMemberProfile.teamMemberId || this.teamMemberId.equals(teamMemberProfile.teamMemberId)) && ((this.email == teamMemberProfile.email || this.email.equals(teamMemberProfile.email)) && this.emailVerified == teamMemberProfile.emailVerified && ((this.status == teamMemberProfile.status || this.status.equals(teamMemberProfile.status)) && ((this.name == teamMemberProfile.name || this.name.equals(teamMemberProfile.name)) && ((this.membershipType == teamMemberProfile.membershipType || this.membershipType.equals(teamMemberProfile.membershipType)) && ((this.groups == teamMemberProfile.groups || this.groups.equals(teamMemberProfile.groups)) && ((this.memberFolderId == teamMemberProfile.memberFolderId || this.memberFolderId.equals(teamMemberProfile.memberFolderId)) && ((this.externalId == teamMemberProfile.externalId || (this.externalId != null && this.externalId.equals(teamMemberProfile.externalId))) && ((this.accountId == teamMemberProfile.accountId || (this.accountId != null && this.accountId.equals(teamMemberProfile.accountId))) && (this.joinedOn == teamMemberProfile.joinedOn || (this.joinedOn != null && this.joinedOn.equals(teamMemberProfile.joinedOn)))))))))))) {
                if (this.persistentId == teamMemberProfile.persistentId) {
                    return true;
                }
                if (this.persistentId != null && this.persistentId.equals(teamMemberProfile.persistentId)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.MemberProfile
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamMemberProfile> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMemberProfile teamMemberProfile, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(teamMemberProfile.teamMemberId, gVar);
            gVar.a("email");
            StoneSerializers.string().serialize(teamMemberProfile.email, gVar);
            gVar.a("email_verified");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(teamMemberProfile.emailVerified), gVar);
            gVar.a(NotificationCompat.CATEGORY_STATUS);
            TeamMemberStatus.Serializer.INSTANCE.serialize(teamMemberProfile.status, gVar);
            gVar.a("name");
            Name.Serializer.INSTANCE.serialize(teamMemberProfile.name, gVar);
            gVar.a("membership_type");
            TeamMembershipType.Serializer.INSTANCE.serialize(teamMemberProfile.membershipType, gVar);
            gVar.a("groups");
            StoneSerializers.list(StoneSerializers.string()).serialize(teamMemberProfile.groups, gVar);
            gVar.a("member_folder_id");
            StoneSerializers.string().serialize(teamMemberProfile.memberFolderId, gVar);
            if (teamMemberProfile.externalId != null) {
                gVar.a("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberProfile.externalId, gVar);
            }
            if (teamMemberProfile.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberProfile.accountId, gVar);
            }
            if (teamMemberProfile.joinedOn != null) {
                gVar.a("joined_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(teamMemberProfile.joinedOn, gVar);
            }
            if (teamMemberProfile.persistentId != null) {
                gVar.a("persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberProfile.persistentId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberProfile deserialize(k kVar, boolean z) throws IOException {
            Boolean boolDeserialize;
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize = null;
                String strDeserialize2 = null;
                Boolean bool = null;
                TeamMemberStatus teamMemberStatusDeserialize = null;
                Name nameDeserialize = null;
                TeamMembershipType teamMembershipTypeDeserialize = null;
                List list = null;
                String strDeserialize3 = null;
                String str = null;
                String str2 = null;
                Date date = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("email".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("email_verified".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if (NotificationCompat.CATEGORY_STATUS.equals(strD)) {
                        teamMemberStatusDeserialize = TeamMemberStatus.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("name".equals(strD)) {
                        nameDeserialize = Name.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("membership_type".equals(strD)) {
                        teamMembershipTypeDeserialize = TeamMembershipType.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("groups".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("member_folder_id".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("account_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("joined_on".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("persistent_id".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"email\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"email_verified\" missing.");
                }
                if (teamMemberStatusDeserialize == null) {
                    throw new j(kVar, "Required field \"status\" missing.");
                }
                if (nameDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (teamMembershipTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"membership_type\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"groups\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"member_folder_id\" missing.");
                }
                TeamMemberProfile teamMemberProfile = new TeamMemberProfile(strDeserialize, strDeserialize2, bool.booleanValue(), teamMemberStatusDeserialize, nameDeserialize, teamMembershipTypeDeserialize, list, strDeserialize3, str, str2, date, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMemberProfile;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
