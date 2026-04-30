package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionShareDetails {
    protected final String albumName;

    public CollectionShareDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'albumName' is null");
        }
        this.albumName = str;
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.albumName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CollectionShareDetails collectionShareDetails = (CollectionShareDetails) obj;
        return this.albumName == collectionShareDetails.albumName || this.albumName.equals(collectionShareDetails.albumName);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CollectionShareDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CollectionShareDetails collectionShareDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("album_name");
            StoneSerializers.string().serialize(collectionShareDetails.albumName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CollectionShareDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("album_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"album_name\" missing.");
                }
                CollectionShareDetails collectionShareDetails = new CollectionShareDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return collectionShareDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
