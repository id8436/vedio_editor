package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.AdminTier;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class MembersSetPermissionsArg {
    protected final AdminTier newRole;
    protected final UserSelectorArg user;

    public MembersSetPermissionsArg(UserSelectorArg userSelectorArg, AdminTier adminTier) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'newRole' is null");
        }
        this.newRole = adminTier;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public AdminTier getNewRole() {
        return this.newRole;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.newRole});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersSetPermissionsArg membersSetPermissionsArg = (MembersSetPermissionsArg) obj;
            return (this.user == membersSetPermissionsArg.user || this.user.equals(membersSetPermissionsArg.user)) && (this.newRole == membersSetPermissionsArg.newRole || this.newRole.equals(membersSetPermissionsArg.newRole));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersSetPermissionsArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersSetPermissionsArg membersSetPermissionsArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(membersSetPermissionsArg.user, gVar);
            gVar.a("new_role");
            AdminTier.Serializer.INSTANCE.serialize(membersSetPermissionsArg.newRole, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersSetPermissionsArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AdminTier adminTierDeserialize = null;
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
                    } else if ("new_role".equals(strD)) {
                        adminTierDeserialize = AdminTier.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                if (adminTierDeserialize == null) {
                    throw new j(kVar, "Required field \"new_role\" missing.");
                }
                MembersSetPermissionsArg membersSetPermissionsArg = new MembersSetPermissionsArg(userSelectorArgDeserialize, adminTierDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersSetPermissionsArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
