package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupSelector;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GroupMemberSelector {
    protected final GroupSelector group;
    protected final UserSelectorArg user;

    public GroupMemberSelector(GroupSelector groupSelector, UserSelectorArg userSelectorArg) {
        if (groupSelector == null) {
            throw new IllegalArgumentException("Required value for 'group' is null");
        }
        this.group = groupSelector;
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
    }

    public GroupSelector getGroup() {
        return this.group;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.group, this.user});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMemberSelector groupMemberSelector = (GroupMemberSelector) obj;
            return (this.group == groupMemberSelector.group || this.group.equals(groupMemberSelector.group)) && (this.user == groupMemberSelector.user || this.user.equals(groupMemberSelector.user));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupMemberSelector> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMemberSelector groupMemberSelector, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group");
            GroupSelector.Serializer.INSTANCE.serialize(groupMemberSelector.group, gVar);
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(groupMemberSelector.user, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMemberSelector deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserSelectorArg userSelectorArgDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GroupSelector groupSelectorDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group".equals(strD)) {
                        groupSelectorDeserialize = GroupSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
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
                GroupMemberSelector groupMemberSelector = new GroupMemberSelector(groupSelectorDeserialize, userSelectorArgDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMemberSelector;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
