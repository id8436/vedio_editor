package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupAccessType;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberAccess {
    protected final GroupAccessType accessType;
    protected final UserSelectorArg user;

    public MemberAccess(UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (groupAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = groupAccessType;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public GroupAccessType getAccessType() {
        return this.accessType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.accessType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberAccess memberAccess = (MemberAccess) obj;
            return (this.user == memberAccess.user || this.user.equals(memberAccess.user)) && (this.accessType == memberAccess.accessType || this.accessType.equals(memberAccess.accessType));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberAccess> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberAccess memberAccess, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(memberAccess.user, gVar);
            gVar.a("access_type");
            GroupAccessType.Serializer.INSTANCE.serialize(memberAccess.accessType, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberAccess deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupAccessType groupAccessTypeDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UserSelectorArg userSelectorArgDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("access_type".equals(strD)) {
                        groupAccessTypeDeserialize = GroupAccessType.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                if (groupAccessTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                MemberAccess memberAccess = new MemberAccess(userSelectorArgDeserialize, groupAccessTypeDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberAccess;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
