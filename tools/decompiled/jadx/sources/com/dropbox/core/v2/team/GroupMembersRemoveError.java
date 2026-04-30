package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupMembersRemoveError {
    private Tag _tag;
    private List<String> membersNotInTeamValue;
    private List<String> usersNotFoundValue;
    public static final GroupMembersRemoveError GROUP_NOT_FOUND = new GroupMembersRemoveError().withTag(Tag.GROUP_NOT_FOUND);
    public static final GroupMembersRemoveError OTHER = new GroupMembersRemoveError().withTag(Tag.OTHER);
    public static final GroupMembersRemoveError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersRemoveError().withTag(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
    public static final GroupMembersRemoveError MEMBER_NOT_IN_GROUP = new GroupMembersRemoveError().withTag(Tag.MEMBER_NOT_IN_GROUP);
    public static final GroupMembersRemoveError GROUP_NOT_IN_TEAM = new GroupMembersRemoveError().withTag(Tag.GROUP_NOT_IN_TEAM);

    public enum Tag {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        MEMBER_NOT_IN_GROUP,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND
    }

    private GroupMembersRemoveError() {
    }

    private GroupMembersRemoveError withTag(Tag tag) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError._tag = tag;
        return groupMembersRemoveError;
    }

    private GroupMembersRemoveError withTagAndMembersNotInTeam(Tag tag, List<String> list) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError._tag = tag;
        groupMembersRemoveError.membersNotInTeamValue = list;
        return groupMembersRemoveError;
    }

    private GroupMembersRemoveError withTagAndUsersNotFound(Tag tag, List<String> list) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError._tag = tag;
        groupMembersRemoveError.usersNotFoundValue = list;
        return groupMembersRemoveError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isGroupNotFound() {
        return this._tag == Tag.GROUP_NOT_FOUND;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isSystemManagedGroupDisallowed() {
        return this._tag == Tag.SYSTEM_MANAGED_GROUP_DISALLOWED;
    }

    public boolean isMemberNotInGroup() {
        return this._tag == Tag.MEMBER_NOT_IN_GROUP;
    }

    public boolean isGroupNotInTeam() {
        return this._tag == Tag.GROUP_NOT_IN_TEAM;
    }

    public boolean isMembersNotInTeam() {
        return this._tag == Tag.MEMBERS_NOT_IN_TEAM;
    }

    public static GroupMembersRemoveError membersNotInTeam(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersRemoveError().withTagAndMembersNotInTeam(Tag.MEMBERS_NOT_IN_TEAM, list);
    }

    public List<String> getMembersNotInTeamValue() {
        if (this._tag != Tag.MEMBERS_NOT_IN_TEAM) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag." + this._tag.name());
        }
        return this.membersNotInTeamValue;
    }

    public boolean isUsersNotFound() {
        return this._tag == Tag.USERS_NOT_FOUND;
    }

    public static GroupMembersRemoveError usersNotFound(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersRemoveError().withTagAndUsersNotFound(Tag.USERS_NOT_FOUND, list);
    }

    public List<String> getUsersNotFoundValue() {
        if (this._tag != Tag.USERS_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.usersNotFoundValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.membersNotInTeamValue, this.usersNotFoundValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof GroupMembersRemoveError)) {
            GroupMembersRemoveError groupMembersRemoveError = (GroupMembersRemoveError) obj;
            if (this._tag != groupMembersRemoveError._tag) {
                return false;
            }
            switch (this._tag) {
                case GROUP_NOT_FOUND:
                case OTHER:
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                case MEMBER_NOT_IN_GROUP:
                case GROUP_NOT_IN_TEAM:
                    return true;
                case MEMBERS_NOT_IN_TEAM:
                    return this.membersNotInTeamValue == groupMembersRemoveError.membersNotInTeamValue || this.membersNotInTeamValue.equals(groupMembersRemoveError.membersNotInTeamValue);
                case USERS_NOT_FOUND:
                    return this.usersNotFoundValue == groupMembersRemoveError.usersNotFoundValue || this.usersNotFoundValue.equals(groupMembersRemoveError.usersNotFoundValue);
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<GroupMembersRemoveError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupMembersRemoveError groupMembersRemoveError, g gVar) throws IOException {
            switch (groupMembersRemoveError.tag()) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    return;
                case MEMBER_NOT_IN_GROUP:
                    gVar.b("member_not_in_group");
                    return;
                case GROUP_NOT_IN_TEAM:
                    gVar.b("group_not_in_team");
                    return;
                case MEMBERS_NOT_IN_TEAM:
                    gVar.e();
                    writeTag("members_not_in_team", gVar);
                    gVar.a("members_not_in_team");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupMembersRemoveError.membersNotInTeamValue, gVar);
                    gVar.f();
                    return;
                case USERS_NOT_FOUND:
                    gVar.e();
                    writeTag("users_not_found", gVar);
                    gVar.a("users_not_found");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupMembersRemoveError.usersNotFoundValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupMembersRemoveError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupMembersRemoveError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupMembersRemoveError groupMembersRemoveErrorUsersNotFound;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("group_not_found".equals(tag)) {
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.GROUP_NOT_FOUND;
            } else if ("other".equals(tag)) {
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.OTHER;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("member_not_in_group".equals(tag)) {
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.MEMBER_NOT_IN_GROUP;
            } else if ("group_not_in_team".equals(tag)) {
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.GROUP_NOT_IN_TEAM;
            } else if ("members_not_in_team".equals(tag)) {
                expectField("members_not_in_team", kVar);
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.membersNotInTeam((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else if ("users_not_found".equals(tag)) {
                expectField("users_not_found", kVar);
                groupMembersRemoveErrorUsersNotFound = GroupMembersRemoveError.usersNotFound((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupMembersRemoveErrorUsersNotFound;
        }
    }
}
