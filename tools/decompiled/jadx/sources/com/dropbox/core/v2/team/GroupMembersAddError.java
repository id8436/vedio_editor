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
public final class GroupMembersAddError {
    private Tag _tag;
    private List<String> membersNotInTeamValue;
    private List<String> userCannotBeManagerOfCompanyManagedGroupValue;
    private List<String> usersNotFoundValue;
    public static final GroupMembersAddError GROUP_NOT_FOUND = new GroupMembersAddError().withTag(Tag.GROUP_NOT_FOUND);
    public static final GroupMembersAddError OTHER = new GroupMembersAddError().withTag(Tag.OTHER);
    public static final GroupMembersAddError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersAddError().withTag(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
    public static final GroupMembersAddError DUPLICATE_USER = new GroupMembersAddError().withTag(Tag.DUPLICATE_USER);
    public static final GroupMembersAddError GROUP_NOT_IN_TEAM = new GroupMembersAddError().withTag(Tag.GROUP_NOT_IN_TEAM);
    public static final GroupMembersAddError USER_MUST_BE_ACTIVE_TO_BE_OWNER = new GroupMembersAddError().withTag(Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER);

    public enum Tag {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        DUPLICATE_USER,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND,
        USER_MUST_BE_ACTIVE_TO_BE_OWNER,
        USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP
    }

    private GroupMembersAddError() {
    }

    private GroupMembersAddError withTag(Tag tag) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError._tag = tag;
        return groupMembersAddError;
    }

    private GroupMembersAddError withTagAndMembersNotInTeam(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError._tag = tag;
        groupMembersAddError.membersNotInTeamValue = list;
        return groupMembersAddError;
    }

    private GroupMembersAddError withTagAndUsersNotFound(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError._tag = tag;
        groupMembersAddError.usersNotFoundValue = list;
        return groupMembersAddError;
    }

    private GroupMembersAddError withTagAndUserCannotBeManagerOfCompanyManagedGroup(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError._tag = tag;
        groupMembersAddError.userCannotBeManagerOfCompanyManagedGroupValue = list;
        return groupMembersAddError;
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

    public boolean isDuplicateUser() {
        return this._tag == Tag.DUPLICATE_USER;
    }

    public boolean isGroupNotInTeam() {
        return this._tag == Tag.GROUP_NOT_IN_TEAM;
    }

    public boolean isMembersNotInTeam() {
        return this._tag == Tag.MEMBERS_NOT_IN_TEAM;
    }

    public static GroupMembersAddError membersNotInTeam(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().withTagAndMembersNotInTeam(Tag.MEMBERS_NOT_IN_TEAM, list);
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

    public static GroupMembersAddError usersNotFound(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().withTagAndUsersNotFound(Tag.USERS_NOT_FOUND, list);
    }

    public List<String> getUsersNotFoundValue() {
        if (this._tag != Tag.USERS_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.usersNotFoundValue;
    }

    public boolean isUserMustBeActiveToBeOwner() {
        return this._tag == Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
    }

    public boolean isUserCannotBeManagerOfCompanyManagedGroup() {
        return this._tag == Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
    }

    public static GroupMembersAddError userCannotBeManagerOfCompanyManagedGroup(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().withTagAndUserCannotBeManagerOfCompanyManagedGroup(Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, list);
    }

    public List<String> getUserCannotBeManagerOfCompanyManagedGroupValue() {
        if (this._tag != Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag." + this._tag.name());
        }
        return this.userCannotBeManagerOfCompanyManagedGroupValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.membersNotInTeamValue, this.usersNotFoundValue, this.userCannotBeManagerOfCompanyManagedGroupValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof GroupMembersAddError)) {
            GroupMembersAddError groupMembersAddError = (GroupMembersAddError) obj;
            if (this._tag != groupMembersAddError._tag) {
                return false;
            }
            switch (this._tag) {
                case GROUP_NOT_FOUND:
                case OTHER:
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                case DUPLICATE_USER:
                case GROUP_NOT_IN_TEAM:
                case USER_MUST_BE_ACTIVE_TO_BE_OWNER:
                    return true;
                case MEMBERS_NOT_IN_TEAM:
                    return this.membersNotInTeamValue == groupMembersAddError.membersNotInTeamValue || this.membersNotInTeamValue.equals(groupMembersAddError.membersNotInTeamValue);
                case USERS_NOT_FOUND:
                    return this.usersNotFoundValue == groupMembersAddError.usersNotFoundValue || this.usersNotFoundValue.equals(groupMembersAddError.usersNotFoundValue);
                case USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:
                    return this.userCannotBeManagerOfCompanyManagedGroupValue == groupMembersAddError.userCannotBeManagerOfCompanyManagedGroupValue || this.userCannotBeManagerOfCompanyManagedGroupValue.equals(groupMembersAddError.userCannotBeManagerOfCompanyManagedGroupValue);
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

    class Serializer extends UnionSerializer<GroupMembersAddError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupMembersAddError groupMembersAddError, g gVar) throws IOException {
            switch (groupMembersAddError.tag()) {
                case GROUP_NOT_FOUND:
                    gVar.b("group_not_found");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SYSTEM_MANAGED_GROUP_DISALLOWED:
                    gVar.b("system_managed_group_disallowed");
                    return;
                case DUPLICATE_USER:
                    gVar.b("duplicate_user");
                    return;
                case GROUP_NOT_IN_TEAM:
                    gVar.b("group_not_in_team");
                    return;
                case MEMBERS_NOT_IN_TEAM:
                    gVar.e();
                    writeTag("members_not_in_team", gVar);
                    gVar.a("members_not_in_team");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupMembersAddError.membersNotInTeamValue, gVar);
                    gVar.f();
                    return;
                case USERS_NOT_FOUND:
                    gVar.e();
                    writeTag("users_not_found", gVar);
                    gVar.a("users_not_found");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupMembersAddError.usersNotFoundValue, gVar);
                    gVar.f();
                    return;
                case USER_MUST_BE_ACTIVE_TO_BE_OWNER:
                    gVar.b("user_must_be_active_to_be_owner");
                    return;
                case USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:
                    gVar.e();
                    writeTag("user_cannot_be_manager_of_company_managed_group", gVar);
                    gVar.a("user_cannot_be_manager_of_company_managed_group");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupMembersAddError.userCannotBeManagerOfCompanyManagedGroupValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupMembersAddError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupMembersAddError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupMembersAddError groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup;
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
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.GROUP_NOT_FOUND;
            } else if ("other".equals(tag)) {
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.OTHER;
            } else if ("system_managed_group_disallowed".equals(tag)) {
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("duplicate_user".equals(tag)) {
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.DUPLICATE_USER;
            } else if ("group_not_in_team".equals(tag)) {
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.GROUP_NOT_IN_TEAM;
            } else if ("members_not_in_team".equals(tag)) {
                expectField("members_not_in_team", kVar);
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.membersNotInTeam((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else if ("users_not_found".equals(tag)) {
                expectField("users_not_found", kVar);
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.usersNotFound((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else if ("user_must_be_active_to_be_owner".equals(tag)) {
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
            } else if ("user_cannot_be_manager_of_company_managed_group".equals(tag)) {
                expectField("user_cannot_be_manager_of_company_managed_group", kVar);
                groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.userCannotBeManagerOfCompanyManagedGroup((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup;
        }
    }
}
