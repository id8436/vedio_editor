package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ThumbnailSize {
    W32H32,
    W64H64,
    W128H128,
    W640H480,
    W1024H768;

    class Serializer extends UnionSerializer<ThumbnailSize> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ThumbnailSize thumbnailSize, g gVar) throws IOException {
            switch (thumbnailSize) {
                case W32H32:
                    gVar.b("w32h32");
                    return;
                case W64H64:
                    gVar.b("w64h64");
                    return;
                case W128H128:
                    gVar.b("w128h128");
                    return;
                case W640H480:
                    gVar.b("w640h480");
                    return;
                case W1024H768:
                    gVar.b("w1024h768");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + thumbnailSize);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ThumbnailSize deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ThumbnailSize thumbnailSize;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("w32h32".equals(tag)) {
                thumbnailSize = ThumbnailSize.W32H32;
            } else if ("w64h64".equals(tag)) {
                thumbnailSize = ThumbnailSize.W64H64;
            } else if ("w128h128".equals(tag)) {
                thumbnailSize = ThumbnailSize.W128H128;
            } else if ("w640h480".equals(tag)) {
                thumbnailSize = ThumbnailSize.W640H480;
            } else if ("w1024h768".equals(tag)) {
                thumbnailSize = ThumbnailSize.W1024H768;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return thumbnailSize;
        }
    }
}
