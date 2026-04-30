package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileRequestReceiveFileDetails {
    protected final String requestTitle;
    protected final List<String> submittedFileNames;

    public FileRequestReceiveFileDetails(List<String> list, String str) {
        this.requestTitle = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'submittedFileNames' is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'submittedFileNames' is null");
            }
        }
        this.submittedFileNames = list;
    }

    public FileRequestReceiveFileDetails(List<String> list) {
        this(list, null);
    }

    public List<String> getSubmittedFileNames() {
        return this.submittedFileNames;
    }

    public String getRequestTitle() {
        return this.requestTitle;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestTitle, this.submittedFileNames});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileRequestReceiveFileDetails fileRequestReceiveFileDetails = (FileRequestReceiveFileDetails) obj;
            if (this.submittedFileNames == fileRequestReceiveFileDetails.submittedFileNames || this.submittedFileNames.equals(fileRequestReceiveFileDetails.submittedFileNames)) {
                if (this.requestTitle == fileRequestReceiveFileDetails.requestTitle) {
                    return true;
                }
                if (this.requestTitle != null && this.requestTitle.equals(fileRequestReceiveFileDetails.requestTitle)) {
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

    class Serializer extends StructSerializer<FileRequestReceiveFileDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequestReceiveFileDetails fileRequestReceiveFileDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("submitted_file_names");
            StoneSerializers.list(StoneSerializers.string()).serialize(fileRequestReceiveFileDetails.submittedFileNames, gVar);
            if (fileRequestReceiveFileDetails.requestTitle != null) {
                gVar.a("request_title");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileRequestReceiveFileDetails.requestTitle, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequestReceiveFileDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            List list;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("submitted_file_names".equals(strD)) {
                        String str3 = str2;
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        str = str3;
                    } else if ("request_title".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        list = list2;
                    }
                    list2 = list;
                    str2 = str;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"submitted_file_names\" missing.");
                }
                FileRequestReceiveFileDetails fileRequestReceiveFileDetails = new FileRequestReceiveFileDetails(list2, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequestReceiveFileDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
