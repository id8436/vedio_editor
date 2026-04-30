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
public class FileRequestRemoveDeadlineDetails {
    protected final String requestTitle;

    public FileRequestRemoveDeadlineDetails(String str) {
        this.requestTitle = str;
    }

    public FileRequestRemoveDeadlineDetails() {
        this(null);
    }

    public String getRequestTitle() {
        return this.requestTitle;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestTitle});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetails = (FileRequestRemoveDeadlineDetails) obj;
        return this.requestTitle == fileRequestRemoveDeadlineDetails.requestTitle || (this.requestTitle != null && this.requestTitle.equals(fileRequestRemoveDeadlineDetails.requestTitle));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileRequestRemoveDeadlineDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (fileRequestRemoveDeadlineDetails.requestTitle != null) {
                gVar.a("request_title");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileRequestRemoveDeadlineDetails.requestTitle, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequestRemoveDeadlineDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("request_title".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                FileRequestRemoveDeadlineDetails fileRequestRemoveDeadlineDetails = new FileRequestRemoveDeadlineDetails(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequestRemoveDeadlineDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
