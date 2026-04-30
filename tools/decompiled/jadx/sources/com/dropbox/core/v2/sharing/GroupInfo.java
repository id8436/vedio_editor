package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupSummary;
import com.dropbox.core.v2.teamcommon.GroupType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupInfo extends GroupSummary {
    protected final GroupType groupType;
    protected final boolean isMember;
    protected final boolean isOwner;
    protected final boolean sameTeam;

    public GroupInfo(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3, String str3, Long l) {
        super(str, str2, groupManagementType, str3, l);
        if (groupType == null) {
            throw new IllegalArgumentException("Required value for 'groupType' is null");
        }
        this.groupType = groupType;
        this.isMember = z;
        this.isOwner = z2;
        this.sameTeam = z3;
    }

    public GroupInfo(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
        this(str, str2, groupManagementType, groupType, z, z2, z3, null, null);
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String getGroupName() {
        return this.groupName;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String getGroupId() {
        return this.groupId;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public GroupManagementType getGroupManagementType() {
        return this.groupManagementType;
    }

    public GroupType getGroupType() {
        return this.groupType;
    }

    public boolean getIsMember() {
        return this.isMember;
    }

    public boolean getIsOwner() {
        return this.isOwner;
    }

    public boolean getSameTeam() {
        return this.sameTeam;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public Long getMemberCount() {
        return this.memberCount;
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
        return new Builder(str, str2, groupManagementType, groupType, z, z2, z3);
    }

    public class Builder extends GroupSummary.Builder {
        protected final GroupType groupType;
        protected final boolean isMember;
        protected final boolean isOwner;
        protected final boolean sameTeam;

        protected Builder(String str, String str2, GroupManagementType groupManagementType, GroupType groupType, boolean z, boolean z2, boolean z3) {
            super(str, str2, groupManagementType);
            if (groupType == null) {
                throw new IllegalArgumentException("Required value for 'groupType' is null");
            }
            this.groupType = groupType;
            this.isMember = z;
            this.isOwner = z2;
            this.sameTeam = z3;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public Builder withGroupExternalId(String str) {
            super.withGroupExternalId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public Builder withMemberCount(Long l) {
            super.withMemberCount(l);
            return this;
        }

        @Override // com.dropbox.core.v2.teamcommon.GroupSummary.Builder
        public GroupInfo build() {
            return new GroupInfo(this.groupName, this.groupId, this.groupManagementType, this.groupType, this.isMember, this.isOwner, this.sameTeam, this.groupExternalId, this.memberCount);
        }
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupType, Boolean.valueOf(this.isMember), Boolean.valueOf(this.isOwner), Boolean.valueOf(this.sameTeam)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupInfo groupInfo = (GroupInfo) obj;
            if ((this.groupName == groupInfo.groupName || this.groupName.equals(groupInfo.groupName)) && ((this.groupId == groupInfo.groupId || this.groupId.equals(groupInfo.groupId)) && ((this.groupManagementType == groupInfo.groupManagementType || this.groupManagementType.equals(groupInfo.groupManagementType)) && ((this.groupType == groupInfo.groupType || this.groupType.equals(groupInfo.groupType)) && this.isMember == groupInfo.isMember && this.isOwner == groupInfo.isOwner && this.sameTeam == groupInfo.sameTeam && (this.groupExternalId == groupInfo.groupExternalId || (this.groupExternalId != null && this.groupExternalId.equals(groupInfo.groupExternalId))))))) {
                if (this.memberCount == groupInfo.memberCount) {
                    return true;
                }
                if (this.memberCount != null && this.memberCount.equals(groupInfo.memberCount)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupInfo groupInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group_name");
            StoneSerializers.string().serialize(groupInfo.groupName, gVar);
            gVar.a("group_id");
            StoneSerializers.string().serialize(groupInfo.groupId, gVar);
            gVar.a("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(groupInfo.groupManagementType, gVar);
            gVar.a("group_type");
            GroupType.Serializer.INSTANCE.serialize(groupInfo.groupType, gVar);
            gVar.a("is_member");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupInfo.isMember), gVar);
            gVar.a("is_owner");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupInfo.isOwner), gVar);
            gVar.a("same_team");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupInfo.sameTeam), gVar);
            if (groupInfo.groupExternalId != null) {
                gVar.a("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupInfo.groupExternalId, gVar);
            }
            if (groupInfo.memberCount != null) {
                gVar.a("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(groupInfo.memberCount, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            String strDeserialize2;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                Boolean bool = null;
                Boolean bool2 = null;
                Boolean bool3 = null;
                GroupType groupTypeDeserialize = null;
                GroupManagementType groupManagementTypeDeserialize = null;
                String str2 = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group_name".equals(strD)) {
                        boolDeserialize2 = bool2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        String str4 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str4;
                    } else if ("group_id".equals(strD)) {
                        boolDeserialize3 = bool3;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool4 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool4;
                    } else if ("group_management_type".equals(strD)) {
                        groupManagementTypeDeserialize = GroupManagementType.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool5 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool5;
                        String str5 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str5;
                    } else if ("group_type".equals(strD)) {
                        groupTypeDeserialize = GroupType.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool6 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool6;
                        String str6 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str6;
                    } else if ("is_member".equals(strD)) {
                        strDeserialize2 = str2;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool7 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool7;
                    } else if ("is_owner".equals(strD)) {
                        strDeserialize = str3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                        String str7 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str7;
                    } else if ("same_team".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool8 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool8;
                        String str8 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str8;
                    } else if ("group_external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool9 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool9;
                        String str9 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str9;
                    } else if ("member_count".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool10 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool10;
                        String str10 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str10;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        Boolean bool11 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool11;
                        String str11 = str2;
                        boolDeserialize3 = bool3;
                        strDeserialize2 = str11;
                    }
                    bool = boolDeserialize;
                    Boolean bool12 = boolDeserialize2;
                    str3 = strDeserialize;
                    bool2 = bool12;
                    String str12 = strDeserialize2;
                    bool3 = boolDeserialize3;
                    str2 = str12;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"group_name\" missing.");
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"group_id\" missing.");
                }
                if (groupManagementTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"group_management_type\" missing.");
                }
                if (groupTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"group_type\" missing.");
                }
                if (bool3 == null) {
                    throw new j(kVar, "Required field \"is_member\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"is_owner\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"same_team\" missing.");
                }
                GroupInfo groupInfo = new GroupInfo(str3, str2, groupManagementTypeDeserialize, groupTypeDeserialize, bool3.booleanValue(), bool2.booleanValue(), bool.booleanValue(), str, l);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
