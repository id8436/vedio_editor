package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.ExpectedSharedContentLinkMetadata;
import com.dropbox.core.v2.sharing.FilePermission;
import com.dropbox.core.v2.sharing.FolderPolicy;
import com.dropbox.core.v2.sharing.SharedContentLinkMetadata;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFileMetadata {
    protected final AccessLevel accessType;
    protected final ExpectedSharedContentLinkMetadata expectedLinkMetadata;
    protected final String id;
    protected final SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected final List<String> ownerDisplayNames;
    protected final Team ownerTeam;
    protected final String parentSharedFolderId;
    protected final String pathDisplay;
    protected final String pathLower;
    protected final List<FilePermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected final Date timeInvited;

    public SharedFileMetadata(String str, String str2, FolderPolicy folderPolicy, String str3, AccessLevel accessLevel, ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata, SharedContentLinkMetadata sharedContentLinkMetadata, List<String> list, Team team, String str4, String str5, String str6, List<FilePermission> list2, Date date) {
        this.accessType = accessLevel;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        if (!Pattern.matches("id:.*", str)) {
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        this.id = str;
        this.expectedLinkMetadata = expectedSharedContentLinkMetadata;
        this.linkMetadata = sharedContentLinkMetadata;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                }
            }
        }
        this.ownerDisplayNames = list;
        this.ownerTeam = team;
        if (str4 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str4;
        this.pathDisplay = str5;
        this.pathLower = str6;
        if (list2 != null) {
            Iterator<FilePermission> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'permissions' is null");
                }
            }
        }
        this.permissions = list2;
        if (folderPolicy == null) {
            throw new IllegalArgumentException("Required value for 'policy' is null");
        }
        this.policy = folderPolicy;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'previewUrl' is null");
        }
        this.previewUrl = str3;
        this.timeInvited = LangUtil.truncateMillis(date);
    }

    public SharedFileMetadata(String str, String str2, FolderPolicy folderPolicy, String str3) {
        this(str, str2, folderPolicy, str3, null, null, null, null, null, null, null, null, null, null);
    }

    public String getId() {
        return this.id;
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

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public ExpectedSharedContentLinkMetadata getExpectedLinkMetadata() {
        return this.expectedLinkMetadata;
    }

    public SharedContentLinkMetadata getLinkMetadata() {
        return this.linkMetadata;
    }

    public List<String> getOwnerDisplayNames() {
        return this.ownerDisplayNames;
    }

    public Team getOwnerTeam() {
        return this.ownerTeam;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getPathDisplay() {
        return this.pathDisplay;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public List<FilePermission> getPermissions() {
        return this.permissions;
    }

    public Date getTimeInvited() {
        return this.timeInvited;
    }

    public static Builder newBuilder(String str, String str2, FolderPolicy folderPolicy, String str3) {
        return new Builder(str, str2, folderPolicy, str3);
    }

    public class Builder {
        protected AccessLevel accessType;
        protected ExpectedSharedContentLinkMetadata expectedLinkMetadata;
        protected final String id;
        protected SharedContentLinkMetadata linkMetadata;
        protected final String name;
        protected List<String> ownerDisplayNames;
        protected Team ownerTeam;
        protected String parentSharedFolderId;
        protected String pathDisplay;
        protected String pathLower;
        protected List<FilePermission> permissions;
        protected final FolderPolicy policy;
        protected final String previewUrl;
        protected Date timeInvited;

        protected Builder(String str, String str2, FolderPolicy folderPolicy, String str3) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            if (!Pattern.matches("id:.*", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.id = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str2;
            if (folderPolicy == null) {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            this.policy = folderPolicy;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            this.previewUrl = str3;
            this.accessType = null;
            this.expectedLinkMetadata = null;
            this.linkMetadata = null;
            this.ownerDisplayNames = null;
            this.ownerTeam = null;
            this.parentSharedFolderId = null;
            this.pathDisplay = null;
            this.pathLower = null;
            this.permissions = null;
            this.timeInvited = null;
        }

        public Builder withAccessType(AccessLevel accessLevel) {
            this.accessType = accessLevel;
            return this;
        }

        public Builder withExpectedLinkMetadata(ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata) {
            this.expectedLinkMetadata = expectedSharedContentLinkMetadata;
            return this;
        }

        public Builder withLinkMetadata(SharedContentLinkMetadata sharedContentLinkMetadata) {
            this.linkMetadata = sharedContentLinkMetadata;
            return this;
        }

        public Builder withOwnerDisplayNames(List<String> list) {
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                    }
                }
            }
            this.ownerDisplayNames = list;
            return this;
        }

        public Builder withOwnerTeam(Team team) {
            this.ownerTeam = team;
            return this;
        }

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withPathDisplay(String str) {
            this.pathDisplay = str;
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public Builder withPermissions(List<FilePermission> list) {
            if (list != null) {
                Iterator<FilePermission> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }

        public Builder withTimeInvited(Date date) {
            this.timeInvited = LangUtil.truncateMillis(date);
            return this;
        }

        public SharedFileMetadata build() {
            return new SharedFileMetadata(this.id, this.name, this.policy, this.previewUrl, this.accessType, this.expectedLinkMetadata, this.linkMetadata, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathDisplay, this.pathLower, this.permissions, this.timeInvited);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, this.id, this.expectedLinkMetadata, this.linkMetadata, this.name, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathDisplay, this.pathLower, this.permissions, this.policy, this.previewUrl, this.timeInvited});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFileMetadata sharedFileMetadata = (SharedFileMetadata) obj;
            if ((this.id == sharedFileMetadata.id || this.id.equals(sharedFileMetadata.id)) && ((this.name == sharedFileMetadata.name || this.name.equals(sharedFileMetadata.name)) && ((this.policy == sharedFileMetadata.policy || this.policy.equals(sharedFileMetadata.policy)) && ((this.previewUrl == sharedFileMetadata.previewUrl || this.previewUrl.equals(sharedFileMetadata.previewUrl)) && ((this.accessType == sharedFileMetadata.accessType || (this.accessType != null && this.accessType.equals(sharedFileMetadata.accessType))) && ((this.expectedLinkMetadata == sharedFileMetadata.expectedLinkMetadata || (this.expectedLinkMetadata != null && this.expectedLinkMetadata.equals(sharedFileMetadata.expectedLinkMetadata))) && ((this.linkMetadata == sharedFileMetadata.linkMetadata || (this.linkMetadata != null && this.linkMetadata.equals(sharedFileMetadata.linkMetadata))) && ((this.ownerDisplayNames == sharedFileMetadata.ownerDisplayNames || (this.ownerDisplayNames != null && this.ownerDisplayNames.equals(sharedFileMetadata.ownerDisplayNames))) && ((this.ownerTeam == sharedFileMetadata.ownerTeam || (this.ownerTeam != null && this.ownerTeam.equals(sharedFileMetadata.ownerTeam))) && ((this.parentSharedFolderId == sharedFileMetadata.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(sharedFileMetadata.parentSharedFolderId))) && ((this.pathDisplay == sharedFileMetadata.pathDisplay || (this.pathDisplay != null && this.pathDisplay.equals(sharedFileMetadata.pathDisplay))) && ((this.pathLower == sharedFileMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(sharedFileMetadata.pathLower))) && (this.permissions == sharedFileMetadata.permissions || (this.permissions != null && this.permissions.equals(sharedFileMetadata.permissions))))))))))))))) {
                if (this.timeInvited == sharedFileMetadata.timeInvited) {
                    return true;
                }
                if (this.timeInvited != null && this.timeInvited.equals(sharedFileMetadata.timeInvited)) {
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

    class Serializer extends StructSerializer<SharedFileMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFileMetadata sharedFileMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(sharedFileMetadata.id, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(sharedFileMetadata.name, gVar);
            gVar.a("policy");
            FolderPolicy.Serializer.INSTANCE.serialize(sharedFileMetadata.policy, gVar);
            gVar.a("preview_url");
            StoneSerializers.string().serialize(sharedFileMetadata.previewUrl, gVar);
            if (sharedFileMetadata.accessType != null) {
                gVar.a("access_type");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(sharedFileMetadata.accessType, gVar);
            }
            if (sharedFileMetadata.expectedLinkMetadata != null) {
                gVar.a("expected_link_metadata");
                StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.Serializer.INSTANCE).serialize(sharedFileMetadata.expectedLinkMetadata, gVar);
            }
            if (sharedFileMetadata.linkMetadata != null) {
                gVar.a("link_metadata");
                StoneSerializers.nullableStruct(SharedContentLinkMetadata.Serializer.INSTANCE).serialize(sharedFileMetadata.linkMetadata, gVar);
            }
            if (sharedFileMetadata.ownerDisplayNames != null) {
                gVar.a("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(sharedFileMetadata.ownerDisplayNames, gVar);
            }
            if (sharedFileMetadata.ownerTeam != null) {
                gVar.a("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(sharedFileMetadata.ownerTeam, gVar);
            }
            if (sharedFileMetadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFileMetadata.parentSharedFolderId, gVar);
            }
            if (sharedFileMetadata.pathDisplay != null) {
                gVar.a("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFileMetadata.pathDisplay, gVar);
            }
            if (sharedFileMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFileMetadata.pathLower, gVar);
            }
            if (sharedFileMetadata.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(FilePermission.Serializer.INSTANCE)).serialize(sharedFileMetadata.permissions, gVar);
            }
            if (sharedFileMetadata.timeInvited != null) {
                gVar.a("time_invited");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(sharedFileMetadata.timeInvited, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFileMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize = null;
                String strDeserialize2 = null;
                FolderPolicy folderPolicyDeserialize = null;
                String strDeserialize3 = null;
                AccessLevel accessLevel = null;
                ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = null;
                SharedContentLinkMetadata sharedContentLinkMetadata = null;
                List list = null;
                Team team = null;
                String str = null;
                String str2 = null;
                String str3 = null;
                List list2 = null;
                Date date = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("policy".equals(strD)) {
                        folderPolicyDeserialize = FolderPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("preview_url".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                    } else if ("access_type".equals(strD)) {
                        accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("expected_link_metadata".equals(strD)) {
                        expectedSharedContentLinkMetadata = (ExpectedSharedContentLinkMetadata) StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("link_metadata".equals(strD)) {
                        sharedContentLinkMetadata = (SharedContentLinkMetadata) StoneSerializers.nullableStruct(SharedContentLinkMetadata.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("owner_display_names".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(kVar);
                    } else if ("owner_team".equals(strD)) {
                        team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("path_display".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("path_lower".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("permissions".equals(strD)) {
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(FilePermission.Serializer.INSTANCE)).deserialize(kVar);
                    } else if ("time_invited".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (folderPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"policy\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"preview_url\" missing.");
                }
                SharedFileMetadata sharedFileMetadata = new SharedFileMetadata(strDeserialize, strDeserialize2, folderPolicyDeserialize, strDeserialize3, accessLevel, expectedSharedContentLinkMetadata, sharedContentLinkMetadata, list, team, str, str2, str3, list2, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFileMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
