package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderMetadataBase {
    protected final AccessLevel accessType;
    protected final boolean isInsideTeamFolder;
    protected final boolean isTeamFolder;
    protected final List<String> ownerDisplayNames;
    protected final Team ownerTeam;
    protected final String parentSharedFolderId;
    protected final String pathLower;

    public SharedFolderMetadataBase(AccessLevel accessLevel, boolean z, boolean z2, List<String> list, Team team, String str, String str2) {
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = accessLevel;
        this.isInsideTeamFolder = z;
        this.isTeamFolder = z2;
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
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str;
        this.pathLower = str2;
    }

    public SharedFolderMetadataBase(AccessLevel accessLevel, boolean z, boolean z2) {
        this(accessLevel, z, z2, null, null, null, null);
    }

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public boolean getIsInsideTeamFolder() {
        return this.isInsideTeamFolder;
    }

    public boolean getIsTeamFolder() {
        return this.isTeamFolder;
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

    public String getPathLower() {
        return this.pathLower;
    }

    public static Builder newBuilder(AccessLevel accessLevel, boolean z, boolean z2) {
        return new Builder(accessLevel, z, z2);
    }

    public class Builder {
        protected final AccessLevel accessType;
        protected final boolean isInsideTeamFolder;
        protected final boolean isTeamFolder;
        protected List<String> ownerDisplayNames;
        protected Team ownerTeam;
        protected String parentSharedFolderId;
        protected String pathLower;

        protected Builder(AccessLevel accessLevel, boolean z, boolean z2) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'accessType' is null");
            }
            this.accessType = accessLevel;
            this.isInsideTeamFolder = z;
            this.isTeamFolder = z2;
            this.ownerDisplayNames = null;
            this.ownerTeam = null;
            this.parentSharedFolderId = null;
            this.pathLower = null;
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

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public SharedFolderMetadataBase build() {
            return new SharedFolderMetadataBase(this.accessType, this.isInsideTeamFolder, this.isTeamFolder, this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, Boolean.valueOf(this.isInsideTeamFolder), Boolean.valueOf(this.isTeamFolder), this.ownerDisplayNames, this.ownerTeam, this.parentSharedFolderId, this.pathLower});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderMetadataBase sharedFolderMetadataBase = (SharedFolderMetadataBase) obj;
            if ((this.accessType == sharedFolderMetadataBase.accessType || this.accessType.equals(sharedFolderMetadataBase.accessType)) && this.isInsideTeamFolder == sharedFolderMetadataBase.isInsideTeamFolder && this.isTeamFolder == sharedFolderMetadataBase.isTeamFolder && ((this.ownerDisplayNames == sharedFolderMetadataBase.ownerDisplayNames || (this.ownerDisplayNames != null && this.ownerDisplayNames.equals(sharedFolderMetadataBase.ownerDisplayNames))) && ((this.ownerTeam == sharedFolderMetadataBase.ownerTeam || (this.ownerTeam != null && this.ownerTeam.equals(sharedFolderMetadataBase.ownerTeam))) && (this.parentSharedFolderId == sharedFolderMetadataBase.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(sharedFolderMetadataBase.parentSharedFolderId)))))) {
                if (this.pathLower == sharedFolderMetadataBase.pathLower) {
                    return true;
                }
                if (this.pathLower != null && this.pathLower.equals(sharedFolderMetadataBase.pathLower)) {
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

    class Serializer extends StructSerializer<SharedFolderMetadataBase> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderMetadataBase sharedFolderMetadataBase, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(sharedFolderMetadataBase.accessType, gVar);
            gVar.a("is_inside_team_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedFolderMetadataBase.isInsideTeamFolder), gVar);
            gVar.a("is_team_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedFolderMetadataBase.isTeamFolder), gVar);
            if (sharedFolderMetadataBase.ownerDisplayNames != null) {
                gVar.a("owner_display_names");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(sharedFolderMetadataBase.ownerDisplayNames, gVar);
            }
            if (sharedFolderMetadataBase.ownerTeam != null) {
                gVar.a("owner_team");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(sharedFolderMetadataBase.ownerTeam, gVar);
            }
            if (sharedFolderMetadataBase.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderMetadataBase.parentSharedFolderId, gVar);
            }
            if (sharedFolderMetadataBase.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderMetadataBase.pathLower, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderMetadataBase deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            AccessLevel accessLevelDeserialize;
            Boolean boolDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                Team team = null;
                List list = null;
                Boolean bool = null;
                Boolean bool2 = null;
                AccessLevel accessLevel = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        boolDeserialize = bool;
                        Boolean bool3 = bool2;
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize2 = bool3;
                    } else if ("is_inside_team_folder".equals(strD)) {
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_team_folder".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool4 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool4;
                    } else if ("owner_display_names".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool5 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool5;
                    } else if ("owner_team".equals(strD)) {
                        team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool6 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool6;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool7 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool7;
                    } else if ("path_lower".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        Boolean bool8 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool8;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        Boolean bool9 = bool2;
                        accessLevelDeserialize = accessLevel;
                        boolDeserialize2 = bool9;
                    }
                    bool = boolDeserialize;
                    Boolean bool10 = boolDeserialize2;
                    accessLevel = accessLevelDeserialize;
                    bool2 = bool10;
                }
                if (accessLevel == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                if (bool2 == null) {
                    throw new j(kVar, "Required field \"is_inside_team_folder\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_team_folder\" missing.");
                }
                SharedFolderMetadataBase sharedFolderMetadataBase = new SharedFolderMetadataBase(accessLevel, bool2.booleanValue(), bool.booleanValue(), list, team, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderMetadataBase;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
