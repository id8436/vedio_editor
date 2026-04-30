package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class MembersRecoverArg {
    protected final UserSelectorArg user;

    public MembersRecoverArg(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersRecoverArg membersRecoverArg = (MembersRecoverArg) obj;
        return this.user == membersRecoverArg.user || this.user.equals(membersRecoverArg.user);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersRecoverArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersRecoverArg membersRecoverArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(membersRecoverArg.user, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersRecoverArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserSelectorArg userSelectorArgDeserialize = null;
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
                    if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                MembersRecoverArg membersRecoverArg = new MembersRecoverArg(userSelectorArgDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersRecoverArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
