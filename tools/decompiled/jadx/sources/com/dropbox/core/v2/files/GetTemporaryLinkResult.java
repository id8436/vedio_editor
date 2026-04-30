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
public class GetTemporaryLinkResult {
    protected final String link;
    protected final FileMetadata metadata;

    public GetTemporaryLinkResult(FileMetadata fileMetadata, String str) {
        if (fileMetadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = fileMetadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'link' is null");
        }
        this.link = str;
    }

    public FileMetadata getMetadata() {
        return this.metadata;
    }

    public String getLink() {
        return this.link;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.link});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetTemporaryLinkResult getTemporaryLinkResult = (GetTemporaryLinkResult) obj;
            return (this.metadata == getTemporaryLinkResult.metadata || this.metadata.equals(getTemporaryLinkResult.metadata)) && (this.link == getTemporaryLinkResult.link || this.link.equals(getTemporaryLinkResult.link));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetTemporaryLinkResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetTemporaryLinkResult getTemporaryLinkResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("metadata");
            FileMetadata.Serializer.INSTANCE.serialize(getTemporaryLinkResult.metadata, gVar);
            gVar.a("link");
            StoneSerializers.string().serialize(getTemporaryLinkResult.link, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetTemporaryLinkResult deserialize(k kVar, boolean z) throws IOException {
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
                    } else if ("link".equals(strD)) {
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
                    throw new j(kVar, "Required field \"link\" missing.");
                }
                GetTemporaryLinkResult getTemporaryLinkResult = new GetTemporaryLinkResult(fileMetadata, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getTemporaryLinkResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
