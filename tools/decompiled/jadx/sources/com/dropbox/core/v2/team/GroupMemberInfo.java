package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupAccessType;
import com.dropbox.core.v2.team.MemberProfile;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupMemberInfo {
    protected final GroupAccessType accessType;
    protected final MemberProfile profile;

    public GroupMemberInfo(MemberProfile memberProfile, GroupAccessType groupAccessType) {
        if (memberProfile == null) {
            throw new IllegalArgumentException("Required value for 'profile' is null");
        }
        this.profile = memberProfile;
        if (groupAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = groupAccessType;
    }

    public MemberProfile getProfile() {
        return this.profile;
    }

    public GroupAccessType getAccessType() {
        return this.accessType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.profile, this.accessType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMemberInfo groupMemberInfo = (GroupMemberInfo) obj;
            return (this.profile == groupMemberInfo.profile || this.profile.equals(groupMemberInfo.profile)) && (this.accessType == groupMemberInfo.accessType || this.accessType.equals(groupMemberInfo.accessType));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupMemberInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMemberInfo groupMemberInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("profile");
            MemberProfile.Serializer.INSTANCE.serialize(groupMemberInfo.profile, gVar);
            gVar.a("access_type");
            GroupAccessType.Serializer.INSTANCE.serialize(groupMemberInfo.accessType, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMemberInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupAccessType groupAccessTypeDeserialize;
            MemberProfile memberProfileDeserialize;
            GroupAccessType groupAccessType = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberProfile memberProfile = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("profile".equals(strD)) {
                        GroupAccessType groupAccessType2 = groupAccessType;
                        memberProfileDeserialize = MemberProfile.Serializer.INSTANCE.deserialize(kVar);
                        groupAccessTypeDeserialize = groupAccessType2;
                    } else if ("access_type".equals(strD)) {
                        groupAccessTypeDeserialize = GroupAccessType.Serializer.INSTANCE.deserialize(kVar);
                        memberProfileDeserialize = memberProfile;
                    } else {
                        skipValue(kVar);
                        groupAccessTypeDeserialize = groupAccessType;
                        memberProfileDeserialize = memberProfile;
                    }
                    memberProfile = memberProfileDeserialize;
                    groupAccessType = groupAccessTypeDeserialize;
                }
                if (memberProfile == null) {
                    throw new j(kVar, "Required field \"profile\" missing.");
                }
                if (groupAccessType == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                GroupMemberInfo groupMemberInfo = new GroupMemberInfo(memberProfile, groupAccessType);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMemberInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
