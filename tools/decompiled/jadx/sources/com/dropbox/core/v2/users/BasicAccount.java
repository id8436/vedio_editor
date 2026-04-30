package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Name;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class BasicAccount extends Account {
    protected final boolean isTeammate;
    protected final String teamMemberId;

    public BasicAccount(String str, Name name, String str2, boolean z, boolean z2, boolean z3, String str3, String str4) {
        super(str, name, str2, z, z2, str3);
        this.isTeammate = z3;
        this.teamMemberId = str4;
    }

    public BasicAccount(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
        this(str, name, str2, z, z2, z3, null, null);
    }

    @Override // com.dropbox.core.v2.users.Account
    public String getAccountId() {
        return this.accountId;
    }

    @Override // com.dropbox.core.v2.users.Account
    public Name getName() {
        return this.name;
    }

    @Override // com.dropbox.core.v2.users.Account
    public String getEmail() {
        return this.email;
    }

    @Override // com.dropbox.core.v2.users.Account
    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    @Override // com.dropbox.core.v2.users.Account
    public boolean getDisabled() {
        return this.disabled;
    }

    public boolean getIsTeammate() {
        return this.isTeammate;
    }

    @Override // com.dropbox.core.v2.users.Account
    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public static Builder newBuilder(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
        return new Builder(str, name, str2, z, z2, z3);
    }

    public class Builder {
        protected final String accountId;
        protected final boolean disabled;
        protected final String email;
        protected final boolean emailVerified;
        protected final boolean isTeammate;
        protected final Name name;
        protected String profilePhotoUrl;
        protected String teamMemberId;

        protected Builder(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'accountId' is null");
            }
            if (str.length() < 40) {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
            this.accountId = str;
            if (name == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = name;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'email' is null");
            }
            this.email = str2;
            this.emailVerified = z;
            this.disabled = z2;
            this.isTeammate = z3;
            this.profilePhotoUrl = null;
            this.teamMemberId = null;
        }

        public Builder withProfilePhotoUrl(String str) {
            this.profilePhotoUrl = str;
            return this;
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }

        public BasicAccount build() {
            return new BasicAccount(this.accountId, this.name, this.email, this.emailVerified, this.disabled, this.isTeammate, this.profilePhotoUrl, this.teamMemberId);
        }
    }

    @Override // com.dropbox.core.v2.users.Account
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isTeammate), this.teamMemberId}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.users.Account
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            BasicAccount basicAccount = (BasicAccount) obj;
            if ((this.accountId == basicAccount.accountId || this.accountId.equals(basicAccount.accountId)) && ((this.name == basicAccount.name || this.name.equals(basicAccount.name)) && ((this.email == basicAccount.email || this.email.equals(basicAccount.email)) && this.emailVerified == basicAccount.emailVerified && this.disabled == basicAccount.disabled && this.isTeammate == basicAccount.isTeammate && (this.profilePhotoUrl == basicAccount.profilePhotoUrl || (this.profilePhotoUrl != null && this.profilePhotoUrl.equals(basicAccount.profilePhotoUrl)))))) {
                if (this.teamMemberId == basicAccount.teamMemberId) {
                    return true;
                }
                if (this.teamMemberId != null && this.teamMemberId.equals(basicAccount.teamMemberId)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.users.Account
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.users.Account
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<BasicAccount> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(BasicAccount basicAccount, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("account_id");
            StoneSerializers.string().serialize(basicAccount.accountId, gVar);
            gVar.a("name");
            Name.Serializer.INSTANCE.serialize(basicAccount.name, gVar);
            gVar.a("email");
            StoneSerializers.string().serialize(basicAccount.email, gVar);
            gVar.a("email_verified");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(basicAccount.emailVerified), gVar);
            gVar.a("disabled");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(basicAccount.disabled), gVar);
            gVar.a("is_teammate");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(basicAccount.isTeammate), gVar);
            if (basicAccount.profilePhotoUrl != null) {
                gVar.a("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(basicAccount.profilePhotoUrl, gVar);
            }
            if (basicAccount.teamMemberId != null) {
                gVar.a("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(basicAccount.teamMemberId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public BasicAccount deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            Name nameDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                Boolean bool = null;
                Boolean bool2 = null;
                Boolean bool3 = null;
                String strDeserialize2 = null;
                Name name = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        boolDeserialize2 = bool2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        Name name2 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name2;
                    } else if ("name".equals(strD)) {
                        boolDeserialize3 = bool3;
                        nameDeserialize = Name.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool4 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool4;
                    } else if ("email".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool5 = bool3;
                        nameDeserialize = name;
                        boolDeserialize3 = bool5;
                        Boolean bool6 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool6;
                    } else if ("email_verified".equals(strD)) {
                        nameDeserialize = name;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool7 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool7;
                    } else if ("disabled".equals(strD)) {
                        strDeserialize = str3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                        Name name3 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name3;
                    } else if ("is_teammate".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool8 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool8;
                        Name name4 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name4;
                    } else if ("profile_photo_url".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool9 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool9;
                        Name name5 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name5;
                    } else if ("team_member_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool10 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool10;
                        Name name6 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        Boolean bool11 = bool2;
                        strDeserialize = str3;
                        boolDeserialize2 = bool11;
                        Name name7 = name;
                        boolDeserialize3 = bool3;
                        nameDeserialize = name7;
                    }
                    bool = boolDeserialize;
                    Boolean bool12 = boolDeserialize2;
                    str3 = strDeserialize;
                    bool2 = bool12;
                    Name name8 = nameDeserialize;
                    bool3 = boolDeserialize3;
                    name = name8;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"account_id\" missing.");
                }
                if (name == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"email\" missing.");
                }
                if (bool3 == null) {
                    throw new j(kVar, "Required field \"email_verified\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"disabled\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_teammate\" missing.");
                }
                BasicAccount basicAccount = new BasicAccount(str3, name, strDeserialize2, bool3.booleanValue(), bool2.booleanValue(), bool.booleanValue(), str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return basicAccount;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
