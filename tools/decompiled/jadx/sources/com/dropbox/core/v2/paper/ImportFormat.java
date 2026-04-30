package com.dropbox.core.v2.paper;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ImportFormat {
    HTML,
    MARKDOWN,
    PLAIN_TEXT,
    OTHER;

    class Serializer extends UnionSerializer<ImportFormat> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ImportFormat importFormat, g gVar) throws IOException {
            switch (importFormat) {
                case HTML:
                    gVar.b(BehanceSDKPublishConstants.KEY_HTML);
                    break;
                case MARKDOWN:
                    gVar.b("markdown");
                    break;
                case PLAIN_TEXT:
                    gVar.b("plain_text");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ImportFormat deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ImportFormat importFormat;
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
            if (BehanceSDKPublishConstants.KEY_HTML.equals(tag)) {
                importFormat = ImportFormat.HTML;
            } else if ("markdown".equals(tag)) {
                importFormat = ImportFormat.MARKDOWN;
            } else if ("plain_text".equals(tag)) {
                importFormat = ImportFormat.PLAIN_TEXT;
            } else {
                importFormat = ImportFormat.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return importFormat;
        }
    }
}
