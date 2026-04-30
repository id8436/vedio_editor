package com.dropbox.core.v2.paper;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
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
public class PaperDocExportResult {
    protected final String mimeType;
    protected final String owner;
    protected final long revision;
    protected final String title;

    public PaperDocExportResult(String str, String str2, long j, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'owner' is null");
        }
        this.owner = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        this.title = str2;
        this.revision = j;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'mimeType' is null");
        }
        this.mimeType = str3;
    }

    public String getOwner() {
        return this.owner;
    }

    public String getTitle() {
        return this.title;
    }

    public long getRevision() {
        return this.revision;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.owner, this.title, Long.valueOf(this.revision), this.mimeType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocExportResult paperDocExportResult = (PaperDocExportResult) obj;
            return (this.owner == paperDocExportResult.owner || this.owner.equals(paperDocExportResult.owner)) && (this.title == paperDocExportResult.title || this.title.equals(paperDocExportResult.title)) && this.revision == paperDocExportResult.revision && (this.mimeType == paperDocExportResult.mimeType || this.mimeType.equals(paperDocExportResult.mimeType));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocExportResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocExportResult paperDocExportResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(DCXProjectKeys.kDCXKey_Project_owner);
            StoneSerializers.string().serialize(paperDocExportResult.owner, gVar);
            gVar.a("title");
            StoneSerializers.string().serialize(paperDocExportResult.title, gVar);
            gVar.a(RevisionEntry.LABEL);
            StoneSerializers.int64().serialize(Long.valueOf(paperDocExportResult.revision), gVar);
            gVar.a("mime_type");
            StoneSerializers.string().serialize(paperDocExportResult.mimeType, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocExportResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (DCXProjectKeys.kDCXKey_Project_owner.equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("title".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if (RevisionEntry.LABEL.equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                    } else if ("mime_type".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"owner\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"title\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"revision\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"mime_type\" missing.");
                }
                PaperDocExportResult paperDocExportResult = new PaperDocExportResult(strDeserialize3, strDeserialize2, l.longValue(), strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocExportResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
