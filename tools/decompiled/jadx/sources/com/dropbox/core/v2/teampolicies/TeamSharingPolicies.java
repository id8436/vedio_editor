package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.SharedFolderJoinPolicy;
import com.dropbox.core.v2.teampolicies.SharedFolderMemberPolicy;
import com.dropbox.core.v2.teampolicies.SharedLinkCreatePolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamSharingPolicies {
    protected final SharedFolderJoinPolicy sharedFolderJoinPolicy;
    protected final SharedFolderMemberPolicy sharedFolderMemberPolicy;
    protected final SharedLinkCreatePolicy sharedLinkCreatePolicy;

    public TeamSharingPolicies(SharedFolderMemberPolicy sharedFolderMemberPolicy, SharedFolderJoinPolicy sharedFolderJoinPolicy, SharedLinkCreatePolicy sharedLinkCreatePolicy) {
        if (sharedFolderMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderMemberPolicy' is null");
        }
        this.sharedFolderMemberPolicy = sharedFolderMemberPolicy;
        if (sharedFolderJoinPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderJoinPolicy' is null");
        }
        this.sharedFolderJoinPolicy = sharedFolderJoinPolicy;
        if (sharedLinkCreatePolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinkCreatePolicy' is null");
        }
        this.sharedLinkCreatePolicy = sharedLinkCreatePolicy;
    }

    public SharedFolderMemberPolicy getSharedFolderMemberPolicy() {
        return this.sharedFolderMemberPolicy;
    }

    public SharedFolderJoinPolicy getSharedFolderJoinPolicy() {
        return this.sharedFolderJoinPolicy;
    }

    public SharedLinkCreatePolicy getSharedLinkCreatePolicy() {
        return this.sharedLinkCreatePolicy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderMemberPolicy, this.sharedFolderJoinPolicy, this.sharedLinkCreatePolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamSharingPolicies teamSharingPolicies = (TeamSharingPolicies) obj;
            return (this.sharedFolderMemberPolicy == teamSharingPolicies.sharedFolderMemberPolicy || this.sharedFolderMemberPolicy.equals(teamSharingPolicies.sharedFolderMemberPolicy)) && (this.sharedFolderJoinPolicy == teamSharingPolicies.sharedFolderJoinPolicy || this.sharedFolderJoinPolicy.equals(teamSharingPolicies.sharedFolderJoinPolicy)) && (this.sharedLinkCreatePolicy == teamSharingPolicies.sharedLinkCreatePolicy || this.sharedLinkCreatePolicy.equals(teamSharingPolicies.sharedLinkCreatePolicy));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<TeamSharingPolicies> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamSharingPolicies teamSharingPolicies, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_member_policy");
            SharedFolderMemberPolicy.Serializer.INSTANCE.serialize(teamSharingPolicies.sharedFolderMemberPolicy, gVar);
            gVar.a("shared_folder_join_policy");
            SharedFolderJoinPolicy.Serializer.INSTANCE.serialize(teamSharingPolicies.sharedFolderJoinPolicy, gVar);
            gVar.a("shared_link_create_policy");
            SharedLinkCreatePolicy.Serializer.INSTANCE.serialize(teamSharingPolicies.sharedLinkCreatePolicy, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamSharingPolicies deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharedLinkCreatePolicy sharedLinkCreatePolicyDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharedFolderJoinPolicy sharedFolderJoinPolicyDeserialize = null;
                SharedFolderMemberPolicy sharedFolderMemberPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_member_policy".equals(strD)) {
                        sharedFolderMemberPolicyDeserialize = SharedFolderMemberPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("shared_folder_join_policy".equals(strD)) {
                        sharedFolderJoinPolicyDeserialize = SharedFolderJoinPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("shared_link_create_policy".equals(strD)) {
                        sharedLinkCreatePolicyDeserialize = SharedLinkCreatePolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (sharedFolderMemberPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_folder_member_policy\" missing.");
                }
                if (sharedFolderJoinPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_folder_join_policy\" missing.");
                }
                if (sharedLinkCreatePolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_link_create_policy\" missing.");
                }
                TeamSharingPolicies teamSharingPolicies = new TeamSharingPolicies(sharedFolderMemberPolicyDeserialize, sharedFolderJoinPolicyDeserialize, sharedLinkCreatePolicyDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamSharingPolicies;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
