package com.dropbox.core.v2.users;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.FullTeam;
import com.dropbox.core.v2.users.Name;
import com.dropbox.core.v2.userscommon.AccountType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FullAccount extends Account {
    protected final AccountType accountType;
    protected final String country;
    protected final boolean isPaired;
    protected final String locale;
    protected final String referralLink;
    protected final FullTeam team;
    protected final String teamMemberId;

    public FullAccount(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType, String str5, String str6, FullTeam fullTeam, String str7) {
        super(str, name, str2, z, z2, str5);
        if (str6 != null) {
            if (str6.length() < 2) {
                throw new IllegalArgumentException("String 'country' is shorter than 2");
            }
            if (str6.length() > 2) {
                throw new IllegalArgumentException("String 'country' is longer than 2");
            }
        }
        this.country = str6;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'locale' is null");
        }
        if (str3.length() < 2) {
            throw new IllegalArgumentException("String 'locale' is shorter than 2");
        }
        this.locale = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'referralLink' is null");
        }
        this.referralLink = str4;
        this.team = fullTeam;
        this.teamMemberId = str7;
        this.isPaired = z3;
        if (accountType == null) {
            throw new IllegalArgumentException("Required value for 'accountType' is null");
        }
        this.accountType = accountType;
    }

    public FullAccount(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType) {
        this(str, name, str2, z, z2, str3, str4, z3, accountType, null, null, null, null);
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

    public String getLocale() {
        return this.locale;
    }

    public String getReferralLink() {
        return this.referralLink;
    }

    public boolean getIsPaired() {
        return this.isPaired;
    }

    public AccountType getAccountType() {
        return this.accountType;
    }

    @Override // com.dropbox.core.v2.users.Account
    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public String getCountry() {
        return this.country;
    }

    public FullTeam getTeam() {
        return this.team;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public static Builder newBuilder(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType) {
        return new Builder(str, name, str2, z, z2, str3, str4, z3, accountType);
    }

    public class Builder {
        protected final String accountId;
        protected final AccountType accountType;
        protected String country;
        protected final boolean disabled;
        protected final String email;
        protected final boolean emailVerified;
        protected final boolean isPaired;
        protected final String locale;
        protected final Name name;
        protected String profilePhotoUrl;
        protected final String referralLink;
        protected FullTeam team;
        protected String teamMemberId;

        protected Builder(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType) {
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
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'locale' is null");
            }
            if (str3.length() < 2) {
                throw new IllegalArgumentException("String 'locale' is shorter than 2");
            }
            this.locale = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'referralLink' is null");
            }
            this.referralLink = str4;
            this.isPaired = z3;
            if (accountType == null) {
                throw new IllegalArgumentException("Required value for 'accountType' is null");
            }
            this.accountType = accountType;
            this.profilePhotoUrl = null;
            this.country = null;
            this.team = null;
            this.teamMemberId = null;
        }

        public Builder withProfilePhotoUrl(String str) {
            this.profilePhotoUrl = str;
            return this;
        }

        public Builder withCountry(String str) {
            if (str != null) {
                if (str.length() < 2) {
                    throw new IllegalArgumentException("String 'country' is shorter than 2");
                }
                if (str.length() > 2) {
                    throw new IllegalArgumentException("String 'country' is longer than 2");
                }
            }
            this.country = str;
            return this;
        }

        public Builder withTeam(FullTeam fullTeam) {
            this.team = fullTeam;
            return this;
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }

        public FullAccount build() {
            return new FullAccount(this.accountId, this.name, this.email, this.emailVerified, this.disabled, this.locale, this.referralLink, this.isPaired, this.accountType, this.profilePhotoUrl, this.country, this.team, this.teamMemberId);
        }
    }

    @Override // com.dropbox.core.v2.users.Account
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.country, this.locale, this.referralLink, this.team, this.teamMemberId, Boolean.valueOf(this.isPaired), this.accountType}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.users.Account
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FullAccount fullAccount = (FullAccount) obj;
            if ((this.accountId == fullAccount.accountId || this.accountId.equals(fullAccount.accountId)) && ((this.name == fullAccount.name || this.name.equals(fullAccount.name)) && ((this.email == fullAccount.email || this.email.equals(fullAccount.email)) && this.emailVerified == fullAccount.emailVerified && this.disabled == fullAccount.disabled && ((this.locale == fullAccount.locale || this.locale.equals(fullAccount.locale)) && ((this.referralLink == fullAccount.referralLink || this.referralLink.equals(fullAccount.referralLink)) && this.isPaired == fullAccount.isPaired && ((this.accountType == fullAccount.accountType || this.accountType.equals(fullAccount.accountType)) && ((this.profilePhotoUrl == fullAccount.profilePhotoUrl || (this.profilePhotoUrl != null && this.profilePhotoUrl.equals(fullAccount.profilePhotoUrl))) && ((this.country == fullAccount.country || (this.country != null && this.country.equals(fullAccount.country))) && (this.team == fullAccount.team || (this.team != null && this.team.equals(fullAccount.team))))))))))) {
                if (this.teamMemberId == fullAccount.teamMemberId) {
                    return true;
                }
                if (this.teamMemberId != null && this.teamMemberId.equals(fullAccount.teamMemberId)) {
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

    class Serializer extends StructSerializer<FullAccount> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FullAccount fullAccount, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("account_id");
            StoneSerializers.string().serialize(fullAccount.accountId, gVar);
            gVar.a("name");
            Name.Serializer.INSTANCE.serialize(fullAccount.name, gVar);
            gVar.a("email");
            StoneSerializers.string().serialize(fullAccount.email, gVar);
            gVar.a("email_verified");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(fullAccount.emailVerified), gVar);
            gVar.a("disabled");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(fullAccount.disabled), gVar);
            gVar.a("locale");
            StoneSerializers.string().serialize(fullAccount.locale, gVar);
            gVar.a("referral_link");
            StoneSerializers.string().serialize(fullAccount.referralLink, gVar);
            gVar.a("is_paired");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(fullAccount.isPaired), gVar);
            gVar.a("account_type");
            AccountType.Serializer.INSTANCE.serialize(fullAccount.accountType, gVar);
            if (fullAccount.profilePhotoUrl != null) {
                gVar.a("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fullAccount.profilePhotoUrl, gVar);
            }
            if (fullAccount.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fullAccount.country, gVar);
            }
            if (fullAccount.team != null) {
                gVar.a("team");
                StoneSerializers.nullableStruct(FullTeam.Serializer.INSTANCE).serialize(fullAccount.team, gVar);
            }
            if (fullAccount.teamMemberId != null) {
                gVar.a("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fullAccount.teamMemberId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FullAccount deserialize(k kVar, boolean z) throws IOException {
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            Name nameDeserialize;
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                Name name = null;
                String strDeserialize2 = null;
                Boolean bool = null;
                Boolean bool2 = null;
                String strDeserialize3 = null;
                String strDeserialize4 = null;
                Boolean bool3 = null;
                AccountType accountTypeDeserialize = null;
                String str2 = null;
                String str3 = null;
                FullTeam fullTeam = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        boolDeserialize2 = bool2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        Name name2 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name2;
                    } else if ("name".equals(strD)) {
                        boolDeserialize3 = bool;
                        nameDeserialize = Name.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool4 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool4;
                    } else if ("email".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool5 = bool;
                        nameDeserialize = name;
                        boolDeserialize3 = bool5;
                        Boolean bool6 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool6;
                    } else if ("email_verified".equals(strD)) {
                        nameDeserialize = name;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool7 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool7;
                    } else if ("disabled".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        Name name3 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name3;
                    } else if ("locale".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool8 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool8;
                        Name name4 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name4;
                    } else if ("referral_link".equals(strD)) {
                        strDeserialize4 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool9 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool9;
                        Name name5 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name5;
                    } else if ("is_paired".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool10 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool10;
                        Name name6 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name6;
                    } else if ("account_type".equals(strD)) {
                        accountTypeDeserialize = AccountType.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool11 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool11;
                        Name name7 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name7;
                    } else if ("profile_photo_url".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool12 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool12;
                        Name name8 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name8;
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool13 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool13;
                        Name name9 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name9;
                    } else if ("team".equals(strD)) {
                        fullTeam = (FullTeam) StoneSerializers.nullableStruct(FullTeam.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool14 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool14;
                        Name name10 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name10;
                    } else if ("team_member_id".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool15 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool15;
                        Name name11 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name11;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        Boolean bool16 = bool2;
                        strDeserialize = str;
                        boolDeserialize2 = bool16;
                        Name name12 = name;
                        boolDeserialize3 = bool;
                        nameDeserialize = name12;
                    }
                    bool3 = boolDeserialize;
                    Boolean bool17 = boolDeserialize2;
                    str = strDeserialize;
                    bool2 = bool17;
                    Name name13 = nameDeserialize;
                    bool = boolDeserialize3;
                    name = name13;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"account_id\" missing.");
                }
                if (name == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"email\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"email_verified\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"disabled\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"locale\" missing.");
                }
                if (strDeserialize4 == null) {
                    throw new j(kVar, "Required field \"referral_link\" missing.");
                }
                if (bool3 == null) {
                    throw new j(kVar, "Required field \"is_paired\" missing.");
                }
                if (accountTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"account_type\" missing.");
                }
                FullAccount fullAccount = new FullAccount(str, name, strDeserialize2, bool.booleanValue(), bool2.booleanValue(), strDeserialize3, strDeserialize4, bool3.booleanValue(), accountTypeDeserialize, str2, str3, fullTeam, str4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fullAccount;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
