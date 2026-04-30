package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.ImportFormat;
import com.dropbox.core.v2.paper.PaperDocUpdatePolicy;
import com.google.gdata.data.docs.RevisionEntry;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class PaperDocUpdateArgs extends RefPaperDoc {
    protected final PaperDocUpdatePolicy docUpdatePolicy;
    protected final ImportFormat importFormat;
    protected final long revision;

    public PaperDocUpdateArgs(String str, PaperDocUpdatePolicy paperDocUpdatePolicy, long j, ImportFormat importFormat) {
        super(str);
        if (paperDocUpdatePolicy == null) {
            throw new IllegalArgumentException("Required value for 'docUpdatePolicy' is null");
        }
        this.docUpdatePolicy = paperDocUpdatePolicy;
        this.revision = j;
        if (importFormat == null) {
            throw new IllegalArgumentException("Required value for 'importFormat' is null");
        }
        this.importFormat = importFormat;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public PaperDocUpdatePolicy getDocUpdatePolicy() {
        return this.docUpdatePolicy;
    }

    public long getRevision() {
        return this.revision;
    }

    public ImportFormat getImportFormat() {
        return this.importFormat;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docUpdatePolicy, Long.valueOf(this.revision), this.importFormat}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocUpdateArgs paperDocUpdateArgs = (PaperDocUpdateArgs) obj;
            return (this.docId == paperDocUpdateArgs.docId || this.docId.equals(paperDocUpdateArgs.docId)) && (this.docUpdatePolicy == paperDocUpdateArgs.docUpdatePolicy || this.docUpdatePolicy.equals(paperDocUpdateArgs.docUpdatePolicy)) && this.revision == paperDocUpdateArgs.revision && (this.importFormat == paperDocUpdateArgs.importFormat || this.importFormat.equals(paperDocUpdateArgs.importFormat));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocUpdateArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocUpdateArgs paperDocUpdateArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(paperDocUpdateArgs.docId, gVar);
            gVar.a("doc_update_policy");
            PaperDocUpdatePolicy.Serializer.INSTANCE.serialize(paperDocUpdateArgs.docUpdatePolicy, gVar);
            gVar.a(RevisionEntry.LABEL);
            StoneSerializers.int64().serialize(Long.valueOf(paperDocUpdateArgs.revision), gVar);
            gVar.a("import_format");
            ImportFormat.Serializer.INSTANCE.serialize(paperDocUpdateArgs.importFormat, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocUpdateArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            ImportFormat importFormatDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                PaperDocUpdatePolicy paperDocUpdatePolicyDeserialize = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("doc_update_policy".equals(strD)) {
                        paperDocUpdatePolicyDeserialize = PaperDocUpdatePolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if (RevisionEntry.LABEL.equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                    } else if ("import_format".equals(strD)) {
                        importFormatDeserialize = ImportFormat.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (paperDocUpdatePolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"doc_update_policy\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"revision\" missing.");
                }
                if (importFormatDeserialize == null) {
                    throw new j(kVar, "Required field \"import_format\" missing.");
                }
                PaperDocUpdateArgs paperDocUpdateArgs = new PaperDocUpdateArgs(strDeserialize, paperDocUpdatePolicyDeserialize, l.longValue(), importFormatDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocUpdateArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
