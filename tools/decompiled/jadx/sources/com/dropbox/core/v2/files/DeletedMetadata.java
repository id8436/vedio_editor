package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.Metadata;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DeletedMetadata extends Metadata {
    public DeletedMetadata(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    public DeletedMetadata(String str) {
        this(str, null, null, null);
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public String getName() {
        return this.name;
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

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder extends Metadata.Builder {
        protected Builder(String str) {
            super(str);
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
        public DeletedMetadata build() {
            return new DeletedMetadata(this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId);
        }
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.files.Metadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DeletedMetadata deletedMetadata = (DeletedMetadata) obj;
            if ((this.name == deletedMetadata.name || this.name.equals(deletedMetadata.name)) && ((this.pathLower == deletedMetadata.pathLower || (this.pathLower != null && this.pathLower.equals(deletedMetadata.pathLower))) && (this.pathDisplay == deletedMetadata.pathDisplay || (this.pathDisplay != null && this.pathDisplay.equals(deletedMetadata.pathDisplay))))) {
                if (this.parentSharedFolderId == deletedMetadata.parentSharedFolderId) {
                    return true;
                }
                if (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(deletedMetadata.parentSharedFolderId)) {
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

    class Serializer extends StructSerializer<DeletedMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeletedMetadata deletedMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("deleted", gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(deletedMetadata.name, gVar);
            if (deletedMetadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deletedMetadata.pathLower, gVar);
            }
            if (deletedMetadata.pathDisplay != null) {
                gVar.a("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deletedMetadata.pathDisplay, gVar);
            }
            if (deletedMetadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(deletedMetadata.parentSharedFolderId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeletedMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3;
            String strDeserialize;
            String str4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("deleted".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str5 = null;
                String str6 = null;
                String str7 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        String str8 = str4;
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str8;
                    } else if ("path_lower".equals(strD)) {
                        strDeserialize = str7;
                        String str9 = str5;
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str4;
                        str2 = str9;
                    } else if ("path_display".equals(strD)) {
                        str3 = str6;
                        strDeserialize = str7;
                        String str10 = str4;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str10;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = str7;
                    } else {
                        skipValue(kVar);
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = str7;
                    }
                    str7 = strDeserialize;
                    str6 = str3;
                    str5 = str2;
                    str4 = str;
                }
                if (str7 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                DeletedMetadata deletedMetadata = new DeletedMetadata(str7, str6, str5, str4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deletedMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
