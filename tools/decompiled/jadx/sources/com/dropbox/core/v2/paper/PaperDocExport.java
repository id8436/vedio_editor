package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.ExportFormat;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class PaperDocExport extends RefPaperDoc {
    protected final ExportFormat exportFormat;

    public PaperDocExport(String str, ExportFormat exportFormat) {
        super(str);
        if (exportFormat == null) {
            throw new IllegalArgumentException("Required value for 'exportFormat' is null");
        }
        this.exportFormat = exportFormat;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public ExportFormat getExportFormat() {
        return this.exportFormat;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.exportFormat}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocExport paperDocExport = (PaperDocExport) obj;
            return (this.docId == paperDocExport.docId || this.docId.equals(paperDocExport.docId)) && (this.exportFormat == paperDocExport.exportFormat || this.exportFormat.equals(paperDocExport.exportFormat));
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

    class Serializer extends StructSerializer<PaperDocExport> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocExport paperDocExport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(paperDocExport.docId, gVar);
            gVar.a("export_format");
            ExportFormat.Serializer.INSTANCE.serialize(paperDocExport.exportFormat, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocExport deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ExportFormat exportFormatDeserialize;
            String strDeserialize;
            ExportFormat exportFormat = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        ExportFormat exportFormat2 = exportFormat;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        exportFormatDeserialize = exportFormat2;
                    } else if ("export_format".equals(strD)) {
                        exportFormatDeserialize = ExportFormat.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        exportFormatDeserialize = exportFormat;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    exportFormat = exportFormatDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (exportFormat == null) {
                    throw new j(kVar, "Required field \"export_format\" missing.");
                }
                PaperDocExport paperDocExport = new PaperDocExport(str, exportFormat);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocExport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
