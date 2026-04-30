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
import com.dropbox.core.v2.sharing.SharedLinkPolicy;
import com.dropbox.core.v2.sharing.ViewerInfoPolicy;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class UpdateFolderPolicyArg {
    protected final AclUpdatePolicy aclUpdatePolicy;
    protected final List<FolderAction> actions;
    protected final LinkSettings linkSettings;
    protected final MemberPolicy memberPolicy;
    protected final String sharedFolderId;
    protected final SharedLinkPolicy sharedLinkPolicy;
    protected final ViewerInfoPolicy viewerInfoPolicy;

    public UpdateFolderPolicyArg(String str, MemberPolicy memberPolicy, AclUpdatePolicy aclUpdatePolicy, ViewerInfoPolicy viewerInfoPolicy, SharedLinkPolicy sharedLinkPolicy, LinkSettings linkSettings, List<FolderAction> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        this.memberPolicy = memberPolicy;
        this.aclUpdatePolicy = aclUpdatePolicy;
        this.viewerInfoPolicy = viewerInfoPolicy;
        this.sharedLinkPolicy = sharedLinkPolicy;
        this.linkSettings = linkSettings;
        if (list != null) {
            Iterator<FolderAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
    }

    public UpdateFolderPolicyArg(String str) {
        this(str, null, null, null, null, null, null);
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public MemberPolicy getMemberPolicy() {
        return this.memberPolicy;
    }

    public AclUpdatePolicy getAclUpdatePolicy() {
        return this.aclUpdatePolicy;
    }

    public ViewerInfoPolicy getViewerInfoPolicy() {
        return this.viewerInfoPolicy;
    }

    public SharedLinkPolicy getSharedLinkPolicy() {
        return this.sharedLinkPolicy;
    }

    public LinkSettings getLinkSettings() {
        return this.linkSettings;
    }

    public List<FolderAction> getActions() {
        return this.actions;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected AclUpdatePolicy aclUpdatePolicy;
        protected List<FolderAction> actions;
        protected LinkSettings linkSettings;
        protected MemberPolicy memberPolicy;
        protected final String sharedFolderId;
        protected SharedLinkPolicy sharedLinkPolicy;
        protected ViewerInfoPolicy viewerInfoPolicy;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            this.memberPolicy = null;
            this.aclUpdatePolicy = null;
            this.viewerInfoPolicy = null;
            this.sharedLinkPolicy = null;
            this.linkSettings = null;
            this.actions = null;
        }

        public Builder withMemberPolicy(MemberPolicy memberPolicy) {
            this.memberPolicy = memberPolicy;
            return this;
        }

        public Builder withAclUpdatePolicy(AclUpdatePolicy aclUpdatePolicy) {
            this.aclUpdatePolicy = aclUpdatePolicy;
            return this;
        }

        public Builder withViewerInfoPolicy(ViewerInfoPolicy viewerInfoPolicy) {
            this.viewerInfoPolicy = viewerInfoPolicy;
            return this;
        }

        public Builder withSharedLinkPolicy(SharedLinkPolicy sharedLinkPolicy) {
            this.sharedLinkPolicy = sharedLinkPolicy;
            return this;
        }

        public Builder withLinkSettings(LinkSettings linkSettings) {
            this.linkSettings = linkSettings;
            return this;
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

        public UpdateFolderPolicyArg build() {
            return new UpdateFolderPolicyArg(this.sharedFolderId, this.memberPolicy, this.aclUpdatePolicy, this.viewerInfoPolicy, this.sharedLinkPolicy, this.linkSettings, this.actions);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.memberPolicy, this.aclUpdatePolicy, this.viewerInfoPolicy, this.sharedLinkPolicy, this.linkSettings, this.actions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UpdateFolderPolicyArg updateFolderPolicyArg = (UpdateFolderPolicyArg) obj;
            if ((this.sharedFolderId == updateFolderPolicyArg.sharedFolderId || this.sharedFolderId.equals(updateFolderPolicyArg.sharedFolderId)) && ((this.memberPolicy == updateFolderPolicyArg.memberPolicy || (this.memberPolicy != null && this.memberPolicy.equals(updateFolderPolicyArg.memberPolicy))) && ((this.aclUpdatePolicy == updateFolderPolicyArg.aclUpdatePolicy || (this.aclUpdatePolicy != null && this.aclUpdatePolicy.equals(updateFolderPolicyArg.aclUpdatePolicy))) && ((this.viewerInfoPolicy == updateFolderPolicyArg.viewerInfoPolicy || (this.viewerInfoPolicy != null && this.viewerInfoPolicy.equals(updateFolderPolicyArg.viewerInfoPolicy))) && ((this.sharedLinkPolicy == updateFolderPolicyArg.sharedLinkPolicy || (this.sharedLinkPolicy != null && this.sharedLinkPolicy.equals(updateFolderPolicyArg.sharedLinkPolicy))) && (this.linkSettings == updateFolderPolicyArg.linkSettings || (this.linkSettings != null && this.linkSettings.equals(updateFolderPolicyArg.linkSettings)))))))) {
                if (this.actions == updateFolderPolicyArg.actions) {
                    return true;
                }
                if (this.actions != null && this.actions.equals(updateFolderPolicyArg.actions)) {
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

    class Serializer extends StructSerializer<UpdateFolderPolicyArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateFolderPolicyArg updateFolderPolicyArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(updateFolderPolicyArg.sharedFolderId, gVar);
            if (updateFolderPolicyArg.memberPolicy != null) {
                gVar.a("member_policy");
                StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).serialize(updateFolderPolicyArg.memberPolicy, gVar);
            }
            if (updateFolderPolicyArg.aclUpdatePolicy != null) {
                gVar.a("acl_update_policy");
                StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).serialize(updateFolderPolicyArg.aclUpdatePolicy, gVar);
            }
            if (updateFolderPolicyArg.viewerInfoPolicy != null) {
                gVar.a("viewer_info_policy");
                StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).serialize(updateFolderPolicyArg.viewerInfoPolicy, gVar);
            }
            if (updateFolderPolicyArg.sharedLinkPolicy != null) {
                gVar.a("shared_link_policy");
                StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).serialize(updateFolderPolicyArg.sharedLinkPolicy, gVar);
            }
            if (updateFolderPolicyArg.linkSettings != null) {
                gVar.a("link_settings");
                StoneSerializers.nullableStruct(LinkSettings.Serializer.INSTANCE).serialize(updateFolderPolicyArg.linkSettings, gVar);
            }
            if (updateFolderPolicyArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).serialize(updateFolderPolicyArg.actions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateFolderPolicyArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                LinkSettings linkSettings = null;
                SharedLinkPolicy sharedLinkPolicy = null;
                ViewerInfoPolicy viewerInfoPolicy = null;
                AclUpdatePolicy aclUpdatePolicy = null;
                MemberPolicy memberPolicy = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("member_policy".equals(strD)) {
                        memberPolicy = (MemberPolicy) StoneSerializers.nullable(MemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("acl_update_policy".equals(strD)) {
                        aclUpdatePolicy = (AclUpdatePolicy) StoneSerializers.nullable(AclUpdatePolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("viewer_info_policy".equals(strD)) {
                        viewerInfoPolicy = (ViewerInfoPolicy) StoneSerializers.nullable(ViewerInfoPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("shared_link_policy".equals(strD)) {
                        sharedLinkPolicy = (SharedLinkPolicy) StoneSerializers.nullable(SharedLinkPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("link_settings".equals(strD)) {
                        linkSettings = (LinkSettings) StoneSerializers.nullableStruct(LinkSettings.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                UpdateFolderPolicyArg updateFolderPolicyArg = new UpdateFolderPolicyArg(strDeserialize, memberPolicy, aclUpdatePolicy, viewerInfoPolicy, sharedLinkPolicy, linkSettings, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateFolderPolicyArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
