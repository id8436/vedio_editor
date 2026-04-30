package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PaperDownloadFormat;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperDocDownloadDetails {
    protected final String eventUuid;
    protected final PaperDownloadFormat exportFileFormat;

    public PaperDocDownloadDetails(String str, PaperDownloadFormat paperDownloadFormat) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (paperDownloadFormat == null) {
            throw new IllegalArgumentException("Required value for 'exportFileFormat' is null");
        }
        this.exportFileFormat = paperDownloadFormat;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public PaperDownloadFormat getExportFileFormat() {
        return this.exportFileFormat;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.exportFileFormat});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocDownloadDetails paperDocDownloadDetails = (PaperDocDownloadDetails) obj;
            return (this.eventUuid == paperDocDownloadDetails.eventUuid || this.eventUuid.equals(paperDocDownloadDetails.eventUuid)) && (this.exportFileFormat == paperDocDownloadDetails.exportFileFormat || this.exportFileFormat.equals(paperDocDownloadDetails.exportFileFormat));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocDownloadDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocDownloadDetails paperDocDownloadDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperDocDownloadDetails.eventUuid, gVar);
            gVar.a("export_file_format");
            PaperDownloadFormat.Serializer.INSTANCE.serialize(paperDocDownloadDetails.exportFileFormat, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocDownloadDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperDownloadFormat paperDownloadFormatDeserialize;
            String strDeserialize;
            PaperDownloadFormat paperDownloadFormat = null;
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
                    if ("event_uuid".equals(strD)) {
                        PaperDownloadFormat paperDownloadFormat2 = paperDownloadFormat;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        paperDownloadFormatDeserialize = paperDownloadFormat2;
                    } else if ("export_file_format".equals(strD)) {
                        paperDownloadFormatDeserialize = PaperDownloadFormat.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        paperDownloadFormatDeserialize = paperDownloadFormat;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    paperDownloadFormat = paperDownloadFormatDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                if (paperDownloadFormat == null) {
                    throw new j(kVar, "Required field \"export_file_format\" missing.");
                }
                PaperDocDownloadDetails paperDocDownloadDetails = new PaperDocDownloadDetails(str, paperDownloadFormat);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocDownloadDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
