package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupSelector;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GroupUpdateArgs extends IncludeMembersArg {
    protected final GroupSelector group;
    protected final String newGroupExternalId;
    protected final GroupManagementType newGroupManagementType;
    protected final String newGroupName;

    public GroupUpdateArgs(GroupSelector groupSelector, boolean z, String str, String str2, GroupManagementType groupManagementType) {
        super(z);
        if (groupSelector == null) {
            throw new IllegalArgumentException("Required value for 'group' is null");
        }
        this.group = groupSelector;
        this.newGroupName = str;
        this.newGroupExternalId = str2;
        this.newGroupManagementType = groupManagementType;
    }

    public GroupUpdateArgs(GroupSelector groupSelector) {
        this(groupSelector, true, null, null, null);
    }

    public GroupSelector getGroup() {
        return this.group;
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public boolean getReturnMembers() {
        return this.returnMembers;
    }

    public String getNewGroupName() {
        return this.newGroupName;
    }

    public String getNewGroupExternalId() {
        return this.newGroupExternalId;
    }

    public GroupManagementType getNewGroupManagementType() {
        return this.newGroupManagementType;
    }

    public static Builder newBuilder(GroupSelector groupSelector) {
        return new Builder(groupSelector);
    }

    public class Builder {
        protected final GroupSelector group;
        protected String newGroupExternalId;
        protected GroupManagementType newGroupManagementType;
        protected String newGroupName;
        protected boolean returnMembers;

        protected Builder(GroupSelector groupSelector) {
            if (groupSelector == null) {
                throw new IllegalArgumentException("Required value for 'group' is null");
            }
            this.group = groupSelector;
            this.returnMembers = true;
            this.newGroupName = null;
            this.newGroupExternalId = null;
            this.newGroupManagementType = null;
        }

        public Builder withReturnMembers(Boolean bool) {
            if (bool != null) {
                this.returnMembers = bool.booleanValue();
            } else {
                this.returnMembers = true;
            }
            return this;
        }

        public Builder withNewGroupName(String str) {
            this.newGroupName = str;
            return this;
        }

        public Builder withNewGroupExternalId(String str) {
            this.newGroupExternalId = str;
            return this;
        }

        public Builder withNewGroupManagementType(GroupManagementType groupManagementType) {
            this.newGroupManagementType = groupManagementType;
            return this;
        }

        public GroupUpdateArgs build() {
            return new GroupUpdateArgs(this.group, this.returnMembers, this.newGroupName, this.newGroupExternalId, this.newGroupManagementType);
        }
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.group, this.newGroupName, this.newGroupExternalId, this.newGroupManagementType}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupUpdateArgs groupUpdateArgs = (GroupUpdateArgs) obj;
            if ((this.group == groupUpdateArgs.group || this.group.equals(groupUpdateArgs.group)) && this.returnMembers == groupUpdateArgs.returnMembers && ((this.newGroupName == groupUpdateArgs.newGroupName || (this.newGroupName != null && this.newGroupName.equals(groupUpdateArgs.newGroupName))) && (this.newGroupExternalId == groupUpdateArgs.newGroupExternalId || (this.newGroupExternalId != null && this.newGroupExternalId.equals(groupUpdateArgs.newGroupExternalId))))) {
                if (this.newGroupManagementType == groupUpdateArgs.newGroupManagementType) {
                    return true;
                }
                if (this.newGroupManagementType != null && this.newGroupManagementType.equals(groupUpdateArgs.newGroupManagementType)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupUpdateArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupUpdateArgs groupUpdateArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group");
            GroupSelector.Serializer.INSTANCE.serialize(groupUpdateArgs.group, gVar);
            gVar.a("return_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupUpdateArgs.returnMembers), gVar);
            if (groupUpdateArgs.newGroupName != null) {
                gVar.a("new_group_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupUpdateArgs.newGroupName, gVar);
            }
            if (groupUpdateArgs.newGroupExternalId != null) {
                gVar.a("new_group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupUpdateArgs.newGroupExternalId, gVar);
            }
            if (groupUpdateArgs.newGroupManagementType != null) {
                gVar.a("new_group_management_type");
                StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize(groupUpdateArgs.newGroupManagementType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupUpdateArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            GroupManagementType groupManagementType = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                String str = null;
                String str2 = null;
                GroupSelector groupSelectorDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group".equals(strD)) {
                        groupSelectorDeserialize = GroupSelector.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("return_members".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("new_group_name".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("new_group_external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("new_group_management_type".equals(strD)) {
                        groupManagementType = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (groupSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"group\" missing.");
                }
                GroupUpdateArgs groupUpdateArgs = new GroupUpdateArgs(groupSelectorDeserialize, bool.booleanValue(), str2, str, groupManagementType);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupUpdateArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
