package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.google.gdata.data.docs.RevisionEntry;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperDocCreateUpdateResult {
    protected final String docId;
    protected final long revision;
    protected final String title;

    public PaperDocCreateUpdateResult(String str, long j, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'docId' is null");
        }
        this.docId = str;
        this.revision = j;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        this.title = str2;
    }

    public String getDocId() {
        return this.docId;
    }

    public long getRevision() {
        return this.revision;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docId, Long.valueOf(this.revision), this.title});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocCreateUpdateResult paperDocCreateUpdateResult = (PaperDocCreateUpdateResult) obj;
            return (this.docId == paperDocCreateUpdateResult.docId || this.docId.equals(paperDocCreateUpdateResult.docId)) && this.revision == paperDocCreateUpdateResult.revision && (this.title == paperDocCreateUpdateResult.title || this.title.equals(paperDocCreateUpdateResult.title));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocCreateUpdateResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocCreateUpdateResult paperDocCreateUpdateResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(paperDocCreateUpdateResult.docId, gVar);
            gVar.a(RevisionEntry.LABEL);
            StoneSerializers.int64().serialize(Long.valueOf(paperDocCreateUpdateResult.revision), gVar);
            gVar.a("title");
            StoneSerializers.string().serialize(paperDocCreateUpdateResult.title, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocCreateUpdateResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            Long lDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        String str3 = str;
                        lDeserialize = l;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if (RevisionEntry.LABEL.equals(strD)) {
                        strDeserialize2 = str2;
                        strDeserialize = str;
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                    } else if ("title".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        lDeserialize = l;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    l = lDeserialize;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"revision\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"title\" missing.");
                }
                PaperDocCreateUpdateResult paperDocCreateUpdateResult = new PaperDocCreateUpdateResult(str2, l.longValue(), str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocCreateUpdateResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
