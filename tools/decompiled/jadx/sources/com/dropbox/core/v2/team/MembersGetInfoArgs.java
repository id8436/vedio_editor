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
class MembersGetInfoArgs {
    protected final List<UserSelectorArg> members;

    public MembersGetInfoArgs(List<UserSelectorArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<UserSelectorArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
    }

    public List<UserSelectorArg> getMembers() {
        return this.members;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersGetInfoArgs membersGetInfoArgs = (MembersGetInfoArgs) obj;
        return this.members == membersGetInfoArgs.members || this.members.equals(membersGetInfoArgs.members);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersGetInfoArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersGetInfoArgs membersGetInfoArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("members");
            StoneSerializers.list(UserSelectorArg.Serializer.INSTANCE).serialize(membersGetInfoArgs.members, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersGetInfoArgs deserialize(k kVar, boolean z) throws IOException {
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
                    if ("members".equals(strD)) {
                        list = (List) StoneSerializers.list(UserSelectorArg.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                MembersGetInfoArgs membersGetInfoArgs = new MembersGetInfoArgs(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersGetInfoArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
