package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.FileMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GetThumbnailBatchResultData {
    protected final FileMetadata metadata;
    protected final String thumbnail;

    public GetThumbnailBatchResultData(FileMetadata fileMetadata, String str) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = fileMetadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'thumbnail' is null");
        }
        this.thumbnail = str;
    }

    public FileMetadata getMetadata() {
        return this.metadata;
    }

    public String getThumbnail() {
        return this.thumbnail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.thumbnail});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetThumbnailBatchResultData getThumbnailBatchResultData = (GetThumbnailBatchResultData) obj;
            return (this.metadata == getThumbnailBatchResultData.metadata || this.metadata.equals(getThumbnailBatchResultData.metadata)) && (this.thumbnail == getThumbnailBatchResultData.thumbnail || this.thumbnail.equals(getThumbnailBatchResultData.thumbnail));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetThumbnailBatchResultData> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetThumbnailBatchResultData getThumbnailBatchResultData, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("metadata");
            FileMetadata.Serializer.INSTANCE.serialize(getThumbnailBatchResultData.metadata, gVar);
            gVar.a("thumbnail");
            StoneSerializers.string().serialize(getThumbnailBatchResultData.thumbnail, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetThumbnailBatchResultData deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            FileMetadata fileMetadataDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                FileMetadata fileMetadata = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("metadata".equals(strD)) {
                        String str2 = str;
                        fileMetadataDeserialize = FileMetadata.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str2;
                    } else if ("thumbnail".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        fileMetadataDeserialize = fileMetadata;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        fileMetadataDeserialize = fileMetadata;
                    }
                    fileMetadata = fileMetadataDeserialize;
                    str = strDeserialize;
                }
                if (fileMetadata == null) {
                    throw new j(kVar, "Required field \"metadata\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"thumbnail\" missing.");
                }
                GetThumbnailBatchResultData getThumbnailBatchResultData = new GetThumbnailBatchResultData(fileMetadata, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getThumbnailBatchResultData;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
