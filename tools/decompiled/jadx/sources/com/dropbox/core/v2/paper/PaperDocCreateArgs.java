package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.ImportFormat;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class PaperDocCreateArgs {
    protected final ImportFormat importFormat;
    protected final String parentFolderId;

    public PaperDocCreateArgs(ImportFormat importFormat, String str) {
        this.parentFolderId = str;
        if (importFormat == null) {
            throw new IllegalArgumentException("Required value for 'importFormat' is null");
        }
        this.importFormat = importFormat;
    }

    public PaperDocCreateArgs(ImportFormat importFormat) {
        this(importFormat, null);
    }

    public ImportFormat getImportFormat() {
        return this.importFormat;
    }

    public String getParentFolderId() {
        return this.parentFolderId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.parentFolderId, this.importFormat});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocCreateArgs paperDocCreateArgs = (PaperDocCreateArgs) obj;
            if (this.importFormat == paperDocCreateArgs.importFormat || this.importFormat.equals(paperDocCreateArgs.importFormat)) {
                if (this.parentFolderId == paperDocCreateArgs.parentFolderId) {
                    return true;
                }
                if (this.parentFolderId != null && this.parentFolderId.equals(paperDocCreateArgs.parentFolderId)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocCreateArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocCreateArgs paperDocCreateArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("import_format");
            ImportFormat.Serializer.INSTANCE.serialize(paperDocCreateArgs.importFormat, gVar);
            if (paperDocCreateArgs.parentFolderId != null) {
                gVar.a("parent_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(paperDocCreateArgs.parentFolderId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocCreateArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ImportFormat importFormatDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("import_format".equals(strD)) {
                        importFormatDeserialize = ImportFormat.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("parent_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (importFormatDeserialize == null) {
                    throw new j(kVar, "Required field \"import_format\" missing.");
                }
                PaperDocCreateArgs paperDocCreateArgs = new PaperDocCreateArgs(importFormatDeserialize, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocCreateArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
