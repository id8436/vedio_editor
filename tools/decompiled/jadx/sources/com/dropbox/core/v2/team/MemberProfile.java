package com.dropbox.core.v2.team;

import android.support.v4.app.NotificationCompat;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.team.TeamMemberStatus;
import com.dropbox.core.v2.team.TeamMembershipType;
import com.dropbox.core.v2.users.Name;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MemberProfile {
    protected final String accountId;
    protected final String email;
    protected final boolean emailVerified;
    protected final String externalId;
    protected final Date joinedOn;
    protected final TeamMembershipType membershipType;
    protected final Name name;
    protected final String persistentId;
    protected final TeamMemberStatus status;
    protected final String teamMemberId;

    public MemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, String str3, String str4, Date date, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        this.externalId = str3;
        if (str4 != null) {
            if (str4.length() < 40) {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
            if (str4.length() > 40) {
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
        }
        this.accountId = str4;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'email' is null");
        }
        this.email = str2;
        this.emailVerified = z;
        if (teamMemberStatus == null) {
            throw new IllegalArgumentException("Required value for 'status' is null");
        }
        this.status = teamMemberStatus;
        if (name == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = name;
        if (teamMembershipType == null) {
            throw new IllegalArgumentException("Required value for 'membershipType' is null");
        }
        this.membershipType = teamMembershipType;
        this.joinedOn = LangUtil.truncateMillis(date);
        this.persistentId = str5;
    }

    public MemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
        this(str, str2, z, teamMemberStatus, name, teamMembershipType, null, null, null, null);
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    public TeamMemberStatus getStatus() {
        return this.status;
    }

    public Name getName() {
        return this.name;
    }

    public TeamMembershipType getMembershipType() {
        return this.membershipType;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public Date getJoinedOn() {
        return this.joinedOn;
    }

    public String getPersistentId() {
        return this.persistentId;
    }

    public static Builder newBuilder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
        return new Builder(str, str2, z, teamMemberStatus, name, teamMembershipType);
    }

    public class Builder {
        protected String accountId;
        protected final String email;
        protected final boolean emailVerified;
        protected String externalId;
        protected Date joinedOn;
        protected final TeamMembershipType membershipType;
        protected final Name name;
        protected String persistentId;
        protected final TeamMemberStatus status;
        protected final String teamMemberId;

        protected Builder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'email' is null");
            }
            this.email = str2;
            this.emailVerified = z;
            if (teamMemberStatus == null) {
                throw new IllegalArgumentException("Required value for 'status' is null");
            }
            this.status = teamMemberStatus;
            if (name == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = name;
            if (teamMembershipType == null) {
                throw new IllegalArgumentException("Required value for 'membershipType' is null");
            }
            this.membershipType = teamMembershipType;
            this.externalId = null;
            this.accountId = null;
            this.joinedOn = null;
            this.persistentId = null;
        }

        public Builder withExternalId(String str) {
            this.externalId = str;
            return this;
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withJoinedOn(Date date) {
            this.joinedOn = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withPersistentId(String str) {
            this.persistentId = str;
            return this;
        }

        public MemberProfile build() {
            return new MemberProfile(this.teamMemberId, this.email, this.emailVerified, this.status, this.name, this.membershipType, this.externalId, this.accountId, this.joinedOn, this.persistentId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.externalId, this.accountId, this.email, Boolean.valueOf(this.emailVerified), this.status, this.name, this.membershipType, this.joinedOn, this.persistentId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberProfile memberProfile = (MemberProfile) obj;
            if ((this.teamMemberId == memberProfile.teamMemberId || this.teamMemberId.equals(memberProfile.teamMemberId)) && ((this.email == memberProfile.email || this.email.equals(memberProfile.email)) && this.emailVerified == memberProfile.emailVerified && ((this.status == memberProfile.status || this.status.equals(memberProfile.status)) && ((this.name == memberProfile.name || this.name.equals(memberProfile.name)) && ((this.membershipType == memberProfile.membershipType || this.membershipType.equals(memberProfile.membershipType)) && ((this.externalId == memberProfile.externalId || (this.externalId != null && this.externalId.equals(memberProfile.externalId))) && ((this.accountId == memberProfile.accountId || (this.accountId != null && this.accountId.equals(memberProfile.accountId))) && (this.joinedOn == memberProfile.joinedOn || (this.joinedOn != null && this.joinedOn.equals(memberProfile.joinedOn)))))))))) {
                if (this.persistentId == memberProfile.persistentId) {
                    return true;
                }
                if (this.persistentId != null && this.persistentId.equals(memberProfile.persistentId)) {
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

    class Serializer extends StructSerializer<MemberProfile> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberProfile memberProfile, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(memberProfile.teamMemberId, gVar);
            gVar.a("email");
            StoneSerializers.string().serialize(memberProfile.email, gVar);
            gVar.a("email_verified");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(memberProfile.emailVerified), gVar);
            gVar.a(NotificationCompat.CATEGORY_STATUS);
            TeamMemberStatus.Serializer.INSTANCE.serialize(memberProfile.status, gVar);
            gVar.a("name");
            Name.Serializer.INSTANCE.serialize(memberProfile.name, gVar);
            gVar.a("membership_type");
            TeamMembershipType.Serializer.INSTANCE.serialize(memberProfile.membershipType, gVar);
            if (memberProfile.externalId != null) {
                gVar.a("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberProfile.externalId, gVar);
            }
            if (memberProfile.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberProfile.accountId, gVar);
            }
            if (memberProfile.joinedOn != null) {
                gVar.a("joined_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(memberProfile.joinedOn, gVar);
            }
            if (memberProfile.persistentId != null) {
                gVar.a("persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberProfile.persistentId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberProfile deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date = null;
                String str2 = null;
                String str3 = null;
                TeamMembershipType teamMembershipTypeDeserialize = null;
                Name nameDeserialize = null;
                TeamMemberStatus teamMemberStatusDeserialize = null;
                Boolean bool = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("email".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
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
                    } else if ("external_id".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("account_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("joined_on".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("persistent_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                if (strDeserialize == null) {
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
                MemberProfile memberProfile = new MemberProfile(strDeserialize2, strDeserialize, bool.booleanValue(), teamMemberStatusDeserialize, nameDeserialize, teamMembershipTypeDeserialize, str3, str2, date, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberProfile;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
