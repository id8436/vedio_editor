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
public class PaperDocumentLogInfo {
    protected final String docId;
    protected final String docTitle;

    public PaperDocumentLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'docId' is null");
        }
        this.docId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'docTitle' is null");
        }
        this.docTitle = str2;
    }

    public String getDocId() {
        return this.docId;
    }

    public String getDocTitle() {
        return this.docTitle;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docId, this.docTitle});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocumentLogInfo paperDocumentLogInfo = (PaperDocumentLogInfo) obj;
            return (this.docId == paperDocumentLogInfo.docId || this.docId.equals(paperDocumentLogInfo.docId)) && (this.docTitle == paperDocumentLogInfo.docTitle || this.docTitle.equals(paperDocumentLogInfo.docTitle));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocumentLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocumentLogInfo paperDocumentLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(paperDocumentLogInfo.docId, gVar);
            gVar.a("doc_title");
            StoneSerializers.string().serialize(paperDocumentLogInfo.docTitle, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocumentLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("doc_title".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_title\" missing.");
                }
                PaperDocumentLogInfo paperDocumentLogInfo = new PaperDocumentLogInfo(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocumentLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
