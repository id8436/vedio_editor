package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class CustomQuotaUsersArg {
    protected final List<UserSelectorArg> users;

    public CustomQuotaUsersArg(List<UserSelectorArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserSelectorArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list;
    }

    public List<UserSelectorArg> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.users});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CustomQuotaUsersArg customQuotaUsersArg = (CustomQuotaUsersArg) obj;
        return this.users == customQuotaUsersArg.users || this.users.equals(customQuotaUsersArg.users);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CustomQuotaUsersArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CustomQuotaUsersArg customQuotaUsersArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("users");
            StoneSerializers.list(UserSelectorArg.Serializer.INSTANCE).serialize(customQuotaUsersArg.users, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CustomQuotaUsersArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("users".equals(strD)) {
                        list = (List) StoneSerializers.list(UserSelectorArg.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"users\" missing.");
                }
                CustomQuotaUsersArg customQuotaUsersArg = new CustomQuotaUsersArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return customQuotaUsersArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
