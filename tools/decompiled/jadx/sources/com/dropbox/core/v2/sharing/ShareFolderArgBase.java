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
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ShareFolderArgBase {
    protected final AclUpdatePolicy aclUpdatePolicy;
    protected final boolean forceAsync;
    protected final MemberPolicy memberPolicy;
    protected final String path;
    protected final SharedLinkPolicy sharedLinkPolicy;
    protected final ViewerInfoPolicy viewerInfoPolicy;

    public ShareFolderArgBase(String str, AclUpdatePolicy aclUpdatePolicy, boolean z, MemberPolicy memberPolicy, SharedLinkPolicy sharedLinkPolicy, ViewerInfoPolicy viewerInfoPolicy) {
        this.aclUpdatePolicy = aclUpdatePolicy;
        this.forceAsync = z;
        this.memberPolicy = memberPolicy;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        this.sharedLinkPolicy = sharedLinkPolicy;
        this.viewerInfoPolicy = viewerInfoPolicy;
    }

    public ShareFolderArgBase(String str) {
        this(str, null, false, null, null, null);
    }

    public String getPath() {
        return this.path;
    }

    public AclUpdatePolicy getAclUpdatePolicy() {
        return this.aclUpdatePolicy;
    }

    public boolean getForceAsync() {
        return this.forceAsync;
    }

    public MemberPolicy getMemberPolicy() {
        return this.memberPolicy;
    }

    public SharedLinkPolicy getSharedLinkPolicy() {
        return this.sharedLinkPolicy;
    }

    public ViewerInfoPolicy getViewerInfoPolicy() {
        return this.viewerInfoPolicy;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected AclUpdatePolicy aclUpdatePolicy;
        protected boolean forceAsync;
        protected MemberPolicy memberPolicy;
        protected final String path;
        protected SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.aclUpdatePolicy = null;
            this.forceAsync = false;
            this.memberPolicy = null;
            this.sharedLinkPolicy = null;
            this.viewerInfoPolicy = null;
        }

        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            this.aclUpdatePolicy = aclUpdatePolicy;
            return this;
        }

        public Builder withForceAsync(Boolean bool) {
            if (bool != null) {
                this.forceAsync = bool.booleanValue();
            } else {
                this.forceAsync = false;
            }
            return this;
        }

        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            this.memberPolicy = memberPolicy;
            return this;
        }

        public Builder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
            this.sharedLinkPolicy = sharedLinkPolicy;
            return this;
        }

        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            this.viewerInfoPolicy = viewerInfoPolicy;
            return this;
        }

        public ShareFolderArgBase build() {
            return new ShareFolderArgBase(this.path, this.aclUpdatePolicy, this.forceAsync, this.memberPolicy, this.sharedLinkPolicy, this.viewerInfoPolicy);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.aclUpdatePolicy, Boolean.valueOf(this.forceAsync), this.memberPolicy, this.path, this.sharedLinkPolicy, this.viewerInfoPolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ShareFolderArgBase shareFolderArgBase = (ShareFolderArgBase) obj;
            if ((this.path == shareFolderArgBase.path || this.path.equals(shareFolderArgBase.path)) && ((this.aclUpdatePolicy == shareFolderArgBase.aclUpdatePolicy || (this.aclUpdatePolicy != null && this.aclUpdatePolicy.equals(shareFolderArgBase.aclUpdatePolicy))) && this.forceAsync == shareFolderArgBase.forceAsync && ((this.memberPolicy == shareFolderArgBase.memberPolicy || (this.memberPolicy != null && this.memberPolicy.equals(shareFolderArgBase.memberPolicy))) && (this.sharedLinkPolicy == shareFolderArgBase.sharedLinkPolicy || (this.sharedLinkPolicy != null && this.sharedLinkPolicy.equals(shareFolderArgBase.sharedLinkPolicy)))))) {
                if (this.viewerInfoPolicy == shareFolderArgBase.viewerInfoPolicy) {
                    return true;
                }
                if (this.viewerInfoPolicy != null && this.viewerInfoPolicy.equals(shareFolderArgBase.viewerInfoPolicy)) {
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

    class Serializer extends StructSerializer<ShareFolderArgBase> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ShareFolderArgBase shareFolderArgBase, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(shareFolderArgBase.path, gVar);
            if (shareFolderArgBase.aclUpdatePolicy != null) {
                gVar.a("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize(shareFolderArgBase.aclUpdatePolicy, gVar);
            }
            gVar.a("force_async");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(shareFolderArgBase.forceAsync), gVar);
            if (shareFolderArgBase.memberPolicy != null) {
                gVar.a("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(shareFolderArgBase.memberPolicy, gVar);
            }
            if (shareFolderArgBase.sharedLinkPolicy != null) {
                gVar.a("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize(shareFolderArgBase.sharedLinkPolicy, gVar);
            }
            if (shareFolderArgBase.viewerInfoPolicy != null) {
                gVar.a("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(shareFolderArgBase.viewerInfoPolicy, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ShareFolderArgBase deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            ViewerInfoPolicy viewerInfoPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                SharedLinkPolicy sharedLinkPolicy = null;
                MemberPolicy memberPolicy = null;
                AclUpdatePolicy aclUpdatePolicy = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("acl_update_policy".equals(strD)) {
                        aclUpdatePolicy = (AclUpdatePolicy) StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("force_async".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("member_policy".equals(strD)) {
                        memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("shared_link_policy".equals(strD)) {
                        sharedLinkPolicy = (SharedLinkPolicy) StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("viewer_info_policy".equals(strD)) {
                        viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                ShareFolderArgBase shareFolderArgBase = new ShareFolderArgBase(strDeserialize, aclUpdatePolicy, bool.booleanValue(), memberPolicy, sharedLinkPolicy, viewerInfoPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return shareFolderArgBase;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
