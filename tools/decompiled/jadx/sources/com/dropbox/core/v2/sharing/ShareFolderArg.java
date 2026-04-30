package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AclUpdatePolicy;
import com.dropbox.core.v2.sharing.FolderAction;
import com.dropbox.core.v2.sharing.LinkSettings;
import com.dropbox.core.v2.sharing.MemberPolicy;
import com.dropbox.core.v2.sharing.ShareFolderArgBase;
import com.dropbox.core.v2.sharing.SharedLinkPolicy;
import com.dropbox.core.v2.sharing.ViewerInfoPolicy;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ShareFolderArg extends ShareFolderArgBase {
    protected final List<FolderAction> actions;
    protected final LinkSettings linkSettings;

    public ShareFolderArg(String str, AclUpdatePolicy aclUpdatePolicy, boolean z, MemberPolicy memberPolicy, SharedLinkPolicy sharedLinkPolicy, ViewerInfoPolicy viewerInfoPolicy, List<FolderAction> list, LinkSettings linkSettings) {
        super(str, aclUpdatePolicy, z, memberPolicy, sharedLinkPolicy, viewerInfoPolicy);
        if (list != null) {
            Iterator<FolderAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
        this.linkSettings = linkSettings;
    }

    public ShareFolderArg(String str) {
        this(str, null, false, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public String getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public AclUpdatePolicy getAclUpdatePolicy() {
        return this.aclUpdatePolicy;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public boolean getForceAsync() {
        return this.forceAsync;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public MemberPolicy getMemberPolicy() {
        return this.memberPolicy;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public SharedLinkPolicy getSharedLinkPolicy() {
        return this.sharedLinkPolicy;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public ViewerInfoPolicy getViewerInfoPolicy() {
        return this.viewerInfoPolicy;
    }

    public List<FolderAction> getActions() {
        return this.actions;
    }

    public LinkSettings getLinkSettings() {
        return this.linkSettings;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder extends ShareFolderArgBase.Builder {
        protected List<FolderAction> actions;
        protected LinkSettings linkSettings;

        protected Builder(String str) {
            super(str);
            this.actions = null;
            this.linkSettings = null;
        }

        public Builder withActions(List<FolderAction> list) {
            if (list != null) {
                Iterator<FolderAction> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public Builder withLinkSettings(LinkSettings linkSettings) {
            this.linkSettings = linkSettings;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            super.withAclUpdatePolicy(aclUpdatePolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withForceAsync(Boolean bool) {
            super.withForceAsync(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            super.withMemberPolicy(memberPolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
            super.withSharedLinkPolicy(sharedLinkPolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            super.withViewerInfoPolicy(viewerInfoPolicy);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase.Builder
        public ShareFolderArg build() {
            return new ShareFolderArg(this.path, this.aclUpdatePolicy, this.forceAsync, this.memberPolicy, this.sharedLinkPolicy, this.viewerInfoPolicy, this.actions, this.linkSettings);
        }
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.actions, this.linkSettings}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ShareFolderArg shareFolderArg = (ShareFolderArg) obj;
            if ((this.path == shareFolderArg.path || this.path.equals(shareFolderArg.path)) && ((this.aclUpdatePolicy == shareFolderArg.aclUpdatePolicy || (this.aclUpdatePolicy != null && this.aclUpdatePolicy.equals(shareFolderArg.aclUpdatePolicy))) && this.forceAsync == shareFolderArg.forceAsync && ((this.memberPolicy == shareFolderArg.memberPolicy || (this.memberPolicy != null && this.memberPolicy.equals(shareFolderArg.memberPolicy))) && ((this.sharedLinkPolicy == shareFolderArg.sharedLinkPolicy || (this.sharedLinkPolicy != null && this.sharedLinkPolicy.equals(shareFolderArg.sharedLinkPolicy))) && ((this.viewerInfoPolicy == shareFolderArg.viewerInfoPolicy || (this.viewerInfoPolicy != null && this.viewerInfoPolicy.equals(shareFolderArg.viewerInfoPolicy))) && (this.actions == shareFolderArg.actions || (this.actions != null && this.actions.equals(shareFolderArg.actions)))))))) {
                if (this.linkSettings == shareFolderArg.linkSettings) {
                    return true;
                }
                if (this.linkSettings != null && this.linkSettings.equals(shareFolderArg.linkSettings)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.ShareFolderArgBase
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ShareFolderArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ShareFolderArg shareFolderArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(shareFolderArg.path, gVar);
            if (shareFolderArg.aclUpdatePolicy != null) {
                gVar.a("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize(shareFolderArg.aclUpdatePolicy, gVar);
            }
            gVar.a("force_async");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(shareFolderArg.forceAsync), gVar);
            if (shareFolderArg.memberPolicy != null) {
                gVar.a("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(shareFolderArg.memberPolicy, gVar);
            }
            if (shareFolderArg.sharedLinkPolicy != null) {
                gVar.a("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize(shareFolderArg.sharedLinkPolicy, gVar);
            }
            if (shareFolderArg.viewerInfoPolicy != null) {
                gVar.a("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(shareFolderArg.viewerInfoPolicy, gVar);
            }
            if (shareFolderArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).serialize(shareFolderArg.actions, gVar);
            }
            if (shareFolderArg.linkSettings != null) {
                gVar.a("link_settings");
                StoneSerializers.nullableStruct(LinkSettings.Serializer.INSTANCE).serialize(shareFolderArg.linkSettings, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ShareFolderArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            LinkSettings linkSettings = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                List list = null;
                ViewerInfoPolicy viewerInfoPolicy = null;
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
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("link_settings".equals(strD)) {
                        linkSettings = (LinkSettings) StoneSerializers.nullableStruct(LinkSettings.Serializer.INSTANCE).deserialize(kVar);
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
                ShareFolderArg shareFolderArg = new ShareFolderArg(strDeserialize, aclUpdatePolicy, bool.booleanValue(), memberPolicy, sharedLinkPolicy, viewerInfoPolicy, list, linkSettings);
                if (!z) {
                    expectEndObject(kVar);
                }
                return shareFolderArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
