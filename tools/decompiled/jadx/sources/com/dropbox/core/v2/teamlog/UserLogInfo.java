package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo;
import com.dropbox.core.v2.teamlog.TeamMemberLogInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class UserLogInfo {
    protected final String accountId;
    protected final String displayName;
    protected final String email;

    public UserLogInfo(String str, String str2, String str3) {
        if (str != null) {
            if (str.length() < 40) {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
        }
        this.accountId = str;
        if (str2 != null && str2.length() < 1) {
            throw new IllegalArgumentException("String 'displayName' is shorter than 1");
        }
        this.displayName = str2;
        if (str3 != null) {
            if (str3.length() > 255) {
                throw new IllegalArgumentException("String 'email' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str3)) {
                throw new IllegalArgumentException("String 'email' does not match pattern");
            }
        }
        this.email = str3;
    }

    public UserLogInfo() {
        this(null, null, null);
    }

    public String getAccountId() {
        return this.accountId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String accountId = null;
        protected String displayName = null;
        protected String email = null;

        protected Builder() {
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withDisplayName(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'displayName' is shorter than 1");
            }
            this.displayName = str;
            return this;
        }

        public Builder withEmail(String str) {
            if (str != null) {
                if (str.length() > 255) {
                    throw new IllegalArgumentException("String 'email' is longer than 255");
                }
                if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
                    throw new IllegalArgumentException("String 'email' does not match pattern");
                }
            }
            this.email = str;
            return this;
        }

        public UserLogInfo build() {
            return new UserLogInfo(this.accountId, this.displayName, this.email);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, this.displayName, this.email});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserLogInfo userLogInfo = (UserLogInfo) obj;
            if ((this.accountId == userLogInfo.accountId || (this.accountId != null && this.accountId.equals(userLogInfo.accountId))) && (this.displayName == userLogInfo.displayName || (this.displayName != null && this.displayName.equals(userLogInfo.displayName)))) {
                if (this.email == userLogInfo.email) {
                    return true;
                }
                if (this.email != null && this.email.equals(userLogInfo.email)) {
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

    class Serializer extends StructSerializer<UserLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserLogInfo userLogInfo, g gVar, boolean z) throws IOException {
            if (userLogInfo instanceof TeamMemberLogInfo) {
                TeamMemberLogInfo.Serializer.INSTANCE.serialize((TeamMemberLogInfo) userLogInfo, gVar, z);
                return;
            }
            if (userLogInfo instanceof NonTeamMemberLogInfo) {
                NonTeamMemberLogInfo.Serializer.INSTANCE.serialize((NonTeamMemberLogInfo) userLogInfo, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            if (userLogInfo.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userLogInfo.accountId, gVar);
            }
            if (userLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userLogInfo.displayName, gVar);
            }
            if (userLogInfo.email != null) {
                gVar.a("email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userLogInfo.email, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserLogInfo userLogInfoDeserialize;
            String str;
            String str2;
            String str3;
            String str4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str5 = null;
                String str6 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        String str7 = str4;
                        str2 = str5;
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str7;
                    } else if ("display_name".equals(strD)) {
                        str3 = str6;
                        str = str4;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("email".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str5;
                        str3 = str6;
                    } else {
                        skipValue(kVar);
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                    }
                    str6 = str3;
                    str5 = str2;
                    str4 = str;
                }
                userLogInfoDeserialize = new UserLogInfo(str6, str5, str4);
            } else if ("".equals(tag)) {
                userLogInfoDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("team_member".equals(tag)) {
                userLogInfoDeserialize = TeamMemberLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("non_team_member".equals(tag)) {
                userLogInfoDeserialize = NonTeamMemberLogInfo.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return userLogInfoDeserialize;
        }
    }
}
