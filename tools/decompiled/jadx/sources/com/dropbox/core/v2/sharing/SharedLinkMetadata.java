package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.FileLinkMetadata;
import com.dropbox.core.v2.sharing.FolderLinkMetadata;
import com.dropbox.core.v2.sharing.LinkPermissions;
import com.dropbox.core.v2.sharing.TeamMemberInfo;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class SharedLinkMetadata {
    protected final Team contentOwnerTeamInfo;
    protected final Date expires;
    protected final String id;
    protected final LinkPermissions linkPermissions;
    protected final String name;
    protected final String pathLower;
    protected final TeamMemberInfo teamMemberInfo;
    protected final String url;

    public SharedLinkMetadata(String str, String str2, LinkPermissions linkPermissions, String str3, Date date, String str4, TeamMemberInfo teamMemberInfo, Team team) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
        if (str3 != null && str3.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        this.id = str3;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        this.expires = LangUtil.truncateMillis(date);
        this.pathLower = str4;
        if (linkPermissions == null) {
            throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
        }
        this.linkPermissions = linkPermissions;
        this.teamMemberInfo = teamMemberInfo;
        this.contentOwnerTeamInfo = team;
    }

    public SharedLinkMetadata(String str, String str2, LinkPermissions linkPermissions) {
        this(str, str2, linkPermissions, null, null, null, null, null);
    }

    public String getUrl() {
        return this.url;
    }

    public String getName() {
        return this.name;
    }

    public LinkPermissions getLinkPermissions() {
        return this.linkPermissions;
    }

    public String getId() {
        return this.id;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public TeamMemberInfo getTeamMemberInfo() {
        return this.teamMemberInfo;
    }

    public Team getContentOwnerTeamInfo() {
        return this.contentOwnerTeamInfo;
    }

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions) {
        return new Builder(str, str2, linkPermissions);
    }

    public class Builder {
        protected Team contentOwnerTeamInfo;
        protected Date expires;
        protected String id;
        protected final LinkPermissions linkPermissions;
        protected final String name;
        protected String pathLower;
        protected TeamMemberInfo teamMemberInfo;
        protected final String url;

        protected Builder(String str, String str2, LinkPermissions linkPermissions) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str2;
            if (linkPermissions == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            this.linkPermissions = linkPermissions;
            this.id = null;
            this.expires = null;
            this.pathLower = null;
            this.teamMemberInfo = null;
            this.contentOwnerTeamInfo = null;
        }

        public Builder withId(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.id = str;
            return this;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public Builder withTeamMemberInfo(TeamMemberInfo teamMemberInfo) {
            this.teamMemberInfo = teamMemberInfo;
            return this;
        }

        public Builder withContentOwnerTeamInfo(Team team) {
            this.contentOwnerTeamInfo = team;
            return this;
        }

        public SharedLinkMetadata build() {
            return new SharedLinkMetadata(this.url, this.name, this.linkPermissions, this.id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.id, this.name, this.expires, this.pathLower, this.linkPermissions, this.teamMemberInfo, this.contentOwnerTeamInfo});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedLinkMetadata sharedLinkMetadata = (SharedLinkMetadata) obj;
            if ((this.url == sharedLinkMetadata.url || this.url.equals(sharedLinkMetadata.url)) && ((this.name == sharedLinkMetadata.name || this.name.equals(sharedLinkMetadata.name)) && ((this.linkPermissions == sharedLinkMetadata.linkPermissions || this.linkPermissions.equals(sharedLinkMetadata.linkPermissions)) && ((this.id == sharedLinkMetadata.id || (this.id != null && this.id.equals(sharedLinkMetadata.id))) && ((this.expires == sharedLinkMetadata.expires || (this.expires != null && this.expires.equals(sharedLinkMetadata.expires))) && ((this.pathLower == sharedLinkMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(sharedLinkMetadata.pathLower))) && (this.teamMemberInfo == sharedLinkMetadata.teamMemberInfo || (this.teamMemberInfo != null && this.teamMemberInfo.equals(sharedLinkMetadata.teamMemberInfo))))))))) {
                if (this.contentOwnerTeamInfo == sharedLinkMetadata.contentOwnerTeamInfo) {
                    return true;
                }
                if (this.contentOwnerTeamInfo != null && this.contentOwnerTeamInfo.equals(sharedLinkMetadata.contentOwnerTeamInfo)) {
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

    class Serializer extends StructSerializer<SharedLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedLinkMetadata sharedLinkMetadata, g gVar, boolean z) throws IOException {
            if (sharedLinkMetadata instanceof FileLinkMetadata) {
                FileLinkMetadata.Serializer.INSTANCE.serialize((FileLinkMetadata) sharedLinkMetadata, gVar, z);
                return;
            }
            if (sharedLinkMetadata instanceof FolderLinkMetadata) {
                FolderLinkMetadata.Serializer.INSTANCE.serialize((FolderLinkMetadata) sharedLinkMetadata, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            gVar.a("url");
            StoneSerializers.string().serialize(sharedLinkMetadata.url, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(sharedLinkMetadata.name, gVar);
            gVar.a("link_permissions");
            LinkPermissions.Serializer.INSTANCE.serialize(sharedLinkMetadata.linkPermissions, gVar);
            if (sharedLinkMetadata.id != null) {
                gVar.a("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedLinkMetadata.id, gVar);
            }
            if (sharedLinkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(sharedLinkMetadata.expires, gVar);
            }
            if (sharedLinkMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedLinkMetadata.pathLower, gVar);
            }
            if (sharedLinkMetadata.teamMemberInfo != null) {
                gVar.a("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.Serializer.INSTANCE).serialize(sharedLinkMetadata.teamMemberInfo, gVar);
            }
            if (sharedLinkMetadata.contentOwnerTeamInfo != null) {
                gVar.a("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(sharedLinkMetadata.contentOwnerTeamInfo, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharedLinkMetadata sharedLinkMetadataDeserialize;
            Team team = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("".equals(tag)) {
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
                sharedLinkMetadataDeserialize = new SharedLinkMetadata(strDeserialize2, strDeserialize, linkPermissionsDeserialize, str2, date, str, teamMemberInfo, team);
            } else if ("".equals(tag)) {
                sharedLinkMetadataDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("file".equals(tag)) {
                sharedLinkMetadataDeserialize = FileLinkMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("folder".equals(tag)) {
                sharedLinkMetadataDeserialize = FolderLinkMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return sharedLinkMetadataDeserialize;
        }
    }
}
