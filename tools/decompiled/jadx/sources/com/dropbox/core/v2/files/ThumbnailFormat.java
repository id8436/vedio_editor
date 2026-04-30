package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ThumbnailFormat {
    JPEG,
    PNG;

    class Serializer extends UnionSerializer<ThumbnailFormat> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ThumbnailFormat thumbnailFormat, g gVar) throws IOException {
            switch (thumbnailFormat) {
                case JPEG:
                    gVar.b("jpeg");
                    return;
                case PNG:
                    gVar.b("png");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + thumbnailFormat);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ThumbnailFormat deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ThumbnailFormat thumbnailFormat;
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
            if ("jpeg".equals(tag)) {
                thumbnailFormat = ThumbnailFormat.JPEG;
            } else if ("png".equals(tag)) {
                thumbnailFormat = ThumbnailFormat.PNG;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return thumbnailFormat;
        }
    }
}
