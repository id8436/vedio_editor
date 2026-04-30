package com.dropbox.core.v2.paper;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ExportFormat {
    HTML,
    MARKDOWN,
    OTHER;

    class Serializer extends UnionSerializer<ExportFormat> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ExportFormat exportFormat, g gVar) throws IOException {
            switch (exportFormat) {
                case HTML:
                    gVar.b(BehanceSDKPublishConstants.KEY_HTML);
                    break;
                case MARKDOWN:
                    gVar.b("markdown");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ExportFormat deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ExportFormat exportFormat;
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
                exportFormat = ExportFormat.HTML;
            } else if ("markdown".equals(tag)) {
                exportFormat = ExportFormat.MARKDOWN;
            } else {
                exportFormat = ExportFormat.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return exportFormat;
        }
    }
}
