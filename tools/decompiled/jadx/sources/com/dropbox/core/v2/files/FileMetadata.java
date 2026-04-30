package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.files.FileSharingInfo;
import com.dropbox.core.v2.files.MediaInfo;
import com.dropbox.core.v2.files.Metadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class FileMetadata extends Metadata {
    protected final Date clientModified;
    protected final String contentHash;
    protected final Boolean hasExplicitSharedMembers;
    protected final String id;
    protected final MediaInfo mediaInfo;
    protected final List<PropertyGroup> propertyGroups;
    protected final String rev;
    protected final Date serverModified;
    protected final FileSharingInfo sharingInfo;
    protected final long size;

    public FileMetadata(String str, String str2, Date date, Date date2, String str3, long j, String str4, String str5, String str6, MediaInfo mediaInfo, FileSharingInfo fileSharingInfo, List<PropertyGroup> list, Boolean bool, String str7) {
        super(str, str4, str5, str6);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        this.id = str2;
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
        this.mediaInfo = mediaInfo;
        this.sharingInfo = fileSharingInfo;
        if (list != null) {
            Iterator<PropertyGroup> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                }
            }
        }
        this.propertyGroups = list;
        this.hasExplicitSharedMembers = bool;
        if (str7 != null) {
            if (str7.length() < 64) {
                throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
            }
            if (str7.length() > 64) {
                throw new IllegalArgumentException("String 'contentHash' is longer than 64");
            }
        }
        this.contentHash = str7;
    }

    public FileMetadata(String str, String str2, Date date, Date date2, String str3, long j) {
        this(str, str2, date, date2, str3, j, null, null, null, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String getName() {
        return this.name;
    }

    public String getId() {
        return this.id;
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

    @Override // com.dropbox.core.v2.files.Metadata
    public String getPathLower() {
        return this.pathLower;
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String getPathDisplay() {
        return this.pathDisplay;
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public MediaInfo getMediaInfo() {
        return this.mediaInfo;
    }

    public FileSharingInfo getSharingInfo() {
        return this.sharingInfo;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public Boolean getHasExplicitSharedMembers() {
        return this.hasExplicitSharedMembers;
    }

    public String getContentHash() {
        return this.contentHash;
    }

    public static Builder newBuilder(String str, String str2, Date date, Date date2, String str3, long j) {
        return new Builder(str, str2, date, date2, str3, j);
    }

    public class Builder extends Metadata.Builder {
        protected final Date clientModified;
        protected String contentHash;
        protected Boolean hasExplicitSharedMembers;
        protected final String id;
        protected MediaInfo mediaInfo;
        protected List<PropertyGroup> propertyGroups;
        protected final String rev;
        protected final Date serverModified;
        protected FileSharingInfo sharingInfo;
        protected final long size;

        protected Builder(String str, String str2, Date date, Date date2, String str3, long j) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.id = str2;
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
            this.mediaInfo = null;
            this.sharingInfo = null;
            this.propertyGroups = null;
            this.hasExplicitSharedMembers = null;
            this.contentHash = null;
        }

        public Builder withMediaInfo(MediaInfo mediaInfo) {
            this.mediaInfo = mediaInfo;
            return this;
        }

        public Builder withSharingInfo(FileSharingInfo fileSharingInfo) {
            this.sharingInfo = fileSharingInfo;
            return this;
        }

        public Builder withPropertyGroups(List<PropertyGroup> list) {
            if (list != null) {
                Iterator<PropertyGroup> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.propertyGroups = list;
            return this;
        }

        public Builder withHasExplicitSharedMembers(Boolean bool) {
            this.hasExplicitSharedMembers = bool;
            return this;
        }

        public Builder withContentHash(String str) {
            if (str != null) {
                if (str.length() < 64) {
                    throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                }
                if (str.length() > 64) {
                    throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                }
            }
            this.contentHash = str;
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathLower(String str) {
            super.withPathLower(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withPathDisplay(String str) {
            super.withPathDisplay(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public Builder withParentSharedFolderId(String str) {
            super.withParentSharedFolderId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.files.Metadata.Builder
        public FileMetadata build() {
            return new FileMetadata(this.name, this.id, this.clientModified, this.serverModified, this.rev, this.size, this.pathLower, this.pathDisplay, this.parentSharedFolderId, this.mediaInfo, this.sharingInfo, this.propertyGroups, this.hasExplicitSharedMembers, this.contentHash);
        }
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.clientModified, this.serverModified, this.rev, Long.valueOf(this.size), this.mediaInfo, this.sharingInfo, this.propertyGroups, this.hasExplicitSharedMembers, this.contentHash}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileMetadata fileMetadata = (FileMetadata) obj;
            if ((this.name == fileMetadata.name || this.name.equals(fileMetadata.name)) && ((this.id == fileMetadata.id || this.id.equals(fileMetadata.id)) && ((this.clientModified == fileMetadata.clientModified || this.clientModified.equals(fileMetadata.clientModified)) && ((this.serverModified == fileMetadata.serverModified || this.serverModified.equals(fileMetadata.serverModified)) && ((this.rev == fileMetadata.rev || this.rev.equals(fileMetadata.rev)) && this.size == fileMetadata.size && ((this.pathLower == fileMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(fileMetadata.pathLower))) && ((this.pathDisplay == fileMetadata.pathDisplay || (this.pathDisplay != null && this.pathDisplay.equals(fileMetadata.pathDisplay))) && ((this.parentSharedFolderId == fileMetadata.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(fileMetadata.parentSharedFolderId))) && ((this.mediaInfo == fileMetadata.mediaInfo || (this.mediaInfo != null && this.mediaInfo.equals(fileMetadata.mediaInfo))) && ((this.sharingInfo == fileMetadata.sharingInfo || (this.sharingInfo != null && this.sharingInfo.equals(fileMetadata.sharingInfo))) && ((this.propertyGroups == fileMetadata.propertyGroups || (this.propertyGroups != null && this.propertyGroups.equals(fileMetadata.propertyGroups))) && (this.hasExplicitSharedMembers == fileMetadata.hasExplicitSharedMembers || (this.hasExplicitSharedMembers != null && this.hasExplicitSharedMembers.equals(fileMetadata.hasExplicitSharedMembers)))))))))))))) {
                if (this.contentHash == fileMetadata.contentHash) {
                    return true;
                }
                if (this.contentHash != null && this.contentHash.equals(fileMetadata.contentHash)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileMetadata fileMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("file", gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(fileMetadata.name, gVar);
            gVar.a("id");
            StoneSerializers.string().serialize(fileMetadata.id, gVar);
            gVar.a("client_modified");
            StoneSerializers.timestamp().serialize(fileMetadata.clientModified, gVar);
            gVar.a("server_modified");
            StoneSerializers.timestamp().serialize(fileMetadata.serverModified, gVar);
            gVar.a("rev");
            StoneSerializers.string().serialize(fileMetadata.rev, gVar);
            gVar.a(AdobeCommunityConstants.AdobeCommunityResourceSizeKey);
            StoneSerializers.uInt64().serialize(Long.valueOf(fileMetadata.size), gVar);
            if (fileMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileMetadata.pathLower, gVar);
            }
            if (fileMetadata.pathDisplay != null) {
                gVar.a("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileMetadata.pathDisplay, gVar);
            }
            if (fileMetadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileMetadata.parentSharedFolderId, gVar);
            }
            if (fileMetadata.mediaInfo != null) {
                gVar.a("media_info");
                StoneSerializers.nullable(MediaInfo.Serializer.INSTANCE).serialize(fileMetadata.mediaInfo, gVar);
            }
            if (fileMetadata.sharingInfo != null) {
                gVar.a("sharing_info");
                StoneSerializers.nullableStruct(FileSharingInfo.Serializer.INSTANCE).serialize(fileMetadata.sharingInfo, gVar);
            }
            if (fileMetadata.propertyGroups != null) {
                gVar.a("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(fileMetadata.propertyGroups, gVar);
            }
            if (fileMetadata.hasExplicitSharedMembers != null) {
                gVar.a("has_explicit_shared_members");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(fileMetadata.hasExplicitSharedMembers, gVar);
            }
            if (fileMetadata.contentHash != null) {
                gVar.a("content_hash");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileMetadata.contentHash, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileMetadata deserialize(k kVar, boolean z) throws IOException {
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
                Date dateDeserialize = null;
                Date dateDeserialize2 = null;
                String strDeserialize3 = null;
                Long l = null;
                String str = null;
                String str2 = null;
                String str3 = null;
                MediaInfo mediaInfo = null;
                FileSharingInfo fileSharingInfo = null;
                List list = null;
                Boolean bool = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("id".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
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
                    } else if ("path_lower".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("path_display".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("media_info".equals(strD)) {
                        mediaInfo = (MediaInfo) StoneSerializers.nullable(MediaInfo.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("sharing_info".equals(strD)) {
                        fileSharingInfo = (FileSharingInfo) StoneSerializers.nullableStruct(FileSharingInfo.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("property_groups".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("has_explicit_shared_members".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("content_hash".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
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
                FileMetadata fileMetadata = new FileMetadata(strDeserialize, strDeserialize2, dateDeserialize, dateDeserialize2, strDeserialize3, l.longValue(), str, str2, str3, mediaInfo, fileSharingInfo, list, bool, str4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
