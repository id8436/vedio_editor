package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.InviteeInfo;
import com.dropbox.core.v2.sharing.MemberPermission;
import com.dropbox.core.v2.sharing.MembershipInfo;
import com.dropbox.core.v2.sharing.UserInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InviteeMembershipInfo extends MembershipInfo {
    protected final InviteeInfo invitee;
    protected final UserInfo user;

    public InviteeMembershipInfo(AccessLevel accessLevel, InviteeInfo inviteeInfo, List<MemberPermission> list, String str, boolean z, UserInfo userInfo) {
        super(accessLevel, list, str, z);
        if (inviteeInfo == null) {
            throw new IllegalArgumentException("Required value for 'invitee' is null");
        }
        this.invitee = inviteeInfo;
        this.user = userInfo;
    }

    public InviteeMembershipInfo(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
        this(accessLevel, inviteeInfo, null, null, false, null);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public InviteeInfo getInvitee() {
        return this.invitee;
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

    public UserInfo getUser() {
        return this.user;
    }

    public static Builder newBuilder(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
        return new Builder(accessLevel, inviteeInfo);
    }

    public class Builder extends MembershipInfo.Builder {
        protected final InviteeInfo invitee;
        protected UserInfo user;

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        protected Builder(AccessLevel accessLevel, InviteeInfo inviteeInfo) {
            super(accessLevel);
            if (inviteeInfo == null) {
                throw new IllegalArgumentException("Required value for 'invitee' is null");
            }
            this.invitee = inviteeInfo;
            this.user = null;
        }

        public Builder withUser(UserInfo userInfo) {
            this.user = userInfo;
            return this;
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
        public InviteeMembershipInfo build() {
            return new InviteeMembershipInfo(this.accessType, this.invitee, this.permissions, this.initials, this.isInherited, this.user);
        }
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitee, this.user}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            InviteeMembershipInfo inviteeMembershipInfo = (InviteeMembershipInfo) obj;
            if ((this.accessType == inviteeMembershipInfo.accessType || this.accessType.equals(inviteeMembershipInfo.accessType)) && ((this.invitee == inviteeMembershipInfo.invitee || this.invitee.equals(inviteeMembershipInfo.invitee)) && ((this.permissions == inviteeMembershipInfo.permissions || (this.permissions != null && this.permissions.equals(inviteeMembershipInfo.permissions))) && ((this.initials == inviteeMembershipInfo.initials || (this.initials != null && this.initials.equals(inviteeMembershipInfo.initials))) && this.isInherited == inviteeMembershipInfo.isInherited)))) {
                if (this.user == inviteeMembershipInfo.user) {
                    return true;
                }
                if (this.user != null && this.user.equals(inviteeMembershipInfo.user)) {
                    return true;
                }
            }
            return false;
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

    class Serializer extends StructSerializer<InviteeMembershipInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(InviteeMembershipInfo inviteeMembershipInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(inviteeMembershipInfo.accessType, gVar);
            gVar.a("invitee");
            InviteeInfo.Serializer.INSTANCE.serialize(inviteeMembershipInfo.invitee, gVar);
            if (inviteeMembershipInfo.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).serialize(inviteeMembershipInfo.permissions, gVar);
            }
            if (inviteeMembershipInfo.initials != null) {
                gVar.a("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(inviteeMembershipInfo.initials, gVar);
            }
            gVar.a("is_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(inviteeMembershipInfo.isInherited), gVar);
            if (inviteeMembershipInfo.user != null) {
                gVar.a("user");
                StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).serialize(inviteeMembershipInfo.user, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public InviteeMembershipInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            UserInfo userInfo = null;
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
                InviteeInfo inviteeInfoDeserialize = null;
                AccessLevel accessLevelDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("invitee".equals(strD)) {
                        inviteeInfoDeserialize = InviteeInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("permissions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("initials".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_inherited".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("user".equals(strD)) {
                        userInfo = (UserInfo) StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).deserialize(kVar);
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
                if (inviteeInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"invitee\" missing.");
                }
                InviteeMembershipInfo inviteeMembershipInfo = new InviteeMembershipInfo(accessLevelDeserialize, inviteeInfoDeserialize, list, str, bool.booleanValue(), userInfo);
                if (!z) {
                    expectEndObject(kVar);
                }
                return inviteeMembershipInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
