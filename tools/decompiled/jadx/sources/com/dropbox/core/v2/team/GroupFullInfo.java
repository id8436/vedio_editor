package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupMemberInfo;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupSummary;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GroupFullInfo extends GroupSummary {
    protected final long created;
    protected final List<GroupMemberInfo> members;

    public GroupFullInfo(String str, String str2, GroupManagementType groupManagementType, long j, String str3, Long l, List<GroupMemberInfo> list) {
        super(str, str2, groupManagementType, str3, l);
        if (list != null) {
            Iterator<GroupMemberInfo> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
        }
        this.members = list;
        this.created = j;
    }

    public GroupFullInfo(String str, String str2, GroupManagementType groupManagementType, long j) {
        this(str, str2, groupManagementType, j, null, null, null);
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

    public long getCreated() {
        return this.created;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public Long getMemberCount() {
        return this.memberCount;
    }

    public List<GroupMemberInfo> getMembers() {
        return this.members;
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType, long j) {
        return new Builder(str, str2, groupManagementType, j);
    }

    public class Builder extends GroupSummary.Builder {
        protected final long created;
        protected List<GroupMemberInfo> members;

        protected Builder(String str, String str2, GroupManagementType groupManagementType, long j) {
            super(str, str2, groupManagementType);
            this.created = j;
            this.members = null;
        }

        public Builder withMembers(List<GroupMemberInfo> list) {
            if (list != null) {
                Iterator<GroupMemberInfo> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'members' is null");
                    }
                }
            }
            this.members = list;
            return this;
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
        public GroupFullInfo build() {
            return new GroupFullInfo(this.groupName, this.groupId, this.groupManagementType, this.created, this.groupExternalId, this.memberCount, this.members);
        }
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members, Long.valueOf(this.created)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.teamcommon.GroupSummary
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupFullInfo groupFullInfo = (GroupFullInfo) obj;
            if ((this.groupName == groupFullInfo.groupName || this.groupName.equals(groupFullInfo.groupName)) && ((this.groupId == groupFullInfo.groupId || this.groupId.equals(groupFullInfo.groupId)) && ((this.groupManagementType == groupFullInfo.groupManagementType || this.groupManagementType.equals(groupFullInfo.groupManagementType)) && this.created == groupFullInfo.created && ((this.groupExternalId == groupFullInfo.groupExternalId || (this.groupExternalId != null && this.groupExternalId.equals(groupFullInfo.groupExternalId))) && (this.memberCount == groupFullInfo.memberCount || (this.memberCount != null && this.memberCount.equals(groupFullInfo.memberCount))))))) {
                if (this.members == groupFullInfo.members) {
                    return true;
                }
                if (this.members != null && this.members.equals(groupFullInfo.members)) {
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

    class Serializer extends StructSerializer<GroupFullInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupFullInfo groupFullInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group_name");
            StoneSerializers.string().serialize(groupFullInfo.groupName, gVar);
            gVar.a("group_id");
            StoneSerializers.string().serialize(groupFullInfo.groupId, gVar);
            gVar.a("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(groupFullInfo.groupManagementType, gVar);
            gVar.a("created");
            StoneSerializers.uInt64().serialize(Long.valueOf(groupFullInfo.created), gVar);
            if (groupFullInfo.groupExternalId != null) {
                gVar.a("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupFullInfo.groupExternalId, gVar);
            }
            if (groupFullInfo.memberCount != null) {
                gVar.a("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(groupFullInfo.memberCount, gVar);
            }
            if (groupFullInfo.members != null) {
                gVar.a("members");
                StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.Serializer.INSTANCE)).serialize(groupFullInfo.members, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupFullInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                String str = null;
                Long l2 = null;
                GroupManagementType groupManagementTypeDeserialize = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group_name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("group_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("group_management_type".equals(strD)) {
                        groupManagementTypeDeserialize = GroupManagementType.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("created".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("group_external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("member_count".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("members".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l2;
                    }
                    l2 = lDeserialize;
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"group_name\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"group_id\" missing.");
                }
                if (groupManagementTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"group_management_type\" missing.");
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"created\" missing.");
                }
                GroupFullInfo groupFullInfo = new GroupFullInfo(strDeserialize2, strDeserialize, groupManagementTypeDeserialize, l2.longValue(), str, l, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupFullInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
