package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.Metadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteBatchResultData {
    protected final Metadata metadata;

    public DeleteBatchResultData(Metadata metadata) {
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DeleteBatchResultData deleteBatchResultData = (DeleteBatchResultData) obj;
        return this.metadata == deleteBatchResultData.metadata || this.metadata.equals(deleteBatchResultData.metadata);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DeleteBatchResultData> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DeleteBatchResultData deleteBatchResultData, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("metadata");
            Metadata.Serializer.INSTANCE.serialize(deleteBatchResultData.metadata, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DeleteBatchResultData deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Metadata metadataDeserialize = null;
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
                        metadataDeserialize = Metadata.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (metadataDeserialize == null) {
                    throw new j(kVar, "Required field \"metadata\" missing.");
                }
                DeleteBatchResultData deleteBatchResultData = new DeleteBatchResultData(metadataDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return deleteBatchResultData;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
