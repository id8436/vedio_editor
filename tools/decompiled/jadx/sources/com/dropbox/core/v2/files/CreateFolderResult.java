package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.FolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class CreateFolderResult extends FileOpsResult {
    protected final FolderMetadata metadata;

    public CreateFolderResult(FolderMetadata folderMetadata) {
        if (folderMetadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = folderMetadata;
    }

    public FolderMetadata getMetadata() {
        return this.metadata;
    }

    @Override // com.dropbox.core.v2.files.FileOpsResult
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.FileOpsResult
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CreateFolderResult createFolderResult = (CreateFolderResult) obj;
        return this.metadata == createFolderResult.metadata || this.metadata.equals(createFolderResult.metadata);
    }

    @Override // com.dropbox.core.v2.files.FileOpsResult
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.FileOpsResult
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CreateFolderResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CreateFolderResult createFolderResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("metadata");
            FolderMetadata.Serializer.INSTANCE.serialize(createFolderResult.metadata, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CreateFolderResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FolderMetadata folderMetadataDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("metadata".equals(strD)) {
                        folderMetadataDeserialize = FolderMetadata.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (folderMetadataDeserialize == null) {
                    throw new j(kVar, "Required field \"metadata\" missing.");
                }
                CreateFolderResult createFolderResult = new CreateFolderResult(folderMetadataDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return createFolderResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
