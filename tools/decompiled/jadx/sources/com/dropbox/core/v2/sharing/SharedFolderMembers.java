package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.GroupMembershipInfo;
import com.dropbox.core.v2.sharing.InviteeMembershipInfo;
import com.dropbox.core.v2.sharing.UserMembershipInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderMembers {
    protected final String cursor;
    protected final List<GroupMembershipInfo> groups;
    protected final List<InviteeMembershipInfo> invitees;
    protected final List<UserMembershipInfo> users;

    public SharedFolderMembers(List<UserMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserMembershipInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'groups' is null");
        }
        Iterator<GroupMembershipInfo> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'groups' is null");
            }
        }
        this.groups = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        Iterator<InviteeMembershipInfo> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
        }
        this.invitees = list3;
        this.cursor = str;
    }

    public SharedFolderMembers(List<UserMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3) {
        this(list, list2, list3, null);
    }

    public List<UserMembershipInfo> getUsers() {
        return this.users;
    }

    public List<GroupMembershipInfo> getGroups() {
        return this.groups;
    }

    public List<InviteeMembershipInfo> getInvitees() {
        return this.invitees;
    }

    public String getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.users, this.groups, this.invitees, this.cursor});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderMembers sharedFolderMembers = (SharedFolderMembers) obj;
            if ((this.users == sharedFolderMembers.users || this.users.equals(sharedFolderMembers.users)) && ((this.groups == sharedFolderMembers.groups || this.groups.equals(sharedFolderMembers.groups)) && (this.invitees == sharedFolderMembers.invitees || this.invitees.equals(sharedFolderMembers.invitees)))) {
                if (this.cursor == sharedFolderMembers.cursor) {
                    return true;
                }
                if (this.cursor != null && this.cursor.equals(sharedFolderMembers.cursor)) {
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

    class Serializer extends StructSerializer<SharedFolderMembers> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderMembers sharedFolderMembers, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("users");
            StoneSerializers.list(UserMembershipInfo.Serializer.INSTANCE).serialize(sharedFolderMembers.users, gVar);
            gVar.a("groups");
            StoneSerializers.list(GroupMembershipInfo.Serializer.INSTANCE).serialize(sharedFolderMembers.groups, gVar);
            gVar.a("invitees");
            StoneSerializers.list(InviteeMembershipInfo.Serializer.INSTANCE).serialize(sharedFolderMembers.invitees, gVar);
            if (sharedFolderMembers.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderMembers.cursor, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderMembers deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            List list;
            List list2;
            List list3;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list4 = null;
                List list5 = null;
                List list6 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("users".equals(strD)) {
                        String str3 = str2;
                        list = list4;
                        list2 = list5;
                        list3 = (List) StoneSerializers.list(UserMembershipInfo.Serializer.INSTANCE).deserialize(kVar);
                        str = str3;
                    } else if ("groups".equals(strD)) {
                        list3 = list6;
                        List list7 = list4;
                        list2 = (List) StoneSerializers.list(GroupMembershipInfo.Serializer.INSTANCE).deserialize(kVar);
                        str = str2;
                        list = list7;
                    } else if ("invitees".equals(strD)) {
                        list2 = list5;
                        list3 = list6;
                        String str4 = str2;
                        list = (List) StoneSerializers.list(InviteeMembershipInfo.Serializer.INSTANCE).deserialize(kVar);
                        str = str4;
                    } else if ("cursor".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list4;
                        list2 = list5;
                        list3 = list6;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        list = list4;
                        list2 = list5;
                        list3 = list6;
                    }
                    list6 = list3;
                    list5 = list2;
                    list4 = list;
                    str2 = str;
                }
                if (list6 == null) {
                    throw new j(kVar, "Required field \"users\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"groups\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"invitees\" missing.");
                }
                SharedFolderMembers sharedFolderMembers = new SharedFolderMembers(list6, list5, list4, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderMembers;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
