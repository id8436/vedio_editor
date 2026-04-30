package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AclUpdatePolicy;
import com.dropbox.core.v2.sharing.MemberPolicy;
import com.dropbox.core.v2.sharing.SharedLinkPolicy;
import com.dropbox.core.v2.sharing.ViewerInfoPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FolderPolicy {
    protected final AclUpdatePolicy aclUpdatePolicy;
    protected final MemberPolicy memberPolicy;
    protected final MemberPolicy resolvedMemberPolicy;
    protected final SharedLinkPolicy sharedLinkPolicy;
    protected final ViewerInfoPolicy viewerInfoPolicy;

    public FolderPolicy(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy, MemberPolicy memberPolicy, MemberPolicy memberPolicy2, ViewerInfoPolicy viewerInfoPolicy) {
        this.memberPolicy = memberPolicy;
        this.resolvedMemberPolicy = memberPolicy2;
        if (aclUpdatePolicy == null) {
            throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
        }
        this.aclUpdatePolicy = aclUpdatePolicy;
        if (sharedLinkPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
        }
        this.sharedLinkPolicy = sharedLinkPolicy;
        this.viewerInfoPolicy = viewerInfoPolicy;
    }

    public FolderPolicy(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
        this(aclUpdatePolicy, sharedLinkPolicy, null, null, null);
    }

    public AclUpdatePolicy getAclUpdatePolicy() {
        return this.aclUpdatePolicy;
    }

    public SharedLinkPolicy getSharedLinkPolicy() {
        return this.sharedLinkPolicy;
    }

    public MemberPolicy getMemberPolicy() {
        return this.memberPolicy;
    }

    public MemberPolicy getResolvedMemberPolicy() {
        return this.resolvedMemberPolicy;
    }

    public ViewerInfoPolicy getViewerInfoPolicy() {
        return this.viewerInfoPolicy;
    }

    public static Builder newBuilder(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
        return new Builder(aclUpdatePolicy, sharedLinkPolicy);
    }

    public class Builder {
        protected final AclUpdatePolicy aclUpdatePolicy;
        protected MemberPolicy memberPolicy;
        protected MemberPolicy resolvedMemberPolicy;
        protected final SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        protected Builder(AclUpdatePolicy aclUpdatePolicy, SharedLinkPolicy sharedLinkPolicy) {
            if (aclUpdatePolicy == null) {
                throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
            }
            this.aclUpdatePolicy = aclUpdatePolicy;
            if (sharedLinkPolicy == null) {
                throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
            }
            this.sharedLinkPolicy = sharedLinkPolicy;
            this.memberPolicy = null;
            this.resolvedMemberPolicy = null;
            this.viewerInfoPolicy = null;
        }

        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            this.memberPolicy = memberPolicy;
            return this;
        }

        public Builder withResolvedMemberPolicy(MemberPolicy memberPolicy) {
            this.resolvedMemberPolicy = memberPolicy;
            return this;
        }

        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            this.viewerInfoPolicy = viewerInfoPolicy;
            return this;
        }

        public FolderPolicy build() {
            return new FolderPolicy(this.aclUpdatePolicy, this.sharedLinkPolicy, this.memberPolicy, this.resolvedMemberPolicy, this.viewerInfoPolicy);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.memberPolicy, this.resolvedMemberPolicy, this.aclUpdatePolicy, this.sharedLinkPolicy, this.viewerInfoPolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderPolicy folderPolicy = (FolderPolicy) obj;
            if ((this.aclUpdatePolicy == folderPolicy.aclUpdatePolicy || this.aclUpdatePolicy.equals(folderPolicy.aclUpdatePolicy)) && ((this.sharedLinkPolicy == folderPolicy.sharedLinkPolicy || this.sharedLinkPolicy.equals(folderPolicy.sharedLinkPolicy)) && ((this.memberPolicy == folderPolicy.memberPolicy || (this.memberPolicy != null && this.memberPolicy.equals(folderPolicy.memberPolicy))) && (this.resolvedMemberPolicy == folderPolicy.resolvedMemberPolicy || (this.resolvedMemberPolicy != null && this.resolvedMemberPolicy.equals(folderPolicy.resolvedMemberPolicy)))))) {
                if (this.viewerInfoPolicy == folderPolicy.viewerInfoPolicy) {
                    return true;
                }
                if (this.viewerInfoPolicy != null && this.viewerInfoPolicy.equals(folderPolicy.viewerInfoPolicy)) {
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

    class Serializer extends StructSerializer<FolderPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderPolicy folderPolicy, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("acl_update_policy");
            AclUpdatePolicy.Serializer.INSTANCE.serialize(folderPolicy.aclUpdatePolicy, gVar);
            gVar.a("shared_link_policy");
            SharedLinkPolicy.Serializer.INSTANCE.serialize(folderPolicy.sharedLinkPolicy, gVar);
            if (folderPolicy.memberPolicy != null) {
                gVar.a("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(folderPolicy.memberPolicy, gVar);
            }
            if (folderPolicy.resolvedMemberPolicy != null) {
                gVar.a("resolved_member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(folderPolicy.resolvedMemberPolicy, gVar);
            }
            if (folderPolicy.viewerInfoPolicy != null) {
                gVar.a("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(folderPolicy.viewerInfoPolicy, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderPolicy deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ViewerInfoPolicy viewerInfoPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberPolicy memberPolicy = null;
                MemberPolicy memberPolicy2 = null;
                SharedLinkPolicy sharedLinkPolicyDeserialize = null;
                AclUpdatePolicy aclUpdatePolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("acl_update_policy".equals(strD)) {
                        aclUpdatePolicyDeserialize = AclUpdatePolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("shared_link_policy".equals(strD)) {
                        sharedLinkPolicyDeserialize = SharedLinkPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("member_policy".equals(strD)) {
                        memberPolicy2 = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("resolved_member_policy".equals(strD)) {
                        memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("viewer_info_policy".equals(strD)) {
                        viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (aclUpdatePolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"acl_update_policy\" missing.");
                }
                if (sharedLinkPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_link_policy\" missing.");
                }
                FolderPolicy folderPolicy = new FolderPolicy(aclUpdatePolicyDeserialize, sharedLinkPolicyDeserialize, memberPolicy2, memberPolicy, viewerInfoPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderPolicy;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
