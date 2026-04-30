package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.LinkPermissions;
import com.dropbox.core.v2.sharing.SharedLinkMetadata;
import com.dropbox.core.v2.sharing.TeamMemberInfo;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class FolderLinkMetadata extends SharedLinkMetadata {
    public FolderLinkMetadata(String str, String str2, LinkPermissions linkPermissions, String str3, Date date, String str4, TeamMemberInfo teamMemberInfo, Team team) {
        super(str, str2, linkPermissions, str3, date, str4, teamMemberInfo, team);
    }

    public FolderLinkMetadata(String str, String str2, LinkPermissions linkPermissions) {
        this(str, str2, linkPermissions, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String getUrl() {
        return this.url;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public LinkPermissions getLinkPermissions() {
        return this.linkPermissions;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String getId() {
        return this.id;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String getPathLower() {
        return this.pathLower;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public TeamMemberInfo getTeamMemberInfo() {
        return this.teamMemberInfo;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public Team getContentOwnerTeamInfo() {
        return this.contentOwnerTeamInfo;
    }

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions) {
        return new Builder(str, str2, linkPermissions);
    }

    public class Builder extends SharedLinkMetadata.Builder {
        protected Builder(String str, String str2, LinkPermissions linkPermissions) {
            super(str, str2, linkPermissions);
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withId(String str) {
            super.withId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withExpires(Date date) {
            super.withExpires(date);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withTeamMemberInfo(TeamMemberInfo teamMemberInfo) {
            super.withTeamMemberInfo(teamMemberInfo);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public Builder withContentOwnerTeamInfo(Team team) {
            super.withContentOwnerTeamInfo(team);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata.Builder
        public FolderLinkMetadata build() {
            return new FolderLinkMetadata(this.url, this.name, this.linkPermissions, this.id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
        }
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderLinkMetadata folderLinkMetadata = (FolderLinkMetadata) obj;
            if ((this.url == folderLinkMetadata.url || this.url.equals(folderLinkMetadata.url)) && ((this.name == folderLinkMetadata.name || this.name.equals(folderLinkMetadata.name)) && ((this.linkPermissions == folderLinkMetadata.linkPermissions || this.linkPermissions.equals(folderLinkMetadata.linkPermissions)) && ((this.id == folderLinkMetadata.id || (this.id != null && this.id.equals(folderLinkMetadata.id))) && ((this.expires == folderLinkMetadata.expires || (this.expires != null && this.expires.equals(folderLinkMetadata.expires))) && ((this.pathLower == folderLinkMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(folderLinkMetadata.pathLower))) && (this.teamMemberInfo == folderLinkMetadata.teamMemberInfo || (this.teamMemberInfo != null && this.teamMemberInfo.equals(folderLinkMetadata.teamMemberInfo))))))))) {
                if (this.contentOwnerTeamInfo == folderLinkMetadata.contentOwnerTeamInfo) {
                    return true;
                }
                if (this.contentOwnerTeamInfo != null && this.contentOwnerTeamInfo.equals(folderLinkMetadata.contentOwnerTeamInfo)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FolderLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderLinkMetadata folderLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("folder", gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(folderLinkMetadata.url, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(folderLinkMetadata.name, gVar);
            gVar.a("link_permissions");
            LinkPermissions.Serializer.INSTANCE.serialize(folderLinkMetadata.linkPermissions, gVar);
            if (folderLinkMetadata.id != null) {
                gVar.a("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderLinkMetadata.id, gVar);
            }
            if (folderLinkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(folderLinkMetadata.expires, gVar);
            }
            if (folderLinkMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderLinkMetadata.pathLower, gVar);
            }
            if (folderLinkMetadata.teamMemberInfo != null) {
                gVar.a("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.Serializer.INSTANCE).serialize(folderLinkMetadata.teamMemberInfo, gVar);
            }
            if (folderLinkMetadata.contentOwnerTeamInfo != null) {
                gVar.a("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(folderLinkMetadata.contentOwnerTeamInfo, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Team team = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("folder".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                TeamMemberInfo teamMemberInfo = null;
                String str = null;
                Date date = null;
                String str2 = null;
                LinkPermissions linkPermissionsDeserialize = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("link_permissions".equals(strD)) {
                        linkPermissionsDeserialize = LinkPermissions.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                    } else if ("path_lower".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("team_member_info".equals(strD)) {
                        teamMemberInfo = (TeamMemberInfo) StoneSerializers.nullableStruct(TeamMemberInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("content_owner_team_info".equals(strD)) {
                        team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (linkPermissionsDeserialize == null) {
                    throw new j(kVar, "Required field \"link_permissions\" missing.");
                }
                FolderLinkMetadata folderLinkMetadata = new FolderLinkMetadata(strDeserialize2, strDeserialize, linkPermissionsDeserialize, str2, date, str, teamMemberInfo, team);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
