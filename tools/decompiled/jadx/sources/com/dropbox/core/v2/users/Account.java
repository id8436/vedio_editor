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
public class Account {
    protected final String accountId;
    protected final boolean disabled;
    protected final String email;
    protected final boolean emailVerified;
    protected final Name name;
    protected final String profilePhotoUrl;

    public Account(String str, Name name, String str2, boolean z, boolean z2, String str3) {
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
        this.profilePhotoUrl = str3;
        this.disabled = z2;
    }

    public Account(String str, Name name, String str2, boolean z, boolean z2) {
        this(str, name, str2, z, z2, null);
    }

    public String getAccountId() {
        return this.accountId;
    }

    public Name getName() {
        return this.name;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    public boolean getDisabled() {
        return this.disabled;
    }

    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, this.name, this.email, Boolean.valueOf(this.emailVerified), this.profilePhotoUrl, Boolean.valueOf(this.disabled)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Account account = (Account) obj;
            if ((this.accountId == account.accountId || this.accountId.equals(account.accountId)) && ((this.name == account.name || this.name.equals(account.name)) && ((this.email == account.email || this.email.equals(account.email)) && this.emailVerified == account.emailVerified && this.disabled == account.disabled))) {
                if (this.profilePhotoUrl == account.profilePhotoUrl) {
                    return true;
                }
                if (this.profilePhotoUrl != null && this.profilePhotoUrl.equals(account.profilePhotoUrl)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<Account> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Account account, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("account_id");
            StoneSerializers.string().serialize(account.accountId, gVar);
            gVar.a("name");
            Name.Serializer.INSTANCE.serialize(account.name, gVar);
            gVar.a("email");
            StoneSerializers.string().serialize(account.email, gVar);
            gVar.a("email_verified");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(account.emailVerified), gVar);
            gVar.a("disabled");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(account.disabled), gVar);
            if (account.profilePhotoUrl != null) {
                gVar.a("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(account.profilePhotoUrl, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Account deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                Boolean bool2 = null;
                String strDeserialize2 = null;
                Name nameDeserialize = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        boolDeserialize2 = bool2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("name".equals(strD)) {
                        nameDeserialize = Name.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool3 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool3;
                    } else if ("email".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool4 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool4;
                    } else if ("email_verified".equals(strD)) {
                        strDeserialize = str2;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("disabled".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool5 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool5;
                    } else if ("profile_photo_url".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool6 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        Boolean bool7 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool7;
                    }
                    bool = boolDeserialize;
                    Boolean bool8 = boolDeserialize2;
                    str2 = strDeserialize;
                    bool2 = bool8;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"account_id\" missing.");
                }
                if (nameDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"email\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"email_verified\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"disabled\" missing.");
                }
                Account account = new Account(str2, nameDeserialize, strDeserialize2, bool2.booleanValue(), bool.booleanValue(), str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return account;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
