package com.dropbox.core.v2.paper;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ListPaperDocsSortBy {
    ACCESSED,
    MODIFIED,
    CREATED,
    OTHER;

    class Serializer extends UnionSerializer<ListPaperDocsSortBy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListPaperDocsSortBy listPaperDocsSortBy, g gVar) throws IOException {
            switch (listPaperDocsSortBy) {
                case ACCESSED:
                    gVar.b("accessed");
                    break;
                case MODIFIED:
                    gVar.b(AdobeDCXConstants.AdobeDCXAssetStateModified);
                    break;
                case CREATED:
                    gVar.b("created");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListPaperDocsSortBy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListPaperDocsSortBy listPaperDocsSortBy;
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
            if ("accessed".equals(tag)) {
                listPaperDocsSortBy = ListPaperDocsSortBy.ACCESSED;
            } else if (AdobeDCXConstants.AdobeDCXAssetStateModified.equals(tag)) {
                listPaperDocsSortBy = ListPaperDocsSortBy.MODIFIED;
            } else if ("created".equals(tag)) {
                listPaperDocsSortBy = ListPaperDocsSortBy.CREATED;
            } else {
                listPaperDocsSortBy = ListPaperDocsSortBy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listPaperDocsSortBy;
        }
    }
}
