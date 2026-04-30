package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.LinkPermissions;
import com.dropbox.core.v2.sharing.SharedLinkMetadata;
import com.dropbox.core.v2.sharing.TeamMemberInfo;
import com.dropbox.core.v2.users.Team;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class FileLinkMetadata extends SharedLinkMetadata {
    protected final Date clientModified;
    protected final String rev;
    protected final Date serverModified;
    protected final long size;

    public FileLinkMetadata(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j, String str4, Date date3, String str5, TeamMemberInfo teamMemberInfo, Team team) {
        super(str, str2, linkPermissions, str4, date3, str5, teamMemberInfo, team);
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'clientModified' is null");
        }
        this.clientModified = LangUtil.truncateMillis(date);
        if (date2 == null) {
            throw new IllegalArgumentException("Required value for 'serverModified' is null");
        }
        this.serverModified = LangUtil.truncateMillis(date2);
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'rev' is null");
        }
        if (str3.length() < 9) {
            throw new IllegalArgumentException("String 'rev' is shorter than 9");
        }
        if (!Pattern.matches("[0-9a-f]+", str3)) {
            throw new IllegalArgumentException("String 'rev' does not match pattern");
        }
        this.rev = str3;
        this.size = j;
    }

    public FileLinkMetadata(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
        this(str, str2, linkPermissions, date, date2, str3, j, null, null, null, null, null);
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

    public Date getClientModified() {
        return this.clientModified;
    }

    public Date getServerModified() {
        return this.serverModified;
    }

    public String getRev() {
        return this.rev;
    }

    public long getSize() {
        return this.size;
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

    public static Builder newBuilder(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
        return new Builder(str, str2, linkPermissions, date, date2, str3, j);
    }

    public class Builder extends SharedLinkMetadata.Builder {
        protected final Date clientModified;
        protected final String rev;
        protected final Date serverModified;
        protected final long size;

        protected Builder(String str, String str2, LinkPermissions linkPermissions, Date date, Date date2, String str3, long j) {
            super(str, str2, linkPermissions);
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            this.clientModified = LangUtil.truncateMillis(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.serverModified = LangUtil.truncateMillis(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.rev = str3;
            this.size = j;
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
        public FileLinkMetadata build() {
            return new FileLinkMetadata(this.url, this.name, this.linkPermissions, this.clientModified, this.serverModified, this.rev, this.size, this.id, this.expires, this.pathLower, this.teamMemberInfo, this.contentOwnerTeamInfo);
        }
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.clientModified, this.serverModified, this.rev, Long.valueOf(this.size)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.SharedLinkMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileLinkMetadata fileLinkMetadata = (FileLinkMetadata) obj;
            if ((this.url == fileLinkMetadata.url || this.url.equals(fileLinkMetadata.url)) && ((this.name == fileLinkMetadata.name || this.name.equals(fileLinkMetadata.name)) && ((this.linkPermissions == fileLinkMetadata.linkPermissions || this.linkPermissions.equals(fileLinkMetadata.linkPermissions)) && ((this.clientModified == fileLinkMetadata.clientModified || this.clientModified.equals(fileLinkMetadata.clientModified)) && ((this.serverModified == fileLinkMetadata.serverModified || this.serverModified.equals(fileLinkMetadata.serverModified)) && ((this.rev == fileLinkMetadata.rev || this.rev.equals(fileLinkMetadata.rev)) && this.size == fileLinkMetadata.size && ((this.id == fileLinkMetadata.id || (this.id != null && this.id.equals(fileLinkMetadata.id))) && ((this.expires == fileLinkMetadata.expires || (this.expires != null && this.expires.equals(fileLinkMetadata.expires))) && ((this.pathLower == fileLinkMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(fileLinkMetadata.pathLower))) && (this.teamMemberInfo == fileLinkMetadata.teamMemberInfo || (this.teamMemberInfo != null && this.teamMemberInfo.equals(fileLinkMetadata.teamMemberInfo)))))))))))) {
                if (this.contentOwnerTeamInfo == fileLinkMetadata.contentOwnerTeamInfo) {
                    return true;
                }
                if (this.contentOwnerTeamInfo != null && this.contentOwnerTeamInfo.equals(fileLinkMetadata.contentOwnerTeamInfo)) {
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

    class Serializer extends StructSerializer<FileLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileLinkMetadata fileLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("file", gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(fileLinkMetadata.url, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(fileLinkMetadata.name, gVar);
            gVar.a("link_permissions");
            LinkPermissions.Serializer.INSTANCE.serialize(fileLinkMetadata.linkPermissions, gVar);
            gVar.a("client_modified");
            StoneSerializers.timestamp().serialize(fileLinkMetadata.clientModified, gVar);
            gVar.a("server_modified");
            StoneSerializers.timestamp().serialize(fileLinkMetadata.serverModified, gVar);
            gVar.a("rev");
            StoneSerializers.string().serialize(fileLinkMetadata.rev, gVar);
            gVar.a(AdobeCommunityConstants.AdobeCommunityResourceSizeKey);
            StoneSerializers.uInt64().serialize(Long.valueOf(fileLinkMetadata.size), gVar);
            if (fileLinkMetadata.id != null) {
                gVar.a("id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileLinkMetadata.id, gVar);
            }
            if (fileLinkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(fileLinkMetadata.expires, gVar);
            }
            if (fileLinkMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileLinkMetadata.pathLower, gVar);
            }
            if (fileLinkMetadata.teamMemberInfo != null) {
                gVar.a("team_member_info");
                StoneSerializers.nullableStruct(TeamMemberInfo.Serializer.INSTANCE).serialize(fileLinkMetadata.teamMemberInfo, gVar);
            }
            if (fileLinkMetadata.contentOwnerTeamInfo != null) {
                gVar.a("content_owner_team_info");
                StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(fileLinkMetadata.contentOwnerTeamInfo, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            Long lDeserialize;
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("file".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String strDeserialize = null;
                String strDeserialize2 = null;
                LinkPermissions linkPermissionsDeserialize = null;
                Date dateDeserialize = null;
                Date dateDeserialize2 = null;
                String strDeserialize3 = null;
                Long l = null;
                String str = null;
                Date date = null;
                String str2 = null;
                TeamMemberInfo teamMemberInfo = null;
                Team team = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("link_permissions".equals(strD)) {
                        linkPermissionsDeserialize = LinkPermissions.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("client_modified".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("server_modified".equals(strD)) {
                        dateDeserialize2 = StoneSerializers.timestamp().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("rev".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if (AdobeCommunityConstants.AdobeCommunityResourceSizeKey.equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("path_lower".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("team_member_info".equals(strD)) {
                        teamMemberInfo = (TeamMemberInfo) StoneSerializers.nullableStruct(TeamMemberInfo.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("content_owner_team_info".equals(strD)) {
                        team = (Team) StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (linkPermissionsDeserialize == null) {
                    throw new j(kVar, "Required field \"link_permissions\" missing.");
                }
                if (dateDeserialize == null) {
                    throw new j(kVar, "Required field \"client_modified\" missing.");
                }
                if (dateDeserialize2 == null) {
                    throw new j(kVar, "Required field \"server_modified\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"rev\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"size\" missing.");
                }
                FileLinkMetadata fileLinkMetadata = new FileLinkMetadata(strDeserialize, strDeserialize2, linkPermissionsDeserialize, dateDeserialize, dateDeserialize2, strDeserialize3, l.longValue(), str, date, str2, teamMemberInfo, team);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
