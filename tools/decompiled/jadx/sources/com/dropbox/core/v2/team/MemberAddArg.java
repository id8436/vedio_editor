package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.AdminTier;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class MemberAddArg {
    protected final String memberEmail;
    protected final String memberExternalId;
    protected final String memberGivenName;
    protected final String memberPersistentId;
    protected final String memberSurname;
    protected final AdminTier role;
    protected final boolean sendWelcomeEmail;

    public MemberAddArg(String str, String str2, String str3, String str4, String str5, boolean z, AdminTier adminTier) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'memberEmail' is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
        }
        this.memberEmail = str;
        if (str2 != null) {
            if (str2.length() > 100) {
                throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
            }
            if (!Pattern.matches("[^/:?*<>\"|]*", str2)) {
                throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
            }
        }
        this.memberGivenName = str2;
        if (str3 != null) {
            if (str3.length() > 100) {
                throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
            }
            if (!Pattern.matches("[^/:?*<>\"|]*", str3)) {
                throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
            }
        }
        this.memberSurname = str3;
        if (str4 != null && str4.length() > 64) {
            throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
        }
        this.memberExternalId = str4;
        this.memberPersistentId = str5;
        this.sendWelcomeEmail = z;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'role' is null");
        }
        this.role = adminTier;
    }

    public MemberAddArg(String str) {
        this(str, null, null, null, null, true, AdminTier.MEMBER_ONLY);
    }

    public String getMemberEmail() {
        return this.memberEmail;
    }

    public String getMemberGivenName() {
        return this.memberGivenName;
    }

    public String getMemberSurname() {
        return this.memberSurname;
    }

    public String getMemberExternalId() {
        return this.memberExternalId;
    }

    public String getMemberPersistentId() {
        return this.memberPersistentId;
    }

    public boolean getSendWelcomeEmail() {
        return this.sendWelcomeEmail;
    }

    public AdminTier getRole() {
        return this.role;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String memberEmail;
        protected String memberExternalId;
        protected String memberGivenName;
        protected String memberPersistentId;
        protected String memberSurname;
        protected AdminTier role;
        protected boolean sendWelcomeEmail;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'memberEmail' is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
            }
            this.memberEmail = str;
            this.memberGivenName = null;
            this.memberSurname = null;
            this.memberExternalId = null;
            this.memberPersistentId = null;
            this.sendWelcomeEmail = true;
            this.role = AdminTier.MEMBER_ONLY;
        }

        public Builder withMemberGivenName(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
                }
            }
            this.memberGivenName = str;
            return this;
        }

        public Builder withMemberSurname(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
                }
            }
            this.memberSurname = str;
            return this;
        }

        public Builder withMemberExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
            }
            this.memberExternalId = str;
            return this;
        }

        public Builder withMemberPersistentId(String str) {
            this.memberPersistentId = str;
            return this;
        }

        public Builder withSendWelcomeEmail(Boolean bool) {
            if (bool != null) {
                this.sendWelcomeEmail = bool.booleanValue();
            } else {
                this.sendWelcomeEmail = true;
            }
            return this;
        }

        public Builder withRole(AdminTier adminTier) {
            if (adminTier != null) {
                this.role = adminTier;
            } else {
                this.role = AdminTier.MEMBER_ONLY;
            }
            return this;
        }

        public MemberAddArg build() {
            return new MemberAddArg(this.memberEmail, this.memberGivenName, this.memberSurname, this.memberExternalId, this.memberPersistentId, this.sendWelcomeEmail, this.role);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.memberEmail, this.memberGivenName, this.memberSurname, this.memberExternalId, this.memberPersistentId, Boolean.valueOf(this.sendWelcomeEmail), this.role});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberAddArg memberAddArg = (MemberAddArg) obj;
            return (this.memberEmail == memberAddArg.memberEmail || this.memberEmail.equals(memberAddArg.memberEmail)) && (this.memberGivenName == memberAddArg.memberGivenName || (this.memberGivenName != null && this.memberGivenName.equals(memberAddArg.memberGivenName))) && ((this.memberSurname == memberAddArg.memberSurname || (this.memberSurname != null && this.memberSurname.equals(memberAddArg.memberSurname))) && ((this.memberExternalId == memberAddArg.memberExternalId || (this.memberExternalId != null && this.memberExternalId.equals(memberAddArg.memberExternalId))) && ((this.memberPersistentId == memberAddArg.memberPersistentId || (this.memberPersistentId != null && this.memberPersistentId.equals(memberAddArg.memberPersistentId))) && this.sendWelcomeEmail == memberAddArg.sendWelcomeEmail && (this.role == memberAddArg.role || this.role.equals(memberAddArg.role)))));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberAddArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberAddArg memberAddArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("member_email");
            StoneSerializers.string().serialize(memberAddArg.memberEmail, gVar);
            if (memberAddArg.memberGivenName != null) {
                gVar.a("member_given_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberAddArg.memberGivenName, gVar);
            }
            if (memberAddArg.memberSurname != null) {
                gVar.a("member_surname");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberAddArg.memberSurname, gVar);
            }
            if (memberAddArg.memberExternalId != null) {
                gVar.a("member_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberAddArg.memberExternalId, gVar);
            }
            if (memberAddArg.memberPersistentId != null) {
                gVar.a("member_persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberAddArg.memberPersistentId, gVar);
            }
            gVar.a("send_welcome_email");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(memberAddArg.sendWelcomeEmail), gVar);
            gVar.a(AppsGroupsService.APPS_PROP_GROUP_ROLE);
            AdminTier.Serializer.INSTANCE.serialize(memberAddArg.role, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberAddArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                AdminTier adminTierDeserialize = AdminTier.MEMBER_ONLY;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("member_email".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("member_given_name".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("member_surname".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("member_external_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("member_persistent_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("send_welcome_email".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if (AppsGroupsService.APPS_PROP_GROUP_ROLE.equals(strD)) {
                        adminTierDeserialize = AdminTier.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"member_email\" missing.");
                }
                MemberAddArg memberAddArg = new MemberAddArg(strDeserialize, str4, str3, str2, str, bool.booleanValue(), adminTierDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberAddArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
