package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.GroupInfo;
import com.dropbox.core.v2.sharing.MemberPermission;
import com.dropbox.core.v2.sharing.MembershipInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GroupMembershipInfo extends MembershipInfo {
    protected final GroupInfo group;

    public GroupMembershipInfo(AccessLevel accessLevel, GroupInfo groupInfo, List<MemberPermission> list, String str, boolean z) {
        super(accessLevel, list, str, z);
        if (groupInfo == null) {
            throw new IllegalArgumentException("Required value for 'group' is null");
        }
        this.group = groupInfo;
    }

    public GroupMembershipInfo(AccessLevel accessLevel, GroupInfo groupInfo) {
        this(accessLevel, groupInfo, null, null, false);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public GroupInfo getGroup() {
        return this.group;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    public static Builder newBuilder(AccessLevel accessLevel, GroupInfo groupInfo) {
        return new Builder(accessLevel, groupInfo);
    }

    public class Builder extends MembershipInfo.Builder {
        protected final GroupInfo group;

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        protected Builder(AccessLevel accessLevel, GroupInfo groupInfo) {
            super(accessLevel);
            if (groupInfo == null) {
                throw new IllegalArgumentException("Required value for 'group' is null");
            }
            this.group = groupInfo;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public GroupMembershipInfo build() {
            return new GroupMembershipInfo(this.accessType, this.group, this.permissions, this.initials, this.isInherited);
        }
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.group}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMembershipInfo groupMembershipInfo = (GroupMembershipInfo) obj;
            return (this.accessType == groupMembershipInfo.accessType || this.accessType.equals(groupMembershipInfo.accessType)) && (this.group == groupMembershipInfo.group || this.group.equals(groupMembershipInfo.group)) && ((this.permissions == groupMembershipInfo.permissions || (this.permissions != null && this.permissions.equals(groupMembershipInfo.permissions))) && ((this.initials == groupMembershipInfo.initials || (this.initials != null && this.initials.equals(groupMembershipInfo.initials))) && this.isInherited == groupMembershipInfo.isInherited));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupMembershipInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMembershipInfo groupMembershipInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(groupMembershipInfo.accessType, gVar);
            gVar.a("group");
            GroupInfo.Serializer.INSTANCE.serialize(groupMembershipInfo.group, gVar);
            if (groupMembershipInfo.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).serialize(groupMembershipInfo.permissions, gVar);
            }
            if (groupMembershipInfo.initials != null) {
                gVar.a("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupMembershipInfo.initials, gVar);
            }
            gVar.a("is_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupMembershipInfo.isInherited), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMembershipInfo deserialize(k kVar, boolean z) throws IOException {
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
                Boolean bool = false;
                List list = null;
                GroupInfo groupInfoDeserialize = null;
                AccessLevel accessLevelDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("group".equals(strD)) {
                        groupInfoDeserialize = GroupInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("permissions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("initials".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_inherited".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (accessLevelDeserialize == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                if (groupInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"group\" missing.");
                }
                GroupMembershipInfo groupMembershipInfo = new GroupMembershipInfo(accessLevelDeserialize, groupInfoDeserialize, list, str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMembershipInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
