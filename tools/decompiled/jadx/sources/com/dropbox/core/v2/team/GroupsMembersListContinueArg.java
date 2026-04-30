package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GroupsMembersListContinueArg {
    protected final String cursor;

    public GroupsMembersListContinueArg(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
    }

    public String getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupsMembersListContinueArg groupsMembersListContinueArg = (GroupsMembersListContinueArg) obj;
        return this.cursor == groupsMembersListContinueArg.cursor || this.cursor.equals(groupsMembersListContinueArg.cursor);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupsMembersListContinueArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupsMembersListContinueArg groupsMembersListContinueArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("cursor");
            StoneSerializers.string().serialize(groupsMembersListContinueArg.cursor, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupsMembersListContinueArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("cursor".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                GroupsMembersListContinueArg groupsMembersListContinueArg = new GroupsMembersListContinueArg(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupsMembersListContinueArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
