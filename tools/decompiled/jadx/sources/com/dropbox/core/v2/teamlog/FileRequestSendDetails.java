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
public class FileRequestSendDetails {
    protected final String requestTitle;

    public FileRequestSendDetails(String str) {
        this.requestTitle = str;
    }

    public FileRequestSendDetails() {
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
        FileRequestSendDetails fileRequestSendDetails = (FileRequestSendDetails) obj;
        return this.requestTitle == fileRequestSendDetails.requestTitle || (this.requestTitle != null && this.requestTitle.equals(fileRequestSendDetails.requestTitle));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileRequestSendDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequestSendDetails fileRequestSendDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (fileRequestSendDetails.requestTitle != null) {
                gVar.a("request_title");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileRequestSendDetails.requestTitle, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequestSendDetails deserialize(k kVar, boolean z) throws IOException {
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
                FileRequestSendDetails fileRequestSendDetails = new FileRequestSendDetails(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequestSendDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
