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

/* JADX INFO: loaded from: classes2.dex */
class MembersDeactivateArg {
    protected final UserSelectorArg user;
    protected final boolean wipeData;

    public MembersDeactivateArg(UserSelectorArg userSelectorArg, boolean z) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        this.wipeData = z;
    }

    public MembersDeactivateArg(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, true);
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public boolean getWipeData() {
        return this.wipeData;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, Boolean.valueOf(this.wipeData)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersDeactivateArg membersDeactivateArg = (MembersDeactivateArg) obj;
            return (this.user == membersDeactivateArg.user || this.user.equals(membersDeactivateArg.user)) && this.wipeData == membersDeactivateArg.wipeData;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersDeactivateArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersDeactivateArg membersDeactivateArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(membersDeactivateArg.user, gVar);
            gVar.a("wipe_data");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membersDeactivateArg.wipeData), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersDeactivateArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserSelectorArg userSelectorArgDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean boolDeserialize = true;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("wipe_data".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                MembersDeactivateArg membersDeactivateArg = new MembersDeactivateArg(userSelectorArgDeserialize, boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersDeactivateArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
