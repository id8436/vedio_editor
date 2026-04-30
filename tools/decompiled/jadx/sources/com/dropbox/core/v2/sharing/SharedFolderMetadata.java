package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.FolderPermission;
import com.dropbox.core.v2.sharing.FolderPolicy;
import com.dropbox.core.v2.sharing.SharedContentLinkMetadata;
import com.dropbox.core.v2.sharing.SharedFolderMetadataBase;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderMetadata extends SharedFolderMetadataBase {
    protected final SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected final List<FolderPermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected final String sharedFolderId;
    protected final Date timeInvited;

    public SharedFolderMetadata(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date, List<String> list, Team team, String str4, String str5, SharedContentLinkMetadata sharedContentLinkMetadata, List<FolderPermission> list2) {
        super(accessLevel, z, z2, list, team, str4, str5);
        this.linkMetadata = sharedContentLinkMetadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (list2 != null) {
            Iterator<FolderPermission> it = list2.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'permissions' is null");
                }
            }
        }
        this.permissions = list2;
        if (folderPolicy == null) {
            throw new IllegalArgumentException("Required value for 'policy' is null");
        }
        this.policy = folderPolicy;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'previewUrl' is null");
        }
        this.previewUrl = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str3;
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'timeInvited' is null");
        }
        this.timeInvited = LangUtil.truncateMillis(date);
    }

    public SharedFolderMetadata(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
        this(accessLevel, z, z2, str, folderPolicy, str2, str3, date, null, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public boolean getIsInsideTeamFolder() {
        return this.isInsideTeamFolder;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public boolean getIsTeamFolder() {
        return this.isTeamFolder;
    }

    public String getName() {
        return this.name;
    }

    public FolderPolicy getPolicy() {
        return this.policy;
    }

    public String getPreviewUrl() {
        return this.previewUrl;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public Date getTimeInvited() {
        return this.timeInvited;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public List<String> getOwnerDisplayNames() {
        return this.ownerDisplayNames;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public Team getOwnerTeam() {
        return this.ownerTeam;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public String getPathLower() {
        return this.pathLower;
    }

    public SharedContentLinkMetadata getLinkMetadata() {
        return this.linkMetadata;
    }

    public List<FolderPermission> getPermissions() {
        return this.permissions;
    }

    public static Builder newBuilder(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
        return new Builder(accessLevel, z, z2, str, folderPolicy, str2, str3, date);
    }

    public class Builder extends SharedFolderMetadataBase.Builder {
        protected SharedContentLinkMetadata linkMetadata;
        protected final String name;
        protected List<FolderPermission> permissions;
        protected final FolderPolicy policy;
        protected final String previewUrl;
        protected final String sharedFolderId;
        protected final Date timeInvited;

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public /* bridge */ /* synthetic */ SharedFolderMetadataBase.Builder withOwnerDisplayNames(List list) {
            return withOwnerDisplayNames((List<String>) list);
        }

        protected Builder(AccessLevel accessLevel, boolean z, boolean z2, String str, FolderPolicy folderPolicy, String str2, String str3, Date date) {
            super(accessLevel, z, z2);
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str;
            if (folderPolicy == null) {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            this.policy = folderPolicy;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            this.previewUrl = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str3;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'timeInvited' is null");
            }
            this.timeInvited = LangUtil.truncateMillis(date);
            this.linkMetadata = null;
            this.permissions = null;
        }

        public Builder withLinkMetadata(SharedContentLinkMetadata sharedContentLinkMetadata) {
            this.linkMetadata = sharedContentLinkMetadata;
            return this;
        }

        public Builder withPermissions(List<FolderPermission> list) {
            if (list != null) {
                Iterator<FolderPermission> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withOwnerDisplayNames(List<String> list) {
            super.withOwnerDisplayNames(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withOwnerTeam(Team team) {
            super.withOwnerTeam(team);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withParentSharedFolderId(String str) {
            super.withParentSharedFolderId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase.Builder
        public SharedFolderMetadata build() {
            return new SharedFolderMetadata(this.accessType, this.isInsideTeamFolder, this.isTeamFolder, this.name, this.policy, this.previewUrl, this.sharedFolderId, this.timeInvited, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower, this.linkMetadata, this.permissions);
        }
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkMetadata, this.name, this.permissions, this.policy, this.previewUrl, this.sharedFolderId, this.timeInvited}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderMetadata sharedFolderMetadata = (SharedFolderMetadata) obj;
            if ((this.accessType == sharedFolderMetadata.accessType || this.accessType.equals(sharedFolderMetadata.accessType)) && this.isInsideTeamFolder == sharedFolderMetadata.isInsideTeamFolder && this.isTeamFolder == sharedFolderMetadata.isTeamFolder && ((this.name == sharedFolderMetadata.name || this.name.equals(sharedFolderMetadata.name)) && ((this.policy == sharedFolderMetadata.policy || this.policy.equals(sharedFolderMetadata.policy)) && ((this.previewUrl == sharedFolderMetadata.previewUrl || this.previewUrl.equals(sharedFolderMetadata.previewUrl)) && ((this.sharedFolderId == sharedFolderMetadata.sharedFolderId || this.sharedFolderId.equals(sharedFolderMetadata.sharedFolderId)) && ((this.timeInvited == sharedFolderMetadata.timeInvited || this.timeInvited.equals(sharedFolderMetadata.timeInvited)) && ((this.ownerDisplayNames == sharedFolderMetadata.ownerDisplayNames || (this.ownerDisplayNames != null && this.ownerDisplayNames.equals(sharedFolderMetadata.ownerDisplayNames))) && ((this.ownerTeam == sharedFolderMetadata.ownerTeam || (this.ownerTeam != null && this.ownerTeam.equals(sharedFolderMetadata.ownerTeam))) && ((this.parentSharedFolderId == sharedFolderMetadata.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(sharedFolderMetadata.parentSharedFolderId))) && ((this.pathLower == sharedFolderMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(sharedFolderMetadata.pathLower))) && (this.linkMetadata == sharedFolderMetadata.linkMetadata || (this.linkMetadata != null && this.linkMetadata.equals(sharedFolderMetadata.linkMetadata))))))))))))) {
                if (this.permissions == sharedFolderMetadata.permissions) {
                    return true;
                }
                if (this.permissions != null && this.permissions.equals(sharedFolderMetadata.permissions)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.SharedFolderMetadataBase
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SharedFolderMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderMetadata sharedFolderMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(sharedFolderMetadata.accessType, gVar);
            gVar.a("is_inside_team_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedFolderMetadata.isInsideTeamFolder), gVar);
            gVar.a("is_team_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedFolderMetadata.isTeamFolder), gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(sharedFolderMetadata.name, gVar);
            gVar.a("policy");
            FolderPolicy.Serializer.INSTANCE.serialize(sharedFolderMetadata.policy, gVar);
            gVar.a("preview_url");
            StoneSerializers.string().serialize(sharedFolderMetadata.previewUrl, gVar);
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(sharedFolderMetadata.sharedFolderId, gVar);
            gVar.a("time_invited");
            StoneSerializers.timestamp().serialize(sharedFolderMetadata.timeInvited, gVar);
            if (sharedFolderMetadata.ownerDisplayNames != null) {
                gVar.a("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(sharedFolderMetadata.ownerDisplayNames, gVar);
            }
            if (sharedFolderMetadata.ownerTeam != null) {
                gVar.a("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(sharedFolderMetadata.ownerTeam, gVar);
            }
            if (sharedFolderMetadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderMetadata.parentSharedFolderId, gVar);
            }
            if (sharedFolderMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderMetadata.pathLower, gVar);
            }
            if (sharedFolderMetadata.linkMetadata != null) {
                gVar.a("link_metadata");
                StoneSerializers.nullableStruct(SharedContentLinkMetadata.Serializer.INSTANCE).serialize(sharedFolderMetadata.linkMetadata, gVar);
            }
            if (sharedFolderMetadata.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(FolderPermission.Serializer.INSTANCE)).serialize(sharedFolderMetadata.permissions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderMetadata deserialize(k kVar, boolean z) throws IOException {
            Boolean boolDeserialize;
            AccessLevel accessLevelDeserialize;
            Boolean boolDeserialize2;
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                AccessLevel accessLevel = null;
                Boolean bool = null;
                Boolean bool2 = null;
                String strDeserialize = null;
                FolderPolicy folderPolicyDeserialize = null;
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                Date dateDeserialize = null;
                List list = null;
                Team team = null;
                String str = null;
                String str2 = null;
                SharedContentLinkMetadata sharedContentLinkMetadata = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        boolDeserialize = bool2;
                        Boolean bool3 = bool;
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize2 = bool3;
                    } else if ("is_inside_team_folder".equals(strD)) {
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("is_team_folder".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool4 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool4;
                    } else if ("name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool5 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool5;
                    } else if ("policy".equals(strD)) {
                        folderPolicyDeserialize = FolderPolicy.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool6 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool6;
                    } else if ("preview_url".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool7 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool7;
                    } else if ("shared_folder_id".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool8 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool8;
                    } else if ("time_invited".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool9 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool9;
                    } else if ("owner_display_names".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool10 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool10;
                    } else if ("owner_team".equals(strD)) {
                        team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool11 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool11;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool12 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool12;
                    } else if ("path_lower".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool13 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool13;
                    } else if ("link_metadata".equals(strD)) {
                        sharedContentLinkMetadata = (SharedContentLinkMetadata) StoneSerializers.nullableStruct(SharedContentLinkMetadata.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool14 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool14;
                    } else if ("permissions".equals(strD)) {
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FolderPermission.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool15 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool15;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool16 = bool;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool16;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool17 = boolDeserialize2;
                    accessLevel = accessLevelDeserialize;
                    bool = bool17;
                }
                if (accessLevel == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_inside_team_folder\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"is_team_folder\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (folderPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"policy\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"preview_url\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (dateDeserialize == null) {
                    throw new j(kVar, "Required field \"time_invited\" missing.");
                }
                SharedFolderMetadata sharedFolderMetadata = new SharedFolderMetadata(accessLevel, bool.booleanValue(), bool2.booleanValue(), strDeserialize, folderPolicyDeserialize, strDeserialize2, strDeserialize3, dateDeserialize, list, team, str, str2, sharedContentLinkMetadata, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
