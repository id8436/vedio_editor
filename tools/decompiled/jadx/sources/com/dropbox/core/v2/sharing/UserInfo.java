package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UserInfo {
    protected final String accountId;
    protected final boolean sameTeam;
    protected final String teamMemberId;

    public UserInfo(String str, boolean z, String str2) {
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
        this.sameTeam = z;
        this.teamMemberId = str2;
    }

    public UserInfo(String str, boolean z) {
        this(str, z, null);
    }

    public String getAccountId() {
        return this.accountId;
    }

    public boolean getSameTeam() {
        return this.sameTeam;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, Boolean.valueOf(this.sameTeam), this.teamMemberId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserInfo userInfo = (UserInfo) obj;
            if ((this.accountId == userInfo.accountId || this.accountId.equals(userInfo.accountId)) && this.sameTeam == userInfo.sameTeam) {
                if (this.teamMemberId == userInfo.teamMemberId) {
                    return true;
                }
                if (this.teamMemberId != null && this.teamMemberId.equals(userInfo.teamMemberId)) {
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

    public class Serializer extends StructSerializer<UserInfo> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserInfo userInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("account_id");
            StoneSerializers.string().serialize(userInfo.accountId, gVar);
            gVar.a("same_team");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(userInfo.sameTeam), gVar);
            if (userInfo.teamMemberId != null) {
                gVar.a("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userInfo.teamMemberId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Boolean boolDeserialize;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_id".equals(strD)) {
                        String str4 = str2;
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("same_team".equals(strD)) {
                        strDeserialize = str3;
                        str = str2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("team_member_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        boolDeserialize = bool;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    bool = boolDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"account_id\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"same_team\" missing.");
                }
                UserInfo userInfo = new UserInfo(str3, bool.booleanValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
