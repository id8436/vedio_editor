package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupSelector;
import com.dropbox.core.v2.team.MemberAccess;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class GroupMembersAddArg extends IncludeMembersArg {
    protected final GroupSelector group;
    protected final List<MemberAccess> members;

    public GroupMembersAddArg(GroupSelector groupSelector, List<MemberAccess> list, boolean z) {
        super(z);
        if (groupSelector == null) {
            throw new IllegalArgumentException("Required value for 'group' is null");
        }
        this.group = groupSelector;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<MemberAccess> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
    }

    public GroupMembersAddArg(GroupSelector groupSelector, List<MemberAccess> list) {
        this(groupSelector, list, true);
    }

    public GroupSelector getGroup() {
        return this.group;
    }

    public List<MemberAccess> getMembers() {
        return this.members;
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public boolean getReturnMembers() {
        return this.returnMembers;
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.group, this.members}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.IncludeMembersArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMembersAddArg groupMembersAddArg = (GroupMembersAddArg) obj;
            return (this.group == groupMembersAddArg.group || this.group.equals(groupMembersAddArg.group)) && (this.members == groupMembersAddArg.members || this.members.equals(groupMembersAddArg.members)) && this.returnMembers == groupMembersAddArg.returnMembers;
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

    class Serializer extends StructSerializer<GroupMembersAddArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMembersAddArg groupMembersAddArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group");
            GroupSelector.Serializer.INSTANCE.serialize(groupMembersAddArg.group, gVar);
            gVar.a("members");
            StoneSerializers.list(MemberAccess.Serializer.INSTANCE).serialize(groupMembersAddArg.members, gVar);
            gVar.a("return_members");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupMembersAddArg.returnMembers), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMembersAddArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            List list;
            GroupSelector groupSelectorDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                GroupSelector groupSelector = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group".equals(strD)) {
                        Boolean bool2 = bool;
                        list = list2;
                        groupSelectorDeserialize = GroupSelector.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("members".equals(strD)) {
                        groupSelectorDeserialize = groupSelector;
                        boolDeserialize = bool;
                        list = (List) StoneSerializers.list(MemberAccess.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("return_members".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        list = list2;
                        groupSelectorDeserialize = groupSelector;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        list = list2;
                        groupSelectorDeserialize = groupSelector;
                    }
                    groupSelector = groupSelectorDeserialize;
                    list2 = list;
                    bool = boolDeserialize;
                }
                if (groupSelector == null) {
                    throw new j(kVar, "Required field \"group\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                GroupMembersAddArg groupMembersAddArg = new GroupMembersAddArg(groupSelector, list2, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMembersAddArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
