package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.files.FolderSharingInfo;
import com.dropbox.core.v2.files.Metadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class FolderMetadata extends Metadata {
    protected final String id;
    protected final List<PropertyGroup> propertyGroups;
    protected final String sharedFolderId;
    protected final FolderSharingInfo sharingInfo;

    public FolderMetadata(String str, String str2, String str3, String str4, String str5, String str6, FolderSharingInfo folderSharingInfo, List<PropertyGroup> list) {
        super(str, str3, str4, str5);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        this.id = str2;
        if (str6 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str6)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str6;
        this.sharingInfo = folderSharingInfo;
        if (list != null) {
            Iterator<PropertyGroup> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                }
            }
        }
        this.propertyGroups = list;
    }

    public FolderMetadata(String str, String str2) {
        this(str, str2, null, null, null, null, null, null);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String getName() {
        return this.name;
    }

    public String getId() {
        return this.id;
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

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public FolderSharingInfo getSharingInfo() {
        return this.sharingInfo;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    public class Builder extends Metadata.Builder {
        protected final String id;
        protected List<PropertyGroup> propertyGroups;
        protected String sharedFolderId;
        protected FolderSharingInfo sharingInfo;

        protected Builder(String str, String str2) {
            super(str);
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.id = str2;
            this.sharedFolderId = null;
            this.sharingInfo = null;
            this.propertyGroups = null;
        }

        public Builder withSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            return this;
        }

        public Builder withSharingInfo(FolderSharingInfo folderSharingInfo) {
            this.sharingInfo = folderSharingInfo;
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
        public FolderMetadata build() {
            return new FolderMetadata(this.name, this.id, this.pathLower, this.pathDisplay, this.parentSharedFolderId, this.sharedFolderId, this.sharingInfo, this.propertyGroups);
        }
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.sharedFolderId, this.sharingInfo, this.propertyGroups}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderMetadata folderMetadata = (FolderMetadata) obj;
            if ((this.name == folderMetadata.name || this.name.equals(folderMetadata.name)) && ((this.id == folderMetadata.id || this.id.equals(folderMetadata.id)) && ((this.pathLower == folderMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(folderMetadata.pathLower))) && ((this.pathDisplay == folderMetadata.pathDisplay || (this.pathDisplay != null && this.pathDisplay.equals(folderMetadata.pathDisplay))) && ((this.parentSharedFolderId == folderMetadata.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(folderMetadata.parentSharedFolderId))) && ((this.sharedFolderId == folderMetadata.sharedFolderId || (this.sharedFolderId != null && this.sharedFolderId.equals(folderMetadata.sharedFolderId))) && (this.sharingInfo == folderMetadata.sharingInfo || (this.sharingInfo != null && this.sharingInfo.equals(folderMetadata.sharingInfo))))))))) {
                if (this.propertyGroups == folderMetadata.propertyGroups) {
                    return true;
                }
                if (this.propertyGroups != null && this.propertyGroups.equals(folderMetadata.propertyGroups)) {
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

    class Serializer extends StructSerializer<FolderMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderMetadata folderMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("folder", gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(folderMetadata.name, gVar);
            gVar.a("id");
            StoneSerializers.string().serialize(folderMetadata.id, gVar);
            if (folderMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderMetadata.pathLower, gVar);
            }
            if (folderMetadata.pathDisplay != null) {
                gVar.a("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderMetadata.pathDisplay, gVar);
            }
            if (folderMetadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderMetadata.parentSharedFolderId, gVar);
            }
            if (folderMetadata.sharedFolderId != null) {
                gVar.a("shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderMetadata.sharedFolderId, gVar);
            }
            if (folderMetadata.sharingInfo != null) {
                gVar.a("sharing_info");
                StoneSerializers.nullableStruct(FolderSharingInfo.Serializer.INSTANCE).serialize(folderMetadata.sharingInfo, gVar);
            }
            if (folderMetadata.propertyGroups != null) {
                gVar.a("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(folderMetadata.propertyGroups, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                FolderSharingInfo folderSharingInfo = null;
                String str = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("path_lower".equals(strD)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("path_display".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("shared_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("sharing_info".equals(strD)) {
                        folderSharingInfo = (FolderSharingInfo) StoneSerializers.nullableStruct(FolderSharingInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("property_groups".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                FolderMetadata folderMetadata = new FolderMetadata(strDeserialize2, strDeserialize, str4, str3, str2, str, folderSharingInfo, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
