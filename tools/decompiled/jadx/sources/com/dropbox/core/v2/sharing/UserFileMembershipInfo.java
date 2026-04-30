package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberPermission;
import com.dropbox.core.v2.sharing.MembershipInfo;
import com.dropbox.core.v2.sharing.UserInfo;
import com.dropbox.core.v2.sharing.UserMembershipInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserFileMembershipInfo extends UserMembershipInfo {
    protected final Date timeLastSeen;

    public UserFileMembershipInfo(AccessLevel accessLevel, UserInfo userInfo, List<MemberPermission> list, String str, boolean z, Date date) {
        super(accessLevel, userInfo, list, str, z);
        this.timeLastSeen = LangUtil.truncateMillis(date);
    }

    public UserFileMembershipInfo(AccessLevel accessLevel, UserInfo userInfo) {
        this(accessLevel, userInfo, null, null, false, null);
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo
    public UserInfo getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    public Date getTimeLastSeen() {
        return this.timeLastSeen;
    }

    public static Builder newBuilder(AccessLevel accessLevel, UserInfo userInfo) {
        return new Builder(accessLevel, userInfo);
    }

    public class Builder extends UserMembershipInfo.Builder {
        protected Date timeLastSeen;

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ UserMembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        protected Builder(AccessLevel accessLevel, UserInfo userInfo) {
            super(accessLevel, userInfo);
            this.timeLastSeen = null;
        }

        public Builder withTimeLastSeen(Date date) {
            this.timeLastSeen = LangUtil.truncateMillis(date);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public UserFileMembershipInfo build() {
            return new UserFileMembershipInfo(this.accessType, this.user, this.permissions, this.initials, this.isInherited, this.timeLastSeen);
        }
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.timeLastSeen}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserFileMembershipInfo userFileMembershipInfo = (UserFileMembershipInfo) obj;
            if ((this.accessType == userFileMembershipInfo.accessType || this.accessType.equals(userFileMembershipInfo.accessType)) && ((this.user == userFileMembershipInfo.user || this.user.equals(userFileMembershipInfo.user)) && ((this.permissions == userFileMembershipInfo.permissions || (this.permissions != null && this.permissions.equals(userFileMembershipInfo.permissions))) && ((this.initials == userFileMembershipInfo.initials || (this.initials != null && this.initials.equals(userFileMembershipInfo.initials))) && this.isInherited == userFileMembershipInfo.isInherited)))) {
                if (this.timeLastSeen == userFileMembershipInfo.timeLastSeen) {
                    return true;
                }
                if (this.timeLastSeen != null && this.timeLastSeen.equals(userFileMembershipInfo.timeLastSeen)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.UserMembershipInfo, com.dropbox.core.v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UserFileMembershipInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserFileMembershipInfo userFileMembershipInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(userFileMembershipInfo.accessType, gVar);
            gVar.a("user");
            UserInfo.Serializer.INSTANCE.serialize(userFileMembershipInfo.user, gVar);
            if (userFileMembershipInfo.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).serialize(userFileMembershipInfo.permissions, gVar);
            }
            if (userFileMembershipInfo.initials != null) {
                gVar.a("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(userFileMembershipInfo.initials, gVar);
            }
            gVar.a("is_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(userFileMembershipInfo.isInherited), gVar);
            if (userFileMembershipInfo.timeLastSeen != null) {
                gVar.a("time_last_seen");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(userFileMembershipInfo.timeLastSeen, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserFileMembershipInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                String str = null;
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
                    } else if ("time_last_seen".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
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
                UserFileMembershipInfo userFileMembershipInfo = new UserFileMembershipInfo(accessLevelDeserialize, userInfoDeserialize, list, str, bool.booleanValue(), date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userFileMembershipInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
