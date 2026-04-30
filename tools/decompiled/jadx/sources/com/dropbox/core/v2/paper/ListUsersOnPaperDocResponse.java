package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.Cursor;
import com.dropbox.core.v2.paper.InviteeInfoWithPermissionLevel;
import com.dropbox.core.v2.paper.UserInfoWithPermissionLevel;
import com.dropbox.core.v2.sharing.UserInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListUsersOnPaperDocResponse {
    protected final Cursor cursor;
    protected final UserInfo docOwner;
    protected final boolean hasMore;
    protected final List<InviteeInfoWithPermissionLevel> invitees;
    protected final List<UserInfoWithPermissionLevel> users;

    public ListUsersOnPaperDocResponse(List<InviteeInfoWithPermissionLevel> list, List<UserInfoWithPermissionLevel> list2, UserInfo userInfo, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        Iterator<InviteeInfoWithPermissionLevel> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
        }
        this.invitees = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserInfoWithPermissionLevel> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list2;
        if (userInfo == null) {
            throw new IllegalArgumentException("Required value for 'docOwner' is null");
        }
        this.docOwner = userInfo;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public List<InviteeInfoWithPermissionLevel> getInvitees() {
        return this.invitees;
    }

    public List<UserInfoWithPermissionLevel> getUsers() {
        return this.users;
    }

    public UserInfo getDocOwner() {
        return this.docOwner;
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitees, this.users, this.docOwner, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListUsersOnPaperDocResponse listUsersOnPaperDocResponse = (ListUsersOnPaperDocResponse) obj;
            return (this.invitees == listUsersOnPaperDocResponse.invitees || this.invitees.equals(listUsersOnPaperDocResponse.invitees)) && (this.users == listUsersOnPaperDocResponse.users || this.users.equals(listUsersOnPaperDocResponse.users)) && ((this.docOwner == listUsersOnPaperDocResponse.docOwner || this.docOwner.equals(listUsersOnPaperDocResponse.docOwner)) && ((this.cursor == listUsersOnPaperDocResponse.cursor || this.cursor.equals(listUsersOnPaperDocResponse.cursor)) && this.hasMore == listUsersOnPaperDocResponse.hasMore));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListUsersOnPaperDocResponse> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListUsersOnPaperDocResponse listUsersOnPaperDocResponse, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("invitees");
            StoneSerializers.list(InviteeInfoWithPermissionLevel.Serializer.INSTANCE).serialize(listUsersOnPaperDocResponse.invitees, gVar);
            gVar.a("users");
            StoneSerializers.list(UserInfoWithPermissionLevel.Serializer.INSTANCE).serialize(listUsersOnPaperDocResponse.users, gVar);
            gVar.a("doc_owner");
            UserInfo.Serializer.INSTANCE.serialize(listUsersOnPaperDocResponse.docOwner, gVar);
            gVar.a("cursor");
            Cursor.Serializer.INSTANCE.serialize(listUsersOnPaperDocResponse.cursor, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listUsersOnPaperDocResponse.hasMore), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListUsersOnPaperDocResponse deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Cursor cursorDeserialize = null;
                UserInfo userInfoDeserialize = null;
                List list = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("invitees".equals(strD)) {
                        list2 = (List) StoneSerializers.list(InviteeInfoWithPermissionLevel.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("users".equals(strD)) {
                        list = (List) StoneSerializers.list(UserInfoWithPermissionLevel.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("doc_owner".equals(strD)) {
                        userInfoDeserialize = UserInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("cursor".equals(strD)) {
                        cursorDeserialize = Cursor.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("has_more".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"invitees\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"users\" missing.");
                }
                if (userInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"doc_owner\" missing.");
                }
                if (cursorDeserialize == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                ListUsersOnPaperDocResponse listUsersOnPaperDocResponse = new ListUsersOnPaperDocResponse(list2, list, userInfoDeserialize, cursorDeserialize, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listUsersOnPaperDocResponse;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
