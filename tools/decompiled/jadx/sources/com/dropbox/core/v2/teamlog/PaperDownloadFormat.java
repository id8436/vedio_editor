package com.dropbox.core.v2.teamlog;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDownloadFormat {
    DOCX,
    HTML,
    MARKDOWN,
    OTHER;

    class Serializer extends UnionSerializer<PaperDownloadFormat> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDownloadFormat paperDownloadFormat, g gVar) throws IOException {
            switch (paperDownloadFormat) {
                case DOCX:
                    gVar.b("docx");
                    break;
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
        public PaperDownloadFormat deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDownloadFormat paperDownloadFormat;
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
            if ("docx".equals(tag)) {
                paperDownloadFormat = PaperDownloadFormat.DOCX;
            } else if (BehanceSDKPublishConstants.KEY_HTML.equals(tag)) {
                paperDownloadFormat = PaperDownloadFormat.HTML;
            } else if ("markdown".equals(tag)) {
                paperDownloadFormat = PaperDownloadFormat.MARKDOWN;
            } else {
                paperDownloadFormat = PaperDownloadFormat.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDownloadFormat;
        }
    }
}
