package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.DeletedMetadata;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.FolderMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class Metadata {
    protected final String name;
    protected final String parentSharedFolderId;
    protected final String pathDisplay;
    protected final String pathLower;

    public Metadata(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        this.pathLower = str2;
        this.pathDisplay = str3;
        if (str4 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str4;
    }

    public Metadata(String str) {
        this(str, null, null, null);
    }

    public String getName() {
        return this.name;
    }

    public String getPathLower() {
        return this.pathLower;
    }

    public String getPathDisplay() {
        return this.pathDisplay;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String name;
        protected String parentSharedFolderId;
        protected String pathDisplay;
        protected String pathLower;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str;
            this.pathLower = null;
            this.pathDisplay = null;
            this.parentSharedFolderId = null;
        }

        public Builder withPathLower(String str) {
            this.pathLower = str;
            return this;
        }

        public Builder withPathDisplay(String str) {
            this.pathDisplay = str;
            return this;
        }

        /* JADX WARN: Failed to analyze thrown exceptions
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
         */
        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Metadata build() {
            return new Metadata(this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.pathLower, this.pathDisplay, this.parentSharedFolderId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Metadata metadata = (Metadata) obj;
            if ((this.name == metadata.name || this.name.equals(metadata.name)) && ((this.pathLower == metadata.pathLower || (this.pathLower != null && this.pathLower.equals(metadata.pathLower))) && (this.pathDisplay == metadata.pathDisplay || (this.pathDisplay != null && this.pathDisplay.equals(metadata.pathDisplay))))) {
                if (this.parentSharedFolderId == metadata.parentSharedFolderId) {
                    return true;
                }
                if (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(metadata.parentSharedFolderId)) {
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

    class Serializer extends StructSerializer<Metadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Metadata metadata, g gVar, boolean z) throws IOException {
            if (metadata instanceof FileMetadata) {
                FileMetadata.Serializer.INSTANCE.serialize((FileMetadata) metadata, gVar, z);
                return;
            }
            if (metadata instanceof FolderMetadata) {
                FolderMetadata.Serializer.INSTANCE.serialize((FolderMetadata) metadata, gVar, z);
                return;
            }
            if (metadata instanceof DeletedMetadata) {
                DeletedMetadata.Serializer.INSTANCE.serialize((DeletedMetadata) metadata, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(metadata.name, gVar);
            if (metadata.pathLower != null) {
                gVar.a("path_lower");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(metadata.pathLower, gVar);
            }
            if (metadata.pathDisplay != null) {
                gVar.a("path_display");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(metadata.pathDisplay, gVar);
            }
            if (metadata.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(metadata.parentSharedFolderId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Metadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Metadata metadataDeserialize;
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
                if ("".equals(tag)) {
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
                metadataDeserialize = new Metadata(str7, str6, str5, str4);
            } else if ("".equals(tag)) {
                metadataDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("file".equals(tag)) {
                metadataDeserialize = FileMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("folder".equals(tag)) {
                metadataDeserialize = FolderMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("deleted".equals(tag)) {
                metadataDeserialize = DeletedMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return metadataDeserialize;
        }
    }
}
