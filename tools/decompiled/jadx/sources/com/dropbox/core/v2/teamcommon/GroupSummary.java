package com.dropbox.core.v2.teamcommon;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupSummary {
    protected final String groupExternalId;
    protected final String groupId;
    protected final GroupManagementType groupManagementType;
    protected final String groupName;
    protected final Long memberCount;

    public GroupSummary(String str, String str2, GroupManagementType groupManagementType, String str3, Long l) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'groupName' is null");
        }
        this.groupName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'groupId' is null");
        }
        this.groupId = str2;
        this.groupExternalId = str3;
        this.memberCount = l;
        if (groupManagementType == null) {
            throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
        }
        this.groupManagementType = groupManagementType;
    }

    public GroupSummary(String str, String str2, GroupManagementType groupManagementType) {
        this(str, str2, groupManagementType, null, null);
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public GroupManagementType getGroupManagementType() {
        return this.groupManagementType;
    }

    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    public Long getMemberCount() {
        return this.memberCount;
    }

    public static Builder newBuilder(String str, String str2, GroupManagementType groupManagementType) {
        return new Builder(str, str2, groupManagementType);
    }

    public class Builder {
        protected String groupExternalId;
        protected final String groupId;
        protected final GroupManagementType groupManagementType;
        protected final String groupName;
        protected Long memberCount;

        protected Builder(String str, String str2, GroupManagementType groupManagementType) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'groupName' is null");
            }
            this.groupName = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'groupId' is null");
            }
            this.groupId = str2;
            if (groupManagementType == null) {
                throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
            }
            this.groupManagementType = groupManagementType;
            this.groupExternalId = null;
            this.memberCount = null;
        }

        public Builder withGroupExternalId(String str) {
            this.groupExternalId = str;
            return this;
        }

        public Builder withMemberCount(Long l) {
            this.memberCount = l;
            return this;
        }

        public GroupSummary build() {
            return new GroupSummary(this.groupName, this.groupId, this.groupManagementType, this.groupExternalId, this.memberCount);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupName, this.groupId, this.groupExternalId, this.memberCount, this.groupManagementType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupSummary groupSummary = (GroupSummary) obj;
            if ((this.groupName == groupSummary.groupName || this.groupName.equals(groupSummary.groupName)) && ((this.groupId == groupSummary.groupId || this.groupId.equals(groupSummary.groupId)) && ((this.groupManagementType == groupSummary.groupManagementType || this.groupManagementType.equals(groupSummary.groupManagementType)) && (this.groupExternalId == groupSummary.groupExternalId || (this.groupExternalId != null && this.groupExternalId.equals(groupSummary.groupExternalId)))))) {
                if (this.memberCount == groupSummary.memberCount) {
                    return true;
                }
                if (this.memberCount != null && this.memberCount.equals(groupSummary.memberCount)) {
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

    public class Serializer extends StructSerializer<GroupSummary> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupSummary groupSummary, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group_name");
            StoneSerializers.string().serialize(groupSummary.groupName, gVar);
            gVar.a("group_id");
            StoneSerializers.string().serialize(groupSummary.groupId, gVar);
            gVar.a("group_management_type");
            GroupManagementType.Serializer.INSTANCE.serialize(groupSummary.groupManagementType, gVar);
            if (groupSummary.groupExternalId != null) {
                gVar.a("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupSummary.groupExternalId, gVar);
            }
            if (groupSummary.memberCount != null) {
                gVar.a("member_count");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(groupSummary.memberCount, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupSummary deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                GroupManagementType groupManagementTypeDeserialize = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group_name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("group_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("group_management_type".equals(strD)) {
                        groupManagementTypeDeserialize = GroupManagementType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("group_external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("member_count".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
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
                GroupSummary groupSummary = new GroupSummary(strDeserialize2, strDeserialize, groupManagementTypeDeserialize, str, l);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupSummary;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
