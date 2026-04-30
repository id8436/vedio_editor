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
class MembersRemoveArg extends MembersDeactivateArg {
    protected final boolean keepAccount;
    protected final UserSelectorArg transferAdminId;
    protected final UserSelectorArg transferDestId;

    public MembersRemoveArg(UserSelectorArg userSelectorArg, boolean z, UserSelectorArg userSelectorArg2, UserSelectorArg userSelectorArg3, boolean z2) {
        super(userSelectorArg, z);
        this.transferDestId = userSelectorArg2;
        this.transferAdminId = userSelectorArg3;
        this.keepAccount = z2;
    }

    public MembersRemoveArg(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, true, null, null, false);
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public UserSelectorArg getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public boolean getWipeData() {
        return this.wipeData;
    }

    public UserSelectorArg getTransferDestId() {
        return this.transferDestId;
    }

    public UserSelectorArg getTransferAdminId() {
        return this.transferAdminId;
    }

    public boolean getKeepAccount() {
        return this.keepAccount;
    }

    public static Builder newBuilder(UserSelectorArg userSelectorArg) {
        return new Builder(userSelectorArg);
    }

    public class Builder {
        protected boolean keepAccount;
        protected UserSelectorArg transferAdminId;
        protected UserSelectorArg transferDestId;
        protected final UserSelectorArg user;
        protected boolean wipeData;

        protected Builder(UserSelectorArg userSelectorArg) {
            if (userSelectorArg == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userSelectorArg;
            this.wipeData = true;
            this.transferDestId = null;
            this.transferAdminId = null;
            this.keepAccount = false;
        }

        public Builder withWipeData(Boolean bool) {
            if (bool != null) {
                this.wipeData = bool.booleanValue();
            } else {
                this.wipeData = true;
            }
            return this;
        }

        public Builder withTransferDestId(UserSelectorArg userSelectorArg) {
            this.transferDestId = userSelectorArg;
            return this;
        }

        public Builder withTransferAdminId(UserSelectorArg userSelectorArg) {
            this.transferAdminId = userSelectorArg;
            return this;
        }

        public Builder withKeepAccount(Boolean bool) {
            if (bool != null) {
                this.keepAccount = bool.booleanValue();
            } else {
                this.keepAccount = false;
            }
            return this;
        }

        public MembersRemoveArg build() {
            return new MembersRemoveArg(this.user, this.wipeData, this.transferDestId, this.transferAdminId, this.keepAccount);
        }
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.transferDestId, this.transferAdminId, Boolean.valueOf(this.keepAccount)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersRemoveArg membersRemoveArg = (MembersRemoveArg) obj;
            return (this.user == membersRemoveArg.user || this.user.equals(membersRemoveArg.user)) && this.wipeData == membersRemoveArg.wipeData && (this.transferDestId == membersRemoveArg.transferDestId || (this.transferDestId != null && this.transferDestId.equals(membersRemoveArg.transferDestId))) && ((this.transferAdminId == membersRemoveArg.transferAdminId || (this.transferAdminId != null && this.transferAdminId.equals(membersRemoveArg.transferAdminId))) && this.keepAccount == membersRemoveArg.keepAccount);
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.MembersDeactivateArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersRemoveArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersRemoveArg membersRemoveArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(membersRemoveArg.user, gVar);
            gVar.a("wipe_data");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membersRemoveArg.wipeData), gVar);
            if (membersRemoveArg.transferDestId != null) {
                gVar.a("transfer_dest_id");
                StoneSerializers.nullable(UserSelectorArg.Serializer.INSTANCE).serialize(membersRemoveArg.transferDestId, gVar);
            }
            if (membersRemoveArg.transferAdminId != null) {
                gVar.a("transfer_admin_id");
                StoneSerializers.nullable(UserSelectorArg.Serializer.INSTANCE).serialize(membersRemoveArg.transferAdminId, gVar);
            }
            gVar.a("keep_account");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membersRemoveArg.keepAccount), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersRemoveArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            UserSelectorArg userSelectorArgDeserialize;
            Boolean boolDeserialize2;
            UserSelectorArg userSelectorArg = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                Boolean bool2 = false;
                UserSelectorArg userSelectorArg2 = null;
                UserSelectorArg userSelectorArg3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        boolDeserialize = bool2;
                        Boolean bool3 = bool;
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize2 = bool3;
                    } else if ("wipe_data".equals(strD)) {
                        userSelectorArgDeserialize = userSelectorArg3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("transfer_dest_id".equals(strD)) {
                        userSelectorArg2 = (UserSelectorArg) StoneSerializers.nullable(UserSelectorArg.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool4 = bool;
                        userSelectorArgDeserialize = userSelectorArg3;
                        boolDeserialize2 = bool4;
                    } else if ("transfer_admin_id".equals(strD)) {
                        userSelectorArg = (UserSelectorArg) StoneSerializers.nullable(UserSelectorArg.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool5 = bool;
                        userSelectorArgDeserialize = userSelectorArg3;
                        boolDeserialize2 = bool5;
                    } else if ("keep_account".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool6 = bool;
                        userSelectorArgDeserialize = userSelectorArg3;
                        boolDeserialize2 = bool6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool7 = bool;
                        userSelectorArgDeserialize = userSelectorArg3;
                        boolDeserialize2 = bool7;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool8 = boolDeserialize2;
                    userSelectorArg3 = userSelectorArgDeserialize;
                    bool = bool8;
                }
                if (userSelectorArg3 == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                MembersRemoveArg membersRemoveArg = new MembersRemoveArg(userSelectorArg3, bool.booleanValue(), userSelectorArg2, userSelectorArg, bool2.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersRemoveArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
