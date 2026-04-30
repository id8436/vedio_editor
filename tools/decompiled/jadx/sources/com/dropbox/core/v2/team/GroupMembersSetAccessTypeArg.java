package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupAccessType;
import com.dropbox.core.v2.team.GroupSelector;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GroupMembersSetAccessTypeArg extends GroupMemberSelector {
    protected final GroupAccessType accessType;
    protected final boolean returnMembers;

    public GroupMembersSetAccessTypeArg(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType, boolean z) {
        super(groupSelector, userSelectorArg);
        if (groupAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = groupAccessType;
        this.returnMembers = z;
    }

    public GroupMembersSetAccessTypeArg(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) {
        this(groupSelector, userSelectorArg, groupAccessType, true);
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public GroupSelector getGroup() {
        return this.group;
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public UserSelectorArg getUser() {
        return this.user;
    }

    public GroupAccessType getAccessType() {
        return this.accessType;
    }

    public boolean getReturnMembers() {
        return this.returnMembers;
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, Boolean.valueOf(this.returnMembers)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMembersSetAccessTypeArg groupMembersSetAccessTypeArg = (GroupMembersSetAccessTypeArg) obj;
            return (this.group == groupMembersSetAccessTypeArg.group || this.group.equals(groupMembersSetAccessTypeArg.group)) && (this.user == groupMembersSetAccessTypeArg.user || this.user.equals(groupMembersSetAccessTypeArg.user)) && ((this.accessType == groupMembersSetAccessTypeArg.accessType || this.accessType.equals(groupMembersSetAccessTypeArg.accessType)) && this.returnMembers == groupMembersSetAccessTypeArg.returnMembers);
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.GroupMemberSelector
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupMembersSetAccessTypeArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMembersSetAccessTypeArg groupMembersSetAccessTypeArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group");
            GroupSelector.Serializer.INSTANCE.serialize(groupMembersSetAccessTypeArg.group, gVar);
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(groupMembersSetAccessTypeArg.user, gVar);
            gVar.a("access_type");
            GroupAccessType.Serializer.INSTANCE.serialize(groupMembersSetAccessTypeArg.accessType, gVar);
            gVar.a("return_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupMembersSetAccessTypeArg.returnMembers), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMembersSetAccessTypeArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupAccessType groupAccessTypeDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean boolDeserialize = true;
                UserSelectorArg userSelectorArgDeserialize = null;
                GroupSelector groupSelectorDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group".equals(strD)) {
                        groupSelectorDeserialize = GroupSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("access_type".equals(strD)) {
                        groupAccessTypeDeserialize = GroupAccessType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("return_members".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (groupSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"group\" missing.");
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                if (groupAccessTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                GroupMembersSetAccessTypeArg groupMembersSetAccessTypeArg = new GroupMembersSetAccessTypeArg(groupSelectorDeserialize, userSelectorArgDeserialize, groupAccessTypeDeserialize, boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMembersSetAccessTypeArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
