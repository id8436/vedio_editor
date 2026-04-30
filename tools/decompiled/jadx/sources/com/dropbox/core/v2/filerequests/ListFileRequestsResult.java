package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.filerequests.FileRequest;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListFileRequestsResult {
    protected final List<FileRequest> fileRequests;

    public ListFileRequestsResult(List<FileRequest> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fileRequests' is null");
        }
        Iterator<FileRequest> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'fileRequests' is null");
            }
        }
        this.fileRequests = list;
    }

    public List<FileRequest> getFileRequests() {
        return this.fileRequests;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequests});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFileRequestsResult listFileRequestsResult = (ListFileRequestsResult) obj;
        return this.fileRequests == listFileRequestsResult.fileRequests || this.fileRequests.equals(listFileRequestsResult.fileRequests);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFileRequestsResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFileRequestsResult listFileRequestsResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file_requests");
            StoneSerializers.list(FileRequest.Serializer.INSTANCE).serialize(listFileRequestsResult.fileRequests, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFileRequestsResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("file_requests".equals(strD)) {
                        list = (List) StoneSerializers.list(FileRequest.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"file_requests\" missing.");
                }
                ListFileRequestsResult listFileRequestsResult = new ListFileRequestsResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFileRequestsResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
