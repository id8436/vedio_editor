package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.Cursor;
import com.dropbox.core.v2.sharing.InviteeInfo;
import com.dropbox.core.v2.sharing.UserInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListUsersOnFolderResponse {
    protected final Cursor cursor;
    protected final boolean hasMore;
    protected final List<InviteeInfo> invitees;
    protected final List<UserInfo> users;

    public ListUsersOnFolderResponse(List<InviteeInfo> list, List<UserInfo> list2, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        Iterator<InviteeInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
        }
        this.invitees = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserInfo> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list2;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public List<InviteeInfo> getInvitees() {
        return this.invitees;
    }

    public List<UserInfo> getUsers() {
        return this.users;
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitees, this.users, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListUsersOnFolderResponse listUsersOnFolderResponse = (ListUsersOnFolderResponse) obj;
            return (this.invitees == listUsersOnFolderResponse.invitees || this.invitees.equals(listUsersOnFolderResponse.invitees)) && (this.users == listUsersOnFolderResponse.users || this.users.equals(listUsersOnFolderResponse.users)) && ((this.cursor == listUsersOnFolderResponse.cursor || this.cursor.equals(listUsersOnFolderResponse.cursor)) && this.hasMore == listUsersOnFolderResponse.hasMore);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListUsersOnFolderResponse> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListUsersOnFolderResponse listUsersOnFolderResponse, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("invitees");
            StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).serialize(listUsersOnFolderResponse.invitees, gVar);
            gVar.a("users");
            StoneSerializers.list(UserInfo.Serializer.INSTANCE).serialize(listUsersOnFolderResponse.users, gVar);
            gVar.a("cursor");
            Cursor.Serializer.INSTANCE.serialize(listUsersOnFolderResponse.cursor, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listUsersOnFolderResponse.hasMore), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListUsersOnFolderResponse deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Cursor cursorDeserialize;
            List list;
            List list2;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Cursor cursor = null;
                List list3 = null;
                List list4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("invitees".equals(strD)) {
                        Boolean bool2 = bool;
                        cursorDeserialize = cursor;
                        list = list3;
                        list2 = (List) StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("users".equals(strD)) {
                        list2 = list4;
                        Cursor cursor2 = cursor;
                        list = (List) StoneSerializers.list(UserInfo.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        cursorDeserialize = cursor2;
                    } else if ("cursor".equals(strD)) {
                        list = list3;
                        list2 = list4;
                        Boolean bool3 = bool;
                        cursorDeserialize = Cursor.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool3;
                    } else if ("has_more".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        cursorDeserialize = cursor;
                        list = list3;
                        list2 = list4;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        cursorDeserialize = cursor;
                        list = list3;
                        list2 = list4;
                    }
                    list4 = list2;
                    list3 = list;
                    cursor = cursorDeserialize;
                    bool = boolDeserialize;
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"invitees\" missing.");
                }
                if (list3 == null) {
                    throw new j(kVar, "Required field \"users\" missing.");
                }
                if (cursor == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                ListUsersOnFolderResponse listUsersOnFolderResponse = new ListUsersOnFolderResponse(list4, list3, cursor, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listUsersOnFolderResponse;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
