package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberPermission;
import com.dropbox.core.v2.sharing.MembershipInfo;
import com.dropbox.core.v2.sharing.UserInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserMembershipInfo extends MembershipInfo {
    protected final UserInfo user;

    public UserMembershipInfo(AccessLevel accessLevel, UserInfo userInfo, List<MemberPermission> list, String str, boolean z) {
        super(accessLevel, list, str, z);
        if (userInfo == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userInfo;
    }

    public UserMembershipInfo(AccessLevel accessLevel, UserInfo userInfo) {
        this(accessLevel, userInfo, null, null, false);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public UserInfo getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    public static Builder newBuilder(AccessLevel accessLevel, UserInfo userInfo) {
        return new Builder(accessLevel, userInfo);
    }

    public class Builder extends MembershipInfo.Builder {
        protected final UserInfo user;

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        protected Builder(AccessLevel accessLevel, UserInfo userInfo) {
            super(accessLevel);
            if (userInfo == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userInfo;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public UserMembershipInfo build() {
            return new UserMembershipInfo(this.accessType, this.user, this.permissions, this.initials, this.isInherited);
        }
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserMembershipInfo userMembershipInfo = (UserMembershipInfo) obj;
            return (this.accessType == userMembershipInfo.accessType || this.accessType.equals(userMembershipInfo.accessType)) && (this.user == userMembershipInfo.user || this.user.equals(userMembershipInfo.user)) && ((this.permissions == userMembershipInfo.permissions || (this.permissions != null && this.permissions.equals(userMembershipInfo.permissions))) && ((this.initials == userMembershipInfo.initials || (this.initials != null && this.initials.equals(userMembershipInfo.initials))) && this.isInherited == userMembershipInfo.isInherited));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UserMembershipInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserMembershipInfo userMembershipInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(userMembershipInfo.accessType, gVar);
            gVar.a("user");
            UserInfo.Serializer.INSTANCE.serialize(userMembershipInfo.user, gVar);
            if (userMembershipInfo.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).serialize(userMembershipInfo.permissions, gVar);
            }
            if (userMembershipInfo.initials != null) {
                gVar.a("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userMembershipInfo.initials, gVar);
            }
            gVar.a("is_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(userMembershipInfo.isInherited), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserMembershipInfo deserialize(k kVar, boolean z) throws IOException {
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
                Boolean bool = false;
                List list = null;
                UserInfo userInfoDeserialize = null;
                AccessLevel accessLevelDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("user".equals(strD)) {
                        userInfoDeserialize = UserInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("permissions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("initials".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_inherited".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (accessLevelDeserialize == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                if (userInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                UserMembershipInfo userMembershipInfo = new UserMembershipInfo(accessLevelDeserialize, userInfoDeserialize, list, str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return userMembershipInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
