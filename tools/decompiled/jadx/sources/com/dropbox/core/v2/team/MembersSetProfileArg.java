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
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class MembersSetProfileArg {
    protected final String newEmail;
    protected final String newExternalId;
    protected final String newGivenName;
    protected final String newPersistentId;
    protected final String newSurname;
    protected final UserSelectorArg user;

    public MembersSetProfileArg(UserSelectorArg userSelectorArg, String str, String str2, String str3, String str4, String str5) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (str != null) {
            if (str.length() > 255) {
                throw new IllegalArgumentException("String 'newEmail' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("String 'newEmail' does not match pattern");
            }
        }
        this.newEmail = str;
        if (str2 != null && str2.length() > 64) {
            throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
        }
        this.newExternalId = str2;
        if (str3 != null) {
            if (str3.length() > 100) {
                throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
            }
            if (!Pattern.matches("[^/:?*<>\"|]*", str3)) {
                throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
            }
        }
        this.newGivenName = str3;
        if (str4 != null) {
            if (str4.length() > 100) {
                throw new IllegalArgumentException("String 'newSurname' is longer than 100");
            }
            if (!Pattern.matches("[^/:?*<>\"|]*", str4)) {
                throw new IllegalArgumentException("String 'newSurname' does not match pattern");
            }
        }
        this.newSurname = str4;
        this.newPersistentId = str5;
    }

    public MembersSetProfileArg(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, null, null, null, null, null);
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public String getNewEmail() {
        return this.newEmail;
    }

    public String getNewExternalId() {
        return this.newExternalId;
    }

    public String getNewGivenName() {
        return this.newGivenName;
    }

    public String getNewSurname() {
        return this.newSurname;
    }

    public String getNewPersistentId() {
        return this.newPersistentId;
    }

    public static Builder newBuilder(UserSelectorArg userSelectorArg) {
        return new Builder(userSelectorArg);
    }

    public class Builder {
        protected String newEmail;
        protected String newExternalId;
        protected String newGivenName;
        protected String newPersistentId;
        protected String newSurname;
        protected final UserSelectorArg user;

        protected Builder(UserSelectorArg userSelectorArg) {
            if (userSelectorArg == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userSelectorArg;
            this.newEmail = null;
            this.newExternalId = null;
            this.newGivenName = null;
            this.newSurname = null;
            this.newPersistentId = null;
        }

        public Builder withNewEmail(String str) {
            if (str != null) {
                if (str.length() > 255) {
                    throw new IllegalArgumentException("String 'newEmail' is longer than 255");
                }
                if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
                    throw new IllegalArgumentException("String 'newEmail' does not match pattern");
                }
            }
            this.newEmail = str;
            return this;
        }

        public Builder withNewExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
            }
            this.newExternalId = str;
            return this;
        }

        public Builder withNewGivenName(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
                }
            }
            this.newGivenName = str;
            return this;
        }

        public Builder withNewSurname(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'newSurname' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'newSurname' does not match pattern");
                }
            }
            this.newSurname = str;
            return this;
        }

        public Builder withNewPersistentId(String str) {
            this.newPersistentId = str;
            return this;
        }

        public MembersSetProfileArg build() {
            return new MembersSetProfileArg(this.user, this.newEmail, this.newExternalId, this.newGivenName, this.newSurname, this.newPersistentId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.newEmail, this.newExternalId, this.newGivenName, this.newSurname, this.newPersistentId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersSetProfileArg membersSetProfileArg = (MembersSetProfileArg) obj;
            if ((this.user == membersSetProfileArg.user || this.user.equals(membersSetProfileArg.user)) && ((this.newEmail == membersSetProfileArg.newEmail || (this.newEmail != null && this.newEmail.equals(membersSetProfileArg.newEmail))) && ((this.newExternalId == membersSetProfileArg.newExternalId || (this.newExternalId != null && this.newExternalId.equals(membersSetProfileArg.newExternalId))) && ((this.newGivenName == membersSetProfileArg.newGivenName || (this.newGivenName != null && this.newGivenName.equals(membersSetProfileArg.newGivenName))) && (this.newSurname == membersSetProfileArg.newSurname || (this.newSurname != null && this.newSurname.equals(membersSetProfileArg.newSurname))))))) {
                if (this.newPersistentId == membersSetProfileArg.newPersistentId) {
                    return true;
                }
                if (this.newPersistentId != null && this.newPersistentId.equals(membersSetProfileArg.newPersistentId)) {
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

    class Serializer extends StructSerializer<MembersSetProfileArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersSetProfileArg membersSetProfileArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(membersSetProfileArg.user, gVar);
            if (membersSetProfileArg.newEmail != null) {
                gVar.a("new_email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membersSetProfileArg.newEmail, gVar);
            }
            if (membersSetProfileArg.newExternalId != null) {
                gVar.a("new_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membersSetProfileArg.newExternalId, gVar);
            }
            if (membersSetProfileArg.newGivenName != null) {
                gVar.a("new_given_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membersSetProfileArg.newGivenName, gVar);
            }
            if (membersSetProfileArg.newSurname != null) {
                gVar.a("new_surname");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membersSetProfileArg.newSurname, gVar);
            }
            if (membersSetProfileArg.newPersistentId != null) {
                gVar.a("new_persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membersSetProfileArg.newPersistentId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersSetProfileArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                UserSelectorArg userSelectorArgDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_email".equals(strD)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("new_external_id".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("new_given_name".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("new_surname".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("new_persistent_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                MembersSetProfileArg membersSetProfileArg = new MembersSetProfileArg(userSelectorArgDeserialize, str5, str4, str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersSetProfileArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
